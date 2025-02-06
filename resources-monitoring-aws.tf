# SNS Topic for alerts
resource "aws_sns_topic" "budget_alerts" {
  name = "budget-alerts-topic"
}

# SNS Email Subscription
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.budget_alerts.arn
  protocol  = "email"
  endpoint  = "ingmarsegu@gmail.com" # Replace with your email
}

# IAM Role for AWS Budgets to publish to SNS
resource "aws_iam_role" "budgets_role" {
  name = "AWSBudgetsSNSRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "budgets.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

# IAM Policy for AWS Budgets to publish to SNS
resource "aws_iam_policy" "budgets_policy" {
  name        = "AWSBudgetsSNSPolicy"
  description = "Policy for AWS Budgets to send notifications to SNS"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = "sns:Publish"
      Resource = aws_sns_topic.budget_alerts.arn
    }]
  })
}

# Attach Policy to Role
resource "aws_iam_role_policy_attachment" "budgets_role_attach" {
  role       = aws_iam_role.budgets_role.name
  policy_arn = aws_iam_policy.budgets_policy.arn
}

# AWS Budget (Alerts when cost exceeds $5)
resource "aws_budgets_budget" "monthly_budget" {
  name         = "MonthlyBudget"
  budget_type  = "COST"
  limit_amount = "5.00"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"

  # First Alert at $2 (40% of $5)
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 40 # 40% of budget ($2)
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["ingmarsegu@gmail.com"] # Replace with your email
  }

  # Second Alert at $5 (100% of budget)
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 100 # 100% of budget ($5)
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["ingmarsegu@gmail.com"]
  }
}
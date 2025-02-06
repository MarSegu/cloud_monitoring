# Resource Group for Budget
resource "azurerm_resource_group" "budget_rg" {
  name     = "budget-monitoring-alerts-rg"
  location = "East US"
}

# Azure Monitor Action Group (for email alerts)
resource "azurerm_monitor_action_group" "budget_alerts" {
  name                = "budgetActionGroup"
  resource_group_name = azurerm_resource_group.budget_rg.name
  short_name          = "BudgetAlerts"

  email_receiver {
    name          = "CostAlertEmail"
    email_address = "ingmarsegu@gmail.com"
  }
}

# Azure Budget (Alerts at $2 and $5)
resource "azurerm_consumption_budget_subscription" "monthly_budget" {
  name            = "MonthlyBudget"
  subscription_id = "/subscriptions/${var.subscription_id}"
  amount          = 5.00 # Budget limit ($5)
  time_grain      = "Monthly"

  time_period {
    start_date = "${formatdate("YYYY-MM-01", timestamp())}T00:00:00Z"
  }

  # First Alert at $2 (40% of $5)
  notification {
    enabled        = true
    operator       = "GreaterThan"
    threshold      = 2.00
    contact_emails = ["ingmarsegu@gmail.com"]
    contact_groups = [azurerm_monitor_action_group.budget_alerts.id]
  }

  # Second Alert at $5 (100% of budget)
  notification {
    enabled        = true
    operator       = "GreaterThan"
    threshold      = 5.00
    contact_emails = ["ingmarsegu@gmail.com"]
    contact_groups = [azurerm_monitor_action_group.budget_alerts.id]
  }
}

# 📡 cloud_monitoring

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  <img src="https://img.shields.io/badge/HCL-100%25-blue" alt="Main Language" />
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Status" />
</p>

---

## ✨ Overview

**cloud_monitoring** is a Terraform module that simplifies cloud monitoring configuration, allowing you to supervise resources, alerts, and metrics in an automated and reproducible way. It's ideal for DevOps teams, cloud architectures, and projects seeking observability and high availability.

---

## 🎨 Tech Stack

<div align="center">

| Language / Tool                                         | Usage                                     |
|---------------------------------------------------------|-------------------------------------------|
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original.svg" width="24"/> HCL (Terraform) | Infrastructure as Code (IaC)              |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/aws/aws-original.svg" width="24"/> AWS / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/googlecloud/googlecloud-original.svg" width="24"/> GCP / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/azure/azure-original.svg" width="24"/> Azure | Supported cloud providers                 |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="24"/> GitHub Actions        | CI/CD automation                          |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/prometheus/prometheus-original.svg" width="24"/> Prometheus / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/grafana/grafana-original.svg" width="24"/> Grafana | Optional: integration with monitoring systems |

</div>

---

## 🗂️ Project Structure

```text
.
├── main.tf              # Main module definition
├── variables.tf         # Configurable module variables
├── outputs.tf           # Generated outputs
├── examples/            # Usage examples
├── scripts/             # Automation scripts
├── .github/workflows/   # CI/CD pipelines (GitHub Actions)
└── README.md            # Project documentation
```

---

## ⚡ Features

- **Automated monitoring** of cloud resources
- **Customizable alerts and metrics**
- **Easy integration** with existing monitoring systems
- **Infrastructure as Code** for reproducibility and scalability
- **Easily extensible** for multiple cloud providers

---

## 🛠️ Getting Started

> **Deploy monitoring in minutes.**

```bash
# Clone the repository
git clone https://github.com/MarSegu/cloud_monitoring.git
cd cloud_monitoring

# Initialize Terraform
terraform init

# Apply monitoring infrastructure
terraform apply
```

---

## ⚙️ Main Variables

| Variable         | Description                          | Type   | Required | Example              |
|------------------|--------------------------------------|--------|----------|----------------------|
| `resources`      | List of resources to monitor         | list   | Yes      | `["ec2", "s3"]`      |
| `alert_rules`    | Custom alert rules                   | map    | No       | `{ cpu = "80%" }`    |
| `provider`       | Cloud provider (`aws`, `gcp`, `azur`)| string | Yes      | `"aws"`              |
| `notify_email`   | Email for notifications              | string | No       | `"devops@example.com"`|

> Check [`variables.tf`](./variables.tf) for all options.

---

## 🧪 Testing

> Verify infrastructure and monitoring rules.

```bash
terraform plan
terraform apply
```

---

## 🚀 Deployment

- **CI/CD:** Automated via workflows in `.github/workflows/`.

---

## 📤 Outputs

| Output          | Description                      |
|-----------------|----------------------------------|
| `dashboard_url` | Monitoring dashboard URL         |
| `alerts_status` | Status of configured alerts      |

---

## 🤝 Contributing

Contributions are welcome!  
Open an issue or pull request for suggestions and improvements.

---

## 📃 License

Distributed under the MIT License. See [LICENSE](LICENSE) for more details.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=110&section=footer"/>
</p>

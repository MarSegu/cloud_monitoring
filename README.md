# 📡 cloud_monitoring

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  <img src="https://img.shields.io/badge/HCL-100%25-blue" alt="Main Language" />
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Status" />
</p>

---

## ✨ Overview

**cloud_monitoring** es un módulo de Terraform que facilita la configuración de monitoreo en la nube, permitiendo supervisar recursos, alertas y métricas de manera automatizada y reproducible. Ideal para equipos DevOps, arquitecturas cloud y proyectos que buscan observabilidad y alta disponibilidad.

---

## 🎨 Tech Stack

<div align="center">

| Lenguaje / Herramienta                                       | Uso                                         |
|--------------------------------------------------------------|---------------------------------------------|
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original.svg" width="24"/> HCL (Terraform) | Infraestructura como código (IaC)           |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/aws/aws-original.svg" width="24"/> AWS / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/googlecloud/googlecloud-original.svg" width="24"/> GCP / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/azure/azure-original.svg" width="24"/> Azure | Proveedores de nube soportados              |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="24"/> GitHub Actions        | Automatización CI/CD                        |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/prometheus/prometheus-original.svg" width="24"/> Prometheus / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/grafana/grafana-original.svg" width="24"/> Grafana | Opcional: integración con sistemas de monitoreo |

</div>

---

## 🗂️ Project Structure

```text
.
├── main.tf              # Definición principal del módulo
├── variables.tf         # Variables configurables del módulo
├── outputs.tf           # Outputs generados
├── examples/            # Ejemplos de uso
├── scripts/             # Scripts de automatización
├── .github/workflows/   # Pipelines CI/CD (GitHub Actions)
└── README.md            # Documentación del proyecto
```

---

## ⚡ Features

- **Monitoreo automatizado** de recursos cloud
- **Alertas y métricas personalizables**
- **Integración sencilla** con sistemas de monitoreo existentes
- **Infraestructura como código** para reproducibilidad y escalabilidad
- **Fácil extensión** para múltiples proveedores cloud

---

## 🛠️ Getting Started

> **Despliega monitoreo en minutos.**

```bash
# Clona el repositorio
git clone https://github.com/MarSegu/cloud_monitoring.git
cd cloud_monitoring

# Inicializa Terraform
terraform init

# Aplica la infraestructura de monitoreo
terraform apply
```

---

## ⚙️ Variables Principales

| Variable         | Descripción                            | Tipo   | Requerido | Ejemplo              |
|------------------|----------------------------------------|--------|-----------|----------------------|
| `resources`      | Lista de recursos a monitorear         | list   | Sí        | `["ec2", "s3"]`      |
| `alert_rules`    | Reglas de alerta personalizadas        | map    | No        | `{ cpu = "80%" }`    |
| `provider`       | Proveedor Cloud (`aws`, `gcp`, `azur`) | string | Sí        | `"aws"`              |
| `notify_email`   | Email para notificaciones              | string | No        | `"devops@ejemplo.com"` |

> Revisa [`variables.tf`](./variables.tf) para todas las opciones.

---

## 🧪 Testing

> Verifica la infraestructura y las reglas de monitoreo.

```bash
terraform plan
terraform apply
```

---

## 🚀 Deployment

- **CI/CD:** Automatizado vía workflows en `.github/workflows/`.

---

## 📤 Outputs

| Output      | Descripción                    |
|-------------|-------------------------------|
| `dashboard_url`  | URL del dashboard de monitoreo      |
| `alerts_status`  | Estado de las alertas configuradas  |

---

## 🤝 Contributing

¡Las contribuciones son bienvenidas!  
Abre un issue o pull request para sugerencias y mejoras.

---

## 📃 License

Distribuido bajo la licencia MIT. Consulta [LICENSE](LICENSE) para más detalles.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=110&section=footer"/>
</p>

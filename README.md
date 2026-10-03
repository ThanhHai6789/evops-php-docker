# 🚀 Containerized PHP Application with Automated CI/CD Pipeline

![Render Deployment](https://img.shields.io/badge/Render-Live-brightgreen)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![PHP](https://img.shields.io/badge/PHP-8.1--Apache-777BB4)

Dự án thực tế minh họa quá trình **Container hóa (Containerization)** ứng dụng Web PHP và thiết lập quy trình **Tự động hóa triển khai (CI/CD Pipeline)** từ GitHub lên hạ tầng Cloud (Render Platform).

🔗 **Live Demo:** [https://demo-php-docker-0n0a.onrender.com](https://demo-php-docker-0n0a.onrender.com)  
📂 **GitHub Repo:** [https://github.com/ThanhHai6789/evops-php-docker](https://github.com/ThanhHai6789/evops-php-docker)

---

## 📐 Kiến trúc Hệ thống & Luồng CI/CD (Architecture & Data Flow)

```text
+------------------+         Git Push          +----------------------+
| Developer Laptop |  ------------------->  |  GitHub Repository   |
|  (Edit Source)   |                        | (evops-php-docker)   |
+------------------+                        +----------------------+
                                                       |
                                                       | Auto Webhook Trigger
                                                       v
+------------------------------------------------------------------+
|                        RENDER CLOUD PLATFORM                     |
|                                                                  |
|  1. Read Dockerfile  -->  2. Build Image  -->  3. Run Container  |
|                                                                  |
+------------------------------------------------------------------+
                                                       |
                                                       | Expose Port 80 / HTTPS
                                                       v
                                            +----------------------+
                                            |     End User / HR    |
                                            |    (Browser View)    |
                                            +----------------------+

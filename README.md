Proyecto Cloud: Verificación de Portabilidad Multi-Plataforma
Este repositorio contiene un artefacto web estático mínimo (`index.html`) cuyo propósito es **validar la portabilidad y el despliegue** en distintos modelos de servicio de computación en la nube (PaaS, CaaS, IaaS), conforme a los requisitos del curso de Arquitectura Cloud.
---
## Estructura del Artefacto
El proyecto consta de dos archivos clave que garantizan la inmutabilidad y la capacidad de despliegue en múltiples *vendors*.

### 1. Aplicación Base
* **Archivo:** `index.html`
* **Contenido:** Un simple sitio HTML con el mensaje "Hello World" y texto variable para identificar la plataforma de despliegue (ej: NETLIFY, AWS S3, etc.).

### 2. Contenedor Docker (OCI Standard)
* **Archivo:** `Dockerfile`
* **Propósito:** Encapsula la aplicación estática dentro de un servidor web ligero (Nginx), creando un artefacto inmutable que puede ser desplegado en cualquier plataforma **Containers-as-a-Service (CaaS)**.

---

## Instrucciones para Contenerización
Para construir la imagen localmente y subirla al registro de DockerHub:

1.  **Construir la Imagen:**
    ```bash
    docker build -t xaandrade/proyecto-cloud:latest .
    ```

2.  **Subir al Registro:**
    ```bash
    docker push xaandrade/proyecto-cloud:latest
    ```

---

##  Plataformas Desplegadas

El artefacto ha sido validado exitosamente en los siguientes proveedores, documentando el Mecanismo de Despliegue en el informe principal:

-   Netlify (PaaS / Edge)
-   Vercel (PaaS / Edge)
-   Railway (CaaS)
-   DigitalOcean App Platform (CaaS)
-   Google Firebase (Serverless)
-   Render (PaaS / CaaS)
-   Cloudflare Pages (Serverless / Edge)
-   AWS S3 (IaaS / Storage)

---

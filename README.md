### 🛒 TechStore Santander — Sistema Web POS

Documentación del proyecto desarrollado para las **Unidades Tecnológicas de Santander**.
**Curso:** Programación en Java · Tecnología en Desarrollo de Sistemas Informáticos.
**Docente:** Carlos Adolfo Beltrán Castro.
**Fecha:** 12 de mayo de 2026.

**Integrantes:**
*   Hansel Rodríguez Jiménez
*   Oscar Esneider Vergara Afanador
*   Jaider Yamith Granados Rozo

---

#### 📋 Tabla de Contenidos
*   Descripción General
*   Objetivos
*   Justificación
*   Tecnologías Utilizadas
*   Requerimientos
*   Diseño de Datos
*   Arquitectura del Proyecto

---

#### Descripción General
**TechStore Santander** es una microempresa dedicada a la comercialización de productos tecnológicos en Bucaramanga, Colombia. Este proyecto implementa un sistema web de tipo **POS (Point of Sale)** con el fin de reemplazar los procesos manuales actuales —como hojas de cálculo y registros en papel—, logrando así la automatización del control de inventarios, el registro de ventas y la generación de facturación electrónica bajo los estándares exigidos por la **DIAN**.

---

#### Objetivos

##### Objetivo General
**Desarrollar** un sistema web tipo POS para TechStore Santander [Qué] mediante el uso de las tecnologías Java Spring Boot, Thymeleaf y JPA/Hibernate [Cómo] para optimizar el control de inventarios, automatizar el registro de ventas y facilitar la gestión de la facturación electrónica conforme a la normativa de la DIAN [Para qué].

##### Objetivos Específicos
*   **Implementar** un módulo de gestión de inventarios en tiempo real [Qué] a través de funciones que permitan controlar entradas y salidas de productos [Cómo] con el fin de garantizar la exactitud del *stock* disponible y evitar discrepancias.
*   **Construir** la aplicación web bajo el patrón de arquitectura Modelo-Vista-Controlador (MVC) [Qué] empleando Spring Boot y Thymeleaf [Cómo] para asegurar la escalabilidad, el rendimiento y la facilidad de mantenimiento del software a largo plazo.
*   **Diseñar** una base de datos relacional organizada [Qué] mediante el uso de MySQL y JPA/Hibernate para el mapeo de entidades [Cómo] para almacenar y proteger la información de productos, ventas, usuarios y clientes de forma segura.
*   **Generar** un módulo de facturación y gestión de clientes [Qué] integrando el almacenamiento del historial de compras y la creación de comprobantes [Cómo] para cumplir con los requerimientos legales de la DIAN y mejorar el seguimiento del consumidor.
*   **Automatizar** el registro de transacciones comerciales en el punto de venta [Qué] vinculando los procesos de venta con la actualización inmediata del inventario [Cómo] para reducir los errores humanos derivados de procesos manuales y agilizar la atención al cliente.

---

#### Justificación
Los procesos actuales de TechStore Santander, basados en hojas de cálculo y registros manuales, han generado diversos inconvenientes operativos:
*   Discrepancias frecuentes en el inventario.
*   Pérdida de información crítica por fallos en equipos o archivos.
*   Ventas no registradas correctamente.
*   Dificultades para cumplir con la normativa de facturación electrónica de la DIAN.

La implementación del sistema POS permitirá **automatizar los procesos críticos** del negocio, reduciendo los errores humanos y proporcionando información confiable para la toma de decisiones. Asimismo, la arquitectura basada en **Spring Boot** garantiza robustez, escalabilidad y facilidad para futuras actualizaciones.

---

#### Tecnologías Utilizadas

| Herramienta | Descripción |
| :--- | :--- |
| **Java JDK 21** | Lenguaje principal para el desarrollo *backend*. |
| **Spring Boot** | *Framework* para el desarrollo web empresarial. |
| **Spring Data JPA** | Persistencia y acceso a datos. |
| **Hibernate** | ORM para el manejo de entidades. |
| **Thymeleaf** | Motor de plantillas para el *frontend*. |
| **MySQL** | Motor de base de datos relacional. |
| **Git y GitHub** | Herramientas para el control de versiones. |

---

#### Requerimientos

##### Requerimientos Funcionales (RF)
| ID | Módulo | Descripción |
| :--- | :--- | :--- |
| **RF-01** | Gestión de Productos | El sistema permitirá registrar, editar, eliminar y consultar (CRUD) los productos del inventario. |
| **RF-02** | Gestión de Ventas | El sistema registrará las ventas realizadas, actualizando automáticamente el *stock* de productos. |
| **RF-03** | Gestión de Clientes | El sistema permitirá almacenar información básica de clientes y consultar su historial de compras. |
| **RF-04** | Facturación | El sistema generará comprobantes de venta asociados a cada transacción realizada. |

##### Requerimientos No Funcionales (RNF)
*   **Rendimiento:** El sistema deberá responder a las solicitudes en un tiempo menor a **3 segundos**.
*   **Seguridad:** Se implementará **autenticación** mediante usuario y contraseña para restringir el acceso administrativo.
*   **Usabilidad:** La interfaz será intuitiva y accesible para personal con conocimientos técnicos básicos.

---

#### Diseño de Datos

##### Entidad: Usuarios
| Campo | Tipo de Dato | Restricción |
| :--- | :--- | :--- |
| id_usuario | BIGINT | PK AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| correo | VARCHAR(100) | UNIQUE |
| password | VARCHAR(255) | NOT NULL |
| rol | VARCHAR(50) | NOT NULL |

##### Entidad: Productos
| Campo | Tipo de Dato | Restricción |
| :--- | :--- | :--- |
| id_producto | BIGINT | PK AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| precio | DECIMAL(10,2) | NOT NULL |
| stock | INT | NOT NULL |

---

#### Arquitectura del Proyecto
El sistema se desarrolla bajo el patrón **MVC (Modelo – Vista – Controlador)**:

*   **Modelo:** Contiene las entidades JPA (Usuario, Cliente, Producto, Venta) que representan la estructura de datos en la base de datos.
*   **Vista:** Interfaz desarrollada con **Thymeleaf**, que incluye formularios dinámicos, tablas de consulta y el panel de control principal.
*   **Controlador:** Componentes de Spring Boot encargados de procesar las solicitudes HTTP y gestionar la lógica de negocio conectando la vista con los servicios de datos.

---
*Proyecto académico — Unidades Tecnológicas de Santander, 2026*.

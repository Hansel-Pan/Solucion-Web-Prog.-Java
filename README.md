# 🛒 TechStore Santander — Sistema Web POS

> Documentación del proyecto desarrollado para las **Unidades Tecnológicas de Santander**  
> Curso: Programación en Java · Tecnología en Desarrollo de Sistemas Informáticos  
> Docente: Carlos Adolfo Beltrán Castro  
> Fecha: 12 de abril de 2026

**Integrantes:**
- Hansel Rodríguez Jiménez
- Oscar Esneider Vergara Afanador
- Jaider Yamith Granados Rozo

---

## 📋 Tabla de Contenidos

- [Descripción General](#descripción-general)
- [Objetivos](#objetivos)
- [Justificación](#justificación)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Requerimientos](#requerimientos)
- [Diseño de Datos](#diseño-de-datos)
- [Arquitectura del Proyecto](#arquitectura-del-proyecto)

---

## Descripción General

**TechStore Santander** es una microempresa dedicada a la comercialización de productos tecnológicos en Bucaramanga, Colombia. Este proyecto implementa un sistema web tipo **POS (Point of Sale)** para reemplazar los procesos manuales actuales (hojas de cálculo y registros en papel), automatizando el control de inventario, el registro de ventas y la generación de facturación electrónica conforme a los requerimientos de la **DIAN**.

---

## Objetivos

### Objetivo General

Desarrollar un sistema web tipo POS para TechStore Santander utilizando **Java Spring Boot**, **Thymeleaf** y **JPA/Hibernate**, con el objetivo de un mejor el control de inventario, automatizando el registro de ventas y una facil gestión de facturación electrónica.

### Objetivos Específicos

- Implementar un módulo de **gestión de inventario en tiempo real** que permita el control de las entradas, salidas y el stock disponible de productos.
- Desarrollar un módulo de **ventas** que registre automáticamente cada transacción realizada en el punto de venta.
- Implementar un módulo de gestión de clientes y facturación mediante el almacenamiento del historial de compras y la generación de comprobantes de venta para la optimización del control comercial.
- Desarrollar una aplicación web bajo arquitectura MVC utilizando Spring Boot, Thymeleaf y JPA/Hibernate para una adecuada mantenibilidad y escalabilidad.
- Diseñar una base de datos relacional mediante el almacenamiento seguro y organizado de productos, ventas, usuarios y clientes permitiendo una gestión de la información.

---

## Justificación

Los procesos actuales de TechStore Santander basados en hojas de cálculo y registros manuales han generado:

- Discrepancias de inventario
- Pérdida de información
- Ventas no registradas
- Dificultades para cumplir con la normativa de facturación electrónica (DIAN)

La implementación del sistema POS permitirá **automatizar los procesos críticos** del negocio, reducir errores humanos y proporcionar información confiable para la toma de decisiones. La arquitectura basada en **Spring Boot** garantiza robustez, escalabilidad y facilidad para futuras mejoras.

---

## Tecnologías Utilizadas

| Herramienta | Descripción |
|---|---|
| Java JDK 21 | Lenguaje principal para el desarrollo backend |
| Spring Boot | Framework para desarrollo web empresarial |
| Spring Data JPA | Persistencia y acceso a datos |
| Hibernate | ORM para manejo de entidades |
| Thymeleaf | Motor de plantillas para frontend |
| Maven | Gestión de dependencias |
| MySQL | Motor de base de datos relacional |
| STS (Spring Tool Suite) | Entorno de desarrollo integrado |
| Git y GitHub | Control de versiones |
| MySQL Server | Administración local de base de datos |

---

## Requerimientos

### Requerimientos Funcionales (RF)

| ID | Módulo | Descripción |
|---|---|---|
| RF-01 | Gestión de Productos | El sistema deberá permitir registrar, editar, eliminar y consultar (CRUD) productos del inventario. |
| RF-02 | Gestión de Ventas | El sistema deberá registrar ventas realizadas en el punto de venta, actualizando automáticamente el stock de productos. |
| RF-03 | Gestión de Clientes | El sistema deberá permitir almacenar información básica de clientes y consultar su historial de compras. |
| RF-04 | Generación de Facturas | El sistema deberá generar comprobantes de venta asociados a cada transacción realizada. |

### Requerimientos No Funcionales (RNF)

| ID | Categoría | Descripción |
|---|---|---|
| RNF-01 | Rendimiento | El sistema deberá responder a las solicitudes del usuario en un tiempo menor a **3 segundos** bajo condiciones normales de operación. |
| RNF-02 | Seguridad | El sistema deberá implementar **autenticación** mediante usuario y contraseña para restringir el acceso a funciones administrativas. |
| RNF-03 | Usabilidad | La interfaz deberá ser intuitiva y fácil de usar para personal con conocimientos técnicos básicos. |
| RNF-04 | Restricción Tecnológica | La aplicación deberá desarrollarse utilizando **Java Spring Boot**, Thymeleaf y JPA/Hibernate. |

---

## Diseño de Datos

### Modelo Entidad-Relación (DER)

#### Entidad: `usuarios`

| Campo | Tipo de Dato | Restricción |
|---|---|---|
| id_usuario | BIGINT | PK AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| correo | VARCHAR(100) | UNIQUE |
| password | VARCHAR(255) | NOT NULL |
| rol | VARCHAR(50) | NOT NULL |

#### Entidad: `clientes`

| Campo | Tipo de Dato | Restricción |
|---|---|---|
| id_cliente | BIGINT | PK AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| telefono | VARCHAR(20) | NULL |
| correo | VARCHAR(100) | NULL |

#### Entidad: `productos`

| Campo | Tipo de Dato | Restricción |
|---|---|---|
| id_producto | BIGINT | PK AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| descripcion | VARCHAR(255) | NULL |
| precio | DECIMAL(10,2) | NOT NULL |
| stock | INT | NOT NULL |

#### Entidad: `ventas`

| Campo | Tipo de Dato | Restricción |
|---|---|---|
| id_venta | BIGINT | PK AUTO_INCREMENT |
| fecha_venta | DATETIME | NOT NULL |
| total | DECIMAL(10,2) | NOT NULL |
| id_cliente | BIGINT | FK → clientes |
| id_usuario | BIGINT | FK → usuarios |

---

## Arquitectura del Proyecto

El sistema está desarrollado bajo el patrón **MVC (Modelo – Vista – Controlador)**:

### Modelo
Contiene las entidades JPA que representan la estructura de datos:
- `Usuario`
- `Cliente`
- `Producto`
- `Venta`
- `DetalleVenta`

### Vista
Interfaz desarrollada con **Thymeleaf**, compuesta por:
- Formularios de registro y edición
- Tablas de consulta
- Dashboard principal
- Reportes básicos

### Controlador
Controladores Spring Boot encargados de:
- Procesar solicitudes HTTP
- Gestionar la lógica del sistema
- Conectarse con servicios y repositorios

---

*Proyecto académico — Unidades Tecnológicas de Santander, 2026*

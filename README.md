#Store on Spring Boot

## Project Description
This is a web application "Store" implemented with Spring Boot. It allows users to browse and purchase shoes online. Key features may include:
- User registration and login.
- Role-based access control (e.g., USER and ADMIN).
- Product catalog with categories, filtering, and search.
- Shopping cart and order checkout process.
- Administration panel for managing products, orders, and users.
- News or blog section (if implemented).
- REST API endpoints (optional).
- Integration with payment gateways (optional).

> **Note:** Adapt the sections below to match your actual implementation, entity names, endpoints, and business logic.

## Technologies and Dependencies
- Java 8+ (or a compatible version with your Spring Boot version).
- Spring Boot Starter Web
- Spring Boot Starter Security
- Spring Boot Starter Data JPA
- PostgreSQL (or other relational database) with JDBC driver
- JSP (or alternative templating engine such as Thymeleaf) and related dependencies (JSTL, Tomcat Embed Jasper for JSP).
- Maven for build and dependency management.
- Spring Security Taglibs (for JSP integration).
- Spring Boot DevTools (optional, for development).
- Lombok (optional, if used).
- Any front-end libraries or frameworks if applicable (e.g., Bootstrap, jQuery).

## Prerequisites
1. Java Development Kit (JDK) 8 or higher installed (`java -version`).
2. Maven installed (`mvn -v`).
3. PostgreSQL installed and running (or another chosen database).
4. IDE or code editor (e.g., IntelliJ IDEA, Eclipse).
5. Git (if using version control).
6. (Optional) Docker and Docker Compose (if containerizing).

## Database Setup
1. Create a database in PostgreSQL:
   ```sql
   CREATE DATABASE shoe_store;
   ```
   Or use an existing database name. Match this in your application properties.
2. Configure database credentials in `src/main/resources/application.properties` (or `application.yml`):
   ```properties
   spring.datasource.url=jdbc:postgresql://localhost:5432/shoe_store
   spring.datasource.username=your_username
   spring.datasource.password=your_password
   spring.jpa.show-sql=true
   spring.jpa.hibernate.ddl-auto=update
   ```
   - Replace URL, username, and password as needed.
   - `spring.jpa.hibernate.ddl-auto=update` will auto-create/update tables. For production, consider `validate` or managing schema scripts manually.
3. Role and initial data:
   - If your application expects predefined roles (e.g., ROLE_USER, ROLE_ADMIN), ensure they exist.
   - Example SQL:
     ```sql
     INSERT INTO t_role (id, name) VALUES (1, 'ROLE_USER') ON CONFLICT DO NOTHING;
     INSERT INTO t_role (id, name) VALUES (2, 'ROLE_ADMIN') ON CONFLICT DO NOTHING;
     ```
   - You can also seed an initial admin user with an encoded password.
   - Optionally, implement a startup runner (CommandLineRunner) to initialize roles and an admin account programmatically.

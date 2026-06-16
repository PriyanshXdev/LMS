# 🚀LMS

A production-ready Spring Boot REST API for Library Management System to manage the Book in a Library. Built with Java, Spring Boot, and MySQL.

## 📋 Features

- ✅ RESTful API with CRUD operations
- ✅ Controller → Service → Repository layer architecture
- ✅ MySQL database integration
- ✅ JUnit testing
- ✅ Error handling with @RestControllerAdvice

## 🛠️ Tech Stack

|    Category     |   Technology    |
|-----------------|-----------------|
|    Language     |    Java 17+     |
|    Framework    | Spring Boot 3.x |
|    Build Tool   |      Maven      |
|    Database     |    MySQL 8.x    |
|     Testing     | JUnit 5,MockMvc |
| Version Control |     Git, GitHub |

## 📦 Prerequisites

Before running this project, ensure you have:

- Java JDK 25
- Maven 4.0
- MySQL 8.0.46 
- Git

## 🔧 Installation & Setup

### 1. Clone the repository

```bash
git clone https://github.com/PriyanshXdev/LMS.git
cd LMS
```

### 2. Configure database

Update `src/main/resources/application.properties`:

`spring.application.name=LMS
#DataBase Configuration
spring.datasource.url=jdbc:mysql://localhost:3306/lms_db
spring.datasource.username=root
spring.datasource.password=Priyo@12345
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# JPA Configuration
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
server.port=8080
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp
logging.level.org.springframework.web=DEBUG'

### 3. Build the project

```bash
mvn clean install
```

### 4. Run the application

```bash
mvn spring-boot:run
```

Or run the generated JAR:

```bash
java -jar target/your-project-0.0.1-SNAPSHOT.jar
```

The API will be available at `http://localhost:8080`

## 📡 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/getbyid/{id}` | Get resources by ID|
| GET | `/viewBooks` | Get all resource |
| POST | `/addbook` | Create new resource |
| DELETE | `/deleteBook` | Delete resource |

### Example Request (Postman)

```bash
POST http://localhost:8080/api/resources
Content-Type: application/json

{
  "id":123
  "title": "fantasy book",
  "author": "priyanshu",
  "isbn":"1234-5432-5324",
  "publishedYear":2013

}
```

## 🧪 Running Tests

```bash
mvn test
```

## 📁 Project Structure

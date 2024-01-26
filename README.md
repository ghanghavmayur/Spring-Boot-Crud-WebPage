# WebPageCrud README

This repository contains a simple web application for managing user data using Spring Boot, Spring Data JPA, and MySQL. Below is a guide on setting up and running the project.

## Prerequisites
1. Java Development Kit (JDK) installed on your machine.
2. MySQL database installed and running.

## Configuration
1. Open the `application.properties` file located in `src/main/resources`.
2. Configure the MySQL database connection properties:
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/YourDatabaseName
    spring.datasource.username=root
    spring.datasource.password=root
    spring.datasource.driver-class-name=com.mysql.jdbc.Driver
    ```

## Database Setup
1. Create a MySQL database named `YourDatabaseName` (or the desired name).
2. The application is configured to automatically create/update tables using Hibernate. Run the application, and the necessary tables will be created.

## Running the Application
1. Clone this repository to your local machine.
2. Open a terminal and navigate to the project directory.
3. Run the following command to start the application:
    ```bash
    ./mvnw spring-boot:run
    ```
4. The application will be accessible at [http://localhost:8080/showusers](http://localhost:8080/showusers).

## Usage
1. Open a web browser and go to [http://localhost:8080/showusers](http://localhost:8080/showusers) to access the home page.
2. Click on "User List" in the navigation bar to view the list of users.
3. To add a new user, click on "New" and fill in the required details.
4. To edit or delete a user, click on "Edit" or "Delete" next to the respective user in the list.

## Project Structure
- **Controller**: The `MainController` class handles web requests and interacts with the `UserService`.
- **Service**: The `UserService` class provides business logic and interacts with the `UserRepository`.
- **Repository**: The `UserRepository` interface extends the Spring Data `CrudRepository` for database operations.
- **Model**: The `UserModel` class represents the entity mapped to the database table.

## Frontend
- The frontend views are implemented using JSP (JavaServer Pages).
- CSS styles are applied for a clean and responsive user interface.

## Additional Notes
- The application uses Spring Boot for rapid development and Spring Data JPA for database access.
- Hibernate is used as the JPA provider for database operations.

Feel free to explore and modify the project according to your requirements. If you encounter any issues or have suggestions for improvements, please open an issue in the GitHub repository. Happy coding!

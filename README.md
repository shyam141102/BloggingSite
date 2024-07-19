BloggingSite

A simple blogging platform developed using PHP, HTML, CSS, and JavaScript.

 Table of Contents
- [Project Description](#project-description)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Description

BloggingSite is a web-based platform that allows users to create, manage, and share blog posts. It provides a user-friendly interface for blogging and includes features such as user authentication, post creation, editing, and commenting.

## Features

- User authentication (login and registration)
- Create, edit, and delete blog posts
- Comment on posts
- Responsive design
- Rich text editor for creating posts
- Search functionality

## Technologies Used

- PHP
- HTML
- CSS
- JavaScript
- MySQL (for database)

## Installation

To run this project locally, follow these steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/BloggingSite.git
    ```

2. **Navigate to the project directory:**

    ```bash
    cd BloggingSite
    ```

3. **Set up the database:**

    - Create a database named `bloggingsite` in your MySQL server.
    - Import the SQL file located in the `database` directory to set up the required tables.

    ```sql
    CREATE DATABASE bloggingsite;
    USE bloggingsite;
    SOURCE path/to/database/bloggingsite.sql;
    ```

4. **Configure the database connection:**

    - Open the `config.php` file in the root directory.
    - Update the database connection parameters (`DB_HOST`, `DB_USER`, `DB_PASS`, `DB_NAME`) according to your setup.

    ```php
    <?php
    define('DB_HOST', 'localhost');
    define('DB_USER', 'your_db_username');
    define('DB_PASS', 'your_db_password');
    define('DB_NAME', 'bloggingsite');
    ?>
    ```

5. **Start a local PHP server:**

    You can use the built-in PHP server to run the application.

    ```bash
    php -S localhost:8000
    ```

6. **Open your web browser and navigate to:**

    ```
    http://localhost:8000
    ```

## Usage

- **Home Page:** View all blog posts.
- **Register/Login:** Create an account or log in to access more features.
- **Create Post:** After logging in, create new blog posts.
- **Edit/Delete Post:** Edit or delete your own posts.
- **Comment:** Comment on posts.

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to customize the template according to your project's specific details and requirements.

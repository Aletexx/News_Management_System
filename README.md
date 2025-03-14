# News Management System

## Overview
The **News Management System** is a fully functional web application built with Ruby on Rails that allows users to view and search news articles categorized by topics. Additionally, an admin panel enables authorized users to manage news and categories securely.

## Features

### News Management Frontend
- Public-facing news portal accessible to all visitors.
- Displays the latest 4 news articles on the homepage, sorted by the most recent first.
- Search functionality to find news by content with fuzzy or exact matching.
- Categorized news listing for easy navigation.
- Individual news page displaying the title, category, source, date, content, and user comments.
- Visitors can view and comment on news articles.

### News Management Admin Console
- Restricted access for authenticated admin users only.
- Full CRUD (Create, Read, Update, Delete) operations on news articles and categories.
- Categories management (e.g., Nature, Politics, Business, Entertainment, etc.).
- Secure authentication for admins.
- Form validations (e.g., Title cannot be empty).
- Confirmation prompt before deleting news articles.

## Installation

### Prerequisites
Ensure you have the following installed on your system:
- Ruby (>= 3.0.0)
- Rails (>= 7.0)
- PostgreSQL or SQLite (for development)

### Setup Steps
1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/news-management-system.git
   cd news-management-system
   ```
2. **Install Dependencies**
   ```bash
   bundle install
   ```
3. **Setup the Database**
   ```bash
   rails db:create db:migrate db:seed
   ```
4. **Start the Server**
   ```bash
   rails server
   ```
5. **Access the Application**
   Open [http://localhost:3000](http://localhost:3000) in your browser.

## Usage
- **Public Users**: Can browse news, search by keywords, and comment on articles.
- **Admin Users**: Can manage news and categories after logging in.

## Contribution
Feel free to contribute by submitting pull requests or opening issues.

## License
This project is licensed under the MIT License.

---

**Author:** Alessandro Bastos
**Repository:** [GitHub Repo Link](https://github.com/your-username/news-management-system)


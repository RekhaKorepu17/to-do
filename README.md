# 📋 ToDo App

A **Ruby on Rails** web application that allows users to **register**, **log in**, and **manage their personal to-dos**. It includes user authentication, validations, PostgreSQL database, and a clean, user-friendly UI.


## 📚 Table of Contents

- [Technologies Used](#technologies-used)
- [Requirements](#requirements)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Usage](#usage)
- [Features](#features)


## 🛠 Technologies Used

- [Ruby](https://www.ruby-lang.org/en/)
- [Ruby on Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [Node.js](https://nodejs.org/)
- [Bootstrap](https://getbootstrap.com/) (for UI styling)
- [Devise](https://github.com/heartcombo/devise) (for user authentication)


## ⚙️ Requirements

Make sure the following tools are installed:

- Ruby (>= 3.0)
- Rails (>= 7.0)
- SQLite
- Node.js
- Watchman (optional, for macOS)

### 🧩 Installation

#### Clone the repository:

```bash
git clone https://github.com/RekhaKorepu17/to-do.git
cd to-do
```

#### Install Ruby dependencies:

```bash
bundle install
```

#### Create and migrate the database:

```bash
rails db:create
rails db:migrate
```

### 🚀 Usage
#### Start the Rails development server:
```bash 
rails server
```

Then open your browser and go to: `http://localhost:3000`
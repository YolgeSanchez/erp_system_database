# 🏪 Store ERP System Database Setup

Welcome to the Store ERP System Database repository! This project provides the SQL script needed to set up a PostgreSQL database for managing essential operations in a store-based ERP system, such as inventory, sales, and customer management.

## 📋 Prerequisites

Before you can run the database script, ensure that you have the following installed:

### 1. 🐘 PostgreSQL

PostgreSQL is the database management system you’ll use.<br/> 
👉 Download PostgreSQL [here](https://www.postgresql.org/download/).

### 2. 🖥️ pgAdmin

pgAdmin is a user-friendly interface for managing your PostgreSQL databases.<br/> 
👉 Download pgAdmin [here](https://www.pgadmin.org/download/).

## 🚀 Setting Up the Database

Follow these steps to set up the ERP system database:

### 1. 🔑 Open pgAdmin

Start pgAdmin and connect to your local PostgreSQL server.<br/> 
📝 You may be prompted to set up a master password if it's your first time using pgAdmin.

### 2. 🗂️ Create a New Database
   
In the pgAdmin dashboard, right-click on "Databases" in the left-hand menu.<br/> 
Select "Create" > "Database...".<br/> 
Enter a name for your database (e.g., store_erp) and hit Save.

### 3. ✏️ Open the Query Tool
   
Right-click on the newly created database (store_erp) and select "Query Tool".<br/> 
This will open an editor where you can run SQL commands.

### 4. 📜 Run the SQL Script

Copy the SQL script from this repository.<br/> 
Paste it into the Query Tool.<br/> 
Click the Execute button (⚡) to run the script and create your tables.

### 5. 🔍 Verify Database Structure

After execution, you’ll see the database tables like inventory, customers, orders, and more under the "Schemas" section.<br/> 
Explore the tables to ensure everything is set up.

### 6. 🔗 Connect to the ERP Backend

Now your database is ready! You can connect it to the backend of your ERP system to handle store operations efficiently.<br/> 
👉 Get the backend here in this [erp_system_server](https://github.com/YolgeSanchez/erp_system_server) repository of mine.

## 📚 Additional Resources

For further assistance on PostgreSQL and pgAdmin, check out:

📖 [PostgreSQL Docs](https://www.postgresql.org/docs/)<br/> 
📖 [pgAdmin Docs](https://www.pgadmin.org/docs/)

---

If you found this database helpful, please ⭐️ this repository! Your support is greatly appreciated. 😊

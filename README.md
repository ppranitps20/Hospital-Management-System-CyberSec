# Hospital Management System

The online hospital management system was built to test various security features used to secure transfer of data and storage.


# Installation

Download the latest hms.sql file.


Step 1: Create a database called hms and import everything from hms.sql file. Next check your config.php file for database connection configuration

```php
//Your db.php Mysql Config
$servername = "localhost";
$username = "root";
$password = "yourpassword";
$dbname = "hms";
```

Step 2: Move the cloned repository into the htdocs folder of your server


Step 3: Now you login as admin with following details

```php
Username: admin    	
Password: 123456
```

Step 4: Only admin can create doctor's accounts. Create one and login.


Step 5: Users can create acccounts and boook appointments with a list of available doctors according to the profession.


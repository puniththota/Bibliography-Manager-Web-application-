# cs615-internet-solutions-engineering

Bibliography Manager Website

A one stop website, where the users/researchers can manage their references.
The users can signup/login for the application. Create a new library of references and add all the references in the library.
References can be updated, deleted ,moved from one library to another and many more.
Users can share their libraries as well to another useer.
Users can update their profile after login.

Technologies Used:
Spring MVC Framework.
Front end: HTML, CSS, Bootstrap 3, jQuery, Java Script
Database: MySQL
Backend: Java
Server: Tomcat 8

For the mapping part, in the backend, MyBatis framework is used which automatically maps the SQL and Java objects.
Maven is used for the packaging and managing dependencies. Maven is an important project management tool with which it is easy to manage all the dependencies being used in the web project.
The reason for using the Maven build tool is that is automates the deployment process after code development, by managing the dependencies, building a deployable unit and running the application on the server (Tomcat 8).

Spring MVC Framework:

1)Model:
The database on which the data is manipulated- In this project MySQL database is used.
MySQL is used because the queries are simple and easy to write and for a project like this, this database technology looked like a best choice.

2)View:
The frontend user interface on which the user performs actions. For this project, User interface is designed using HTML, CSS, Bootstrap 
jQuery and Java script for responsiveness and validation.

The front end is implemented using a simple design that is a bit easy to implement and is aesthetically pleasing to look.
A basic navigational scrolling is added to the landing page to make it look good and user finds it easy to get on.
All the pages in the project are made responsive so that they can be changed/adapted as per the device on which the website is being used.
All the HTML pages designed for the front end are converted in to .jsp files for the Spring MVC Framework. These are the views of the MVC structure.
Since the website is a single page website, apart from the landing, signup/login pages, iframes are used to display the different webpages on the home page itself when clicked.

3)Controller:
The actual backend functionality that does the required actions after taking user inputs.
Firstly, the required Maven Dependency is added. The Maven dependency is added in the pom.xml file. By adding the Maven dependency, there will be no need to add all the external jar files as the Maven dependency takes care of that.

A Controller class is created by using the “@Controller” annotation which marks the class as Controller.
The entry of controller is given in the web.xml file (Servlets).
Then the views are specified in the xml configuration file (beans).
The CRUD (Create, Read, Update, Delete) operation is done using iBATIS, by creating the pojo classes

MyBatis simply maps JavaBeans to SQL statements using a very simple XML descriptor.

Instructions:
Running the application:
1) Import the complete project into Intellij IDE . This is a maven project. All the dependencies are automatically imported by adding in the pom.xml file. (No need to add any thing, all the dependencies are already added).
2)Configure the server settings in the tools menu. The IDE automatically starts the server and deploys the project.
3)Start the website, by clicking on the run button. The IDE automatically runs the application on server and opens on the browser window. The browser can also be configured , to change default browser . The default browser is Google Chrome.
4)Data base queries are also included in the submission. Database should be created and configured in the Intellij and then tables should be created.


Dependencies:
1) org.springframework – Spring framework added as dependency in pom.xml of Maven project.
2)MySql connector- JDBC driver for MySql.
3)javax.servlet – The Java Servet package that contains all the classes and interfaces of Servlet.
4)org.mybatis – MyBatis framework that maps the java objects with sql words/stored procedures.



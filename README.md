# 📚📖📕 Library Management System 📚📖📕
A Library Management System is a software application designed to manage and organize the activities of a library efficiently. It streamlines tasks such as book cataloging, 
user registration, book borrowing, returning, and inventory management. The system helps librarians track the status of books, manage due dates, and handle fines for late returns. 
Users can search for books by title, author, or genre, check availability, and reserve items. By automating these processes, the Library Management System enhances productivity, 
reduces manual errors, and provides a seamless experience for both library staff and patrons. 

## Project Overview 📗📙📘📕📚📖
Library Management System project in Dart that incorporates core Dart features as well as Object-Oriented Programming (OOP) concepts such as classes, inheritance, polymorphism, 
interfaces, mixins, and more. This Library Management System will include the following components

#### 1: 📘 Classes and Objects: 
Represent books, library members, and librarians.

#### 2: 📘 Inheritance:
Different types of users (Admin, Member) will inherit from a base class.

#### 3: 📘 Polymorphism:
Different actions will be performed based on user types.

#### 4: 📘 Abstraction and Interfaces:
Define functionalities that various components should implement.

#### 5: 📘 Mixins:
Reuse functionalities across classes without inheritance.

#### 6: 📘 Enums: 
To manage categories or book status.
#### 7: 📘 Collections: 
To store books and members.
#### 8: 📘 Control Flow Statements: 
To manage actions and responses.
#### 9: 📘 Exception Handling: 
To handle errors when operations fail.
#### 10: 📘 Records/Maps: 
For quick data lookup.

### Project Design 📕
We will create the following classes:

#### Book
###### 1: LibraryMember (Base class)
###### 2: Admin and Member (Inherits from LibraryMember)
###### 3: Library (Handles all operations related to books and members)

### Explanation of Concepts Used 📗
##### 1: Classes and Objects: 
Created classes like Book, LibraryMember, Admin, Member, and Library.

##### 2: Inheritance:
Admin and Member classes inherit from LibraryMember.

##### 3: Polymorphism:
The displayMemberInfo() method behaves differently for Admin and Member.

##### 4: Abstraction:
LibraryMember is an abstract class that cannot be instantiated directly.

##### 5: Mixin:
The FineManagement mixin provides the calculateFine method that can be used by the Library class.

##### 6: Enum:
Used BookStatus to handle the state of a book (available or issued).

##### 7: Control Flow:
Used if conditions to check the availability of books and handle borrowing/returning.

##### 8: Collections:
Used lists to store books and members in the library.

##### 9: Exception Handling:
In a complete project, you would include error handling for operations like invalid member ID or book not found.

##### 10: Encapsulation: 
Each class encapsulates its data and methods, managing its state.


##  Library Management System Output 📗📙📘📕📚📖
![Library-Management-System](https://github.com/user-attachments/assets/43de7aa3-31b4-42a8-b99e-c9149e0f7d55)

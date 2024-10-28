// Enum for book status
enum BookStatus { available, issued }

// Base class for Library Members
abstract class LibraryMember {
  String name;
  String department;
  int studentID;

  LibraryMember(this.name, this.department, this.studentID);

  void displayMemberInfo();
}
// Admin class extending LibraryMember

class Student extends LibraryMember {
  Student(
    String name,
    String department,
    int studentID,
  ) : super(name, department, studentID);

  void addBook(Library library, Book book) {
    library.addBook(book);
    print("");
    print("Book ${book.title} added by $name");
    print("");
  }

  @override
  void displayMemberInfo() {
    print(
        "Student Name: $name, Student Department: $department, Student ID: $studentID ");
  }
}

// Member class extending LibraryMember
class Member extends LibraryMember {
  List<Book> borrowedBooks = [];

  Member(
    String name,
    String department,
    int studentID,
  ) : super(name, department, studentID);

  void borrowBook(Library library, Book book) {
    if (book.status == BookStatus.available) {
      borrowedBooks.add(book);
      library.issueBook(book, this);
      print('$name borrowed the book: "${book.title}".');
    } else {
      print('Book "${book.title} is currently not available in Library');
    }
  }

  @override
  void displayMemberInfo() {
    print("Member Name: $name, Member Department: $department");
  }
}

// Mixin for extra functionality
mixin FineManagement {
  double calculateFine(int overdueDays) => overdueDays * 24.0;
}

// Class to represent a book
class Book {
  String title;
  String author;
  BookStatus status;

  Book(this.title, this.author, {this.status = BookStatus.available});

  void displayBookInfo() {
    print("Book Title: $title, Author Name: $author, Status: ${status.name}");
  }
}

// Library class that manages books and members
class Library with FineManagement {
  List<Book> books = [];
  List<LibraryMember> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  void issueBook(Book book, Member member) {
    book.status = BookStatus.issued;
  }

  void returnBook(Book book, Member member) {
    book.status = BookStatus.available;
    member.borrowedBooks.remove(book);
    print("Book '${book.title}' returned successfully");
  }

  void addMember(LibraryMember member) {
    members.add(member);
  }

  void displayAllBooks() {
    for (var book in books) {
      book.displayBookInfo();
    }
  }

  void displayAllMembers() {
    for (var member in members) {
      member.displayMemberInfo();
    }
  }
}

void main() {
  print("");
  print("-------------  Library Management System -------------");
  print("");

  // Create Library instance
  Library myLibrary = Library();

  // Create Books
  Book book1 = Book("Beginning App Development with Flutter", "Rap Payne");
  Book book2 = Book("Beginning MERN Stack Development", "Greg Lim");
  Book book3 = Book("HTML, CSS, JavaScript & JQuery", "Jon Duckett");
  Book book4 = Book("C# in Depth", "Jon Skeet");

  // Add Books to the Library
  myLibrary.addBook(book1);
  myLibrary.addBook(book2);
  myLibrary.addBook(book3);
  myLibrary.addBook(book4);

  // Create Members
  Student student1 = Student("Osama Kamal", "Mobile App", 286);
  Student student2 = Student("Shaarif Asim", "Web Development", 279);
  Student student3 = Student("Aman Mirza", "Mern Stack", 272);
  Student student4 = Student("Abdul Hai", ".Net Core Development", 275);

  Member member1 = Member("Hamza Khan", "Software", 253);
  Member member2 = Member("Mubashir Babar", "Information Technology", 266);

  // Add Students & Members to the Library
  myLibrary.addMember(student1);
  myLibrary.addMember(student2);
  myLibrary.addMember(student3);
  myLibrary.addMember(student4);

  myLibrary.addMember(member1);
  myLibrary.addMember(member2);

  // Display all books and members
  print("");
  print("******************** Library Books ********************");
  print("");
  myLibrary.displayAllBooks();

  print("");
  print("******************** Library Members ********************");
  print("");
  myLibrary.displayAllMembers();

  // Student adding a book to the library
  student2.addBook(myLibrary, Book("Full-Stack React Projects", "Shama Hoque"));

  // Member borrowing a book
  member2.borrowBook(myLibrary, book3);

  // Display all books after issuing
  print("");
  print("******************** Library Books After Issue ********************");
  print("");
  myLibrary.displayAllBooks();

  // Member returning a book
  myLibrary.returnBook(book2, member1);

  // Display all books after return
  print("");
  print("******************** Library Books After Return ********************");
  print("");
  myLibrary.displayAllBooks();

  // Using mixin to calculate fines
  int overdueDays = 13;
  double fine = myLibrary.calculateFine(overdueDays);
  print("Total Fine for $overdueDays overdue days: ${fine.toString()} PKR");
}

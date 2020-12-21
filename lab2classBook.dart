// import "dart.io";
void main() {
  List<Book> books = []; //method or function camel style
  books.add(Book(bookCode: 'B001', bookTitle: 'Java Programming', bookType: 'Textbook', bookPrice: 200));
  books.add(Book(bookCode: 'B002', bookTitle: 'Beginning Flutter', bookType: 'Textbook', bookPrice: 375));
  books.add(Book(bookCode: 'B003', bookTitle: 'One Piece', bookType: 'Cartoon', bookPrice: 45));
  books.add(Book(bookCode: 'B004', bookTitle: 'Naruto', bookType: 'Cartoon', bookPrice: 85));
  books.add(Book(bookCode: 'B005', bookTitle: 'Harry Potter', bookType: 'Novel', bookPrice: 250));
  books.add(Book(bookCode: 'B006', bookTitle: 'Hobbit', bookType: 'Novel', bookPrice: 200));

  for (var item in books) {
    print(" รหัสหนังสือ : " + " " + bookCode + "ชื่อหนังสือ:" + " " + bookTitle + "ประเภทหนังสือ:" + bookType + "ราคา :" + " " + bookPrice.toString() + "บาท");
  
}

class Book {
  final String bookCode;
  final String bookTitle;
  final String bookType;
  final int bookPrice;
  Book({this.bookCode, this.bookTitle, this.bookType, this.bookPrice});
}

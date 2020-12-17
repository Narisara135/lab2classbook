// import "dart.io";
void main() {
  List<Book> books = []; //method or function camel style
  books.add(Book(
      bookCode: 'B001',
      bookTitle: 'Java Programming',
      bookType: 'Textbook',
      bookPrice: 200));
  books.add(Book(bookCode: 'กล้วย', bookTitle: 10.0));
  //   print(fruits[0]);
  // for (var item in fruits) {
  // print(item.fruitName + "มีราคา" + item.fruitPrice.toString());
  // }
//   for (int i = fruits.length - 1; i >= 0; i--) {
//     print(
//         f1.fruitName + " " + "มีราคา" + " " + f1.fruitPrice.toString() + "บาท");
//   }
}

class Book {
  final String bookCode;
  final String bookTitle;
  final String bookType;
  final double bookPrice;
  Fruit({this.bookCode, this.bookTitle, this.bookType, this.bookPrice});
}

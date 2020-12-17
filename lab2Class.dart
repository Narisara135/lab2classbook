// import "dart.io";
void main() {
  Fruit f1 = Fruit(fruitPrice: 10.0, fruitName: "banana");
  //print(f1.fruitName + " " + "มีราคา" + " " + f1.fruitPrice.toString() + "บาท");
  List<Fruit> fruits = []; //method or function camel style
  fruits.add(Fruit(fruitName: 'ส้ม', fruitPrice: 25.0));
  fruits.add(Fruit(fruitName: 'กล้วย', fruitPrice: 10.0));
  //   print(fruits[0]);
  // for (var item in fruits) {
  // print(item.fruitName + "มีราคา" + item.fruitPrice.toString());
  // }
  for (int i = fruits.length - 1; i >= 0; i--) {
    print(
        f1.fruitName + " " + "มีราคา" + " " + f1.fruitPrice.toString() + "บาท");
  }
}

class Fruit {
  final String fruitName;
  final double fruitPrice;
  Fruit({this.fruitName, this.fruitPrice});
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _controller1 = TextEditingController();

  //  Checkboox food
  List<Food> foods = Food.getfood();
  List<String> _foodchecked = [];

  // Dropdown นาย นางสาว
  List<String> dropdownItems = ['นาย', 'นางสาว'];
  String _selectedItem = 'นาย';

  // Radio เพศ
  String _gender;

  // textfild กรอกชื่อ
  String _text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text From fild Example'),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          //TextField
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      //ไม่แสดงชื่อ แต่ขึ้นข้อความแจ้งเตือน
                      if (value.isEmpty) {
                        return 'Pleas! Enter some text';

                        // แสดงชื่อ
                      } else {
                        _text = value;
                      }
                      return null;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.comment),
                    labelText: "Enter text",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),

            //text form fild
            Container(
              child: TextFormField(
                controller: _controller1,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Pleas! Enter some text';
                  }
                  return value;
                },
              ),
            ),
            Divider(),

            // checkBox Food

            CheckboxListTile(
                title: Text('Food 1'),
                value: foods[0].isChecked,
                onChanged: (bool value) {
                  setState(() {
                    foods[0].isChecked = value;
                  });
                  if (value) {
                    _foodchecked.add(foods[0].foodName);
                  } else {
                    _foodchecked.remove(foods[0].foodName);
                  }
                }),
            CheckboxListTile(
                title: Text('Food 2'),
                value: foods[1].isChecked,
                onChanged: (bool value) {
                  setState(() {
                    foods[1].isChecked = value;
                  });
                  if (value) {
                    _foodchecked.add(foods[1].foodName);
                  } else {
                    _foodchecked.remove(foods[1].foodName);
                  }
                }),

            // radio ของ  ผู้ชาย, ผู้หญิง
            RadioListTile(
                title: Text('ผู้ชาย'),
                value: "mele",
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                }),
            RadioListTile(
                title: Text('ผู้หญิง'),
                value: "femele",
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                }),

            //DropDown นาย,นางสาว
            DropdownButton(
              value: _selectedItem,
              items: dropdownItems.map<DropdownMenuItem<String>>((val) {
                return DropdownMenuItem<String>(
                  child: Text(val),
                  value: val,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedItem = value;
                });
              },
            )

            //Submit
            RaisedButton(
              child: Text('ตกลง'),
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  print(_controller1.text);
                }

                print(_foodchecked);
                print(_text);
                print(_gender);
                print(_selectedItem);
              },
            )
          ],
        ),
      ),
    );
  }
}

class Food {
  String foodName;
  bool isChecked;

  Food(this.foodName, this.isChecked);

  static List<Food> getfood() {
    return <Food>[Food('food0', false), Food('food1', false)];
  }
}

// class PrefixItem {
//   String prefixName;
//   String val;

//   PrefixItem(this.val, this.prefixName);

//   static List<PrefixItem> getPrefixe() {
//     return <PrefixItem>[PrefixItem('1', 'นาย'), PrefixItem('2', 'นางสาว')];
//   }

// }

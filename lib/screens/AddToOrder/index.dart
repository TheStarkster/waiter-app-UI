import 'package:flutter/material.dart';

class AddToOrder extends StatefulWidget {
  @override
  _AddToOrderState createState() => _AddToOrderState();
}

class _AddToOrderState extends State<AddToOrder> {
  bool creame = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF3366FF),
        title: Text(
          "Add To Order",
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "Paneer Tikka",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                  padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                  child: Text(
                    "Choice of Add-On",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(height: 12,),

            Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Text('Milk Creame Add On',style: TextStyle(fontSize: 17.0), ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: creame,
                  onChanged: (bool value) {
                    setState(() {
                      creame = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Text('Green Chutney',style: TextStyle(fontSize: 17.0), ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: creame,
                  onChanged: (bool value) {
                    setState(() {
                      creame = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Text('BBQ Sauce',style: TextStyle(fontSize: 17.0), ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: creame,
                  onChanged: (bool value) {
                    setState(() {
                      creame = value;
                    });
                  },
                ),
              ],
            ),
        ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,

      ),
    );
  }
}

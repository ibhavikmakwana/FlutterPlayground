import 'package:flutter/material.dart';

class Sheet extends StatefulWidget {
  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 695,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        color: Color(0xCCffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                height: 50,
                child: Text(
                  "New Item",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[800],
                      fontFamily: "CustomFont2"),
                ),
              ),
            ),
            Container(
              width: 250,
              child: TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.shopping_cart),
                  focusColor: Colors.white,
                  hintText: "Item",
                  hintStyle: TextStyle(fontSize: 18, fontFamily: "CustomFont2"),
                ),
                style: TextStyle(
                  fontSize: 23,
                ),
                autofocus: true,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 30),
                  width: 100,
                  child: TextField(
                    maxLength: 4,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add),
                        hintText: "Pcs",
                        hintStyle:
                            TextStyle(fontSize: 18, fontFamily: "CustomFont2")),
                    style: TextStyle(
                      fontSize: 23,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: TextField(
                          maxLength: 4,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.line_weight),
                              hintText: "Weight",
                              hintStyle: TextStyle(
                                  fontSize: 18, fontFamily: "CustomFont2")),
                          style: TextStyle(
                            fontSize: 23,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: ToggleButtons(
                          borderWidth: 5,
                          fillColor: Colors.blue[200],
                          textStyle: TextStyle(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                          children: <Widget>[
                            Text("Kg"),
                            Text(
                              "g",
                            ),
                          ],
                          isSelected: [true, false],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 250,
              child: TextField(
                maxLength: 80,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.note_add),
                    focusColor: Colors.white,
                    hintText: "Notes",
                    hintStyle:
                        TextStyle(fontSize: 18, fontFamily: "CustomFont2")),
                style: TextStyle(
                  fontSize: 20,
                ),
                autofocus: false,
                keyboardType: TextInputType.multiline,
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    color: Colors.blue,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    color: Colors.red,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Add More",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ButtonsState createState() => new _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int selected;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          getIconButton(),
          Divider(),
          getFlatButton(),
          Divider(),
          getMaterialButton(),
          Divider(),
          getRaisedButton(),
          Divider(),
          getOutlineButton(),
          Divider(),
          getCloseBackButton(),
          Divider(),
          getDropDownButton(),
          Divider(),
          getFloatingActionButton(),
        ],
      ),
    );
  }

  Widget getIconButton() {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          splashColor: Colors.blue,
          onPressed: () {},
        ),
        Divider(
          color: Colors.green,
        ),
        Text("IconButton"),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: null,
        ),
        Text("Disable"),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
    );
  }

  Widget getFlatButton() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            FlatButton(
              child: new Text("FlatButton"),
              onPressed: () {},
            ),
            FlatButton(
              child: new Text("Disabled"),
              onPressed: null,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.title),
          label: new Text("FlatButton"),
        ),
      ],
    );
  }

  Widget getMaterialButton() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.redAccent,
                onPressed: () {},
                child: new Text("MaterialButton"),
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.redAccent,
                child: new Text("Disabled"),
                textColor: Colors.white,
                onPressed: null,
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        ),
        RawMaterialButton(
          padding: EdgeInsets.all(16.0),
          splashColor: Colors.yellowAccent,
          fillColor: Colors.red,
          textStyle: TextStyle(
            color: Colors.white,
          ),
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.blueAccent,
              style: BorderStyle.solid,
            ),
          ),
          child: new Text("RawMatetrialButton"),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget getRaisedButton() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: new Text("RaisedButton"),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: new Text(
                    "Disabled",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  label: new Text("RaisedButton"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.favorite),
                  label: new Text("Disabled"),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget getOutlineButton() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {},
                  child: new Text("OutlineButton"),
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: null,
                  child: new Text("Disabled"),
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton.icon(
                  icon: Icon(Icons.error),
                  label: new Text("OutlineButton"),
                  onPressed: () {},
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton.icon(
                  icon: Icon(Icons.error),
                  label: new Text("OutlineButton"),
                  onPressed: null,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  ///
  /// [CloseButton]
  /// [BackButton]
  ///
  Widget getCloseBackButton() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BackButton(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Back Button"),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CloseButton(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Close Button"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  ///
  /// [DropdownButton]
  ///
  Widget getDropDownButton() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new DropdownButton<int>(
                hint: new Text("Select"),
                value: selected,
                items: new List<DropdownMenuItem<int>>.generate(
                  25,
                  (int index) => new DropdownMenuItem<int>(
                        value: index,
                        child: new Text(index.toString()),
                      ),
                ),
                onChanged: (int value) {
                  setState(() {
                    selected = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Simple Dropdown"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget getFloatingActionButton() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {},
            child: Center(
              child: Icon(Icons.add),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Floating Action Button",
          ),
        ),
      ],
    );
  }
}

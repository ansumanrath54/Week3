import 'package:flutter/material.dart';

import 'buyingpage.dart';

class ItemsGrid extends StatefulWidget {
  const ItemsGrid({Key? key}) : super(key: key);

  @override
  _ItemsGridState createState() => _ItemsGridState();
}

class _ItemsGridState extends State<ItemsGrid> {
  @override
  Widget build(BuildContext context) {
    return
    new Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            ),
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: new Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                  },
                    child: Image.asset('assets/images/laptop.jpg',),
                  ),
                ),),
            )
          ]
        ));
  }
}

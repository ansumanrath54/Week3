import 'package:ecommerce_app/orderpage.dart';
import 'package:ecommerce_app/gridview.dart';
import 'package:ecommerce_app/listview.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isList = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
            'SkillKart',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => (OrderPage())));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text('View',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 250.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isList = false;
                        });
                      },
                      child: Icon(Icons.apps),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isList = true;
                        });
                      },
                      child: Icon(Icons.list_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: isList ? ItemsList() : ItemsGrid(),
          ),
        ],
      ),
    );
  }
}

import 'package:ecommerce_app/cartbox.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/new_cart_form.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'orderpage.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: _buildListView(context)),
          NewCartForm(),
        ],
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    int len = showlen();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text(
            'SkillKart',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            )
        ),
        actions: <Widget>[
          Text(
              len.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => (OrderPage())));

              Text(
                  len.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  )
              );
            },
          ),
        ],
      ),
      body: WatchBoxBuilder(
          box: Hive.box('cartbox'),
          builder: (context, cartBox) {
            return ListView.builder(
              itemCount: cartBox.length,
                itemBuilder: (context, index) {
                  final cart = cartBox.getAt(index) as CartBox;
                  return ListTile(
                    title: Text(cart.productId),
                    subtitle: Text(cart.quantity.toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {
                            cartBox.putAt(index, CartBox('${cart.productId}', cart.quantity + 1));
                          },
                          child: const Text('+',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey
                            ),),
                        ),
                        TextButton(
                          onPressed: () {
                            if(cart.quantity > 1) {
                              cartBox.putAt(index, CartBox('${cart.productId}', cart.quantity - 1));
                            }
                            else
                              cartBox.deleteAt(index);
                          },
                          child: const Text('-',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey
                          ),),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            cartBox.deleteAt(index);
                          },
                        )
                      ],
                    ),
                  );
                }
            );
      }),
    );
  }

  int showlen() {
    final cart = Hive.box('cartbox');
    return cart.length;
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: 60.0,
          left: 10.0,
        ),
        color: Colors.deepOrangeAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    "Margarita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Mozzarella",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            PizzaImageWidget(),
            OrderButton(),
          ],
        ),
      ),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = const AssetImage('images/pizza.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400.0,
    );
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RawMaterialButton(
        child: Text("Order your Pizza!"),
        fillColor: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        }
      ),
    );
    return button;
  }
  void order(BuildContext context) {
    var alert = const AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
    );
  }
}
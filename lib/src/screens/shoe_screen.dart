import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/custom_widgets.dart';

class ShoeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: 'shoe',
                  child: ShoePreview(fullScreen: true)
                ),
                Positioned(
                  left: 10,
                  top: 20,
                  child: FloatingActionButton(
                    child: Icon(Icons.chevron_left, color: Colors.white, size: 60),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    highlightElevation: 0
                  )
                )
              ]
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Shoe(
                      title: 'Nike Air Max 720',
                      description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),
                    _PurchaseOptions(),
                    _ColorOptions(),
                    _CartSettings()
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class _PurchaseOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: <Widget>[
          Text(
            '\$180.0', 
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            )
          ),
          Spacer(),
          Bounce(
            delay: Duration(seconds: 1),
            from: 8,
            child: Button(
              text: 'Buy now',
              width: 120,
              height: 40
            ),
          )
        ],
      ),
    );
  }
}

class _ColorOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(left: 60, child: _ColorOption(Color(0xffC6D642), 4)),
                Positioned(left: 40, child: _ColorOption(Color(0xffFFAD29), 3)),
                Positioned(left: 20, child: _ColorOption(Color(0xff2099F1), 2)),
                _ColorOption(Color(0xff364D56), 1)
              ],
            ),
          ),
          Button(
            text: 'More related items',
            height: 30,
            width: 150,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ColorOption extends StatelessWidget {

  final Color color;
  final int index;

  _ColorOption(this.color, this.index);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}

class _CartSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ShadowButton(
            Icon(
              Icons.star, 
              color: Colors.red, 
              size: 25
            )
          ),
          _ShadowButton(
            Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: 25
            )
          ),
          _ShadowButton(
            Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(0.4),
              size: 25
            )
          )
        ],
      ),
    );
  }
}

class _ShadowButton extends StatelessWidget {
   
  final Icon icon;

  _ShadowButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.icon,
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0, 10)
          )
        ]
      ),
    );
  }
}
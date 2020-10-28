import 'package:flutter/material.dart';
import 'package:shoes/src/screens/shoe_screen.dart';

class ShoePreview extends StatelessWidget {

  final bool fullScreen;

  const ShoePreview({
    this.fullScreen = false
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen) {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (BuildContext context) => ShoeScreen())
          );
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: this.fullScreen ? 5 : 30
        ),
        child: Container(
          width: double.infinity,
          height: this.fullScreen ? 350: 400,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: !this.fullScreen ? 
                          BorderRadius.circular(50) : 
                          BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                          )
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              _ShadowShoe(),
              if (!this.fullScreen) 
                _ShoeSizes()
            ],
          ),
        ),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {

  final sizes = [        
    _ShoeSize(size: 7),
    _ShoeSize(size: 7.5),
    _ShoeSize(size: 8),
    _ShoeSize(size: 8.5),
    _ShoeSize(size: 9),
    _ShoeSize(size: 9.5),
    _ShoeSize(size: 10),
    _ShoeSize(size: 10.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height:80,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (BuildContext context, int index) => sizes[index],
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10)
      )
    );
  }
}

class _ShoeSize extends StatelessWidget {

  final double size;

  const _ShoeSize({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        '${size.toString().replaceAll('.0', '')}',
        style: TextStyle(
          color: (this.size == 9) ? Colors.white : Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold
        )
      ),
      width: 45,
      decoration: BoxDecoration(
        color: (this.size == 9) ? Color(0xffF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (this.size == 9)
            BoxShadow(
              color: Color(0xffF1A23A),
              blurRadius: 10,
              offset: Offset(0, 3)
            )
        ]
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _Shadow()
          ),
          Image(image: AssetImage('assets/imgs/blue.png'))
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 190,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)
          ]
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Example5 extends StatefulWidget {
  const Example5({super.key});

  @override
  State<Example5> createState() => _Example5State();
}
var defaultwidth = 100.0;
class _Example5State extends State<Example5> {
  bool _IsZoomedIn = false;
  var _width = defaultwidth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Zoom IN/Zoom OUT",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: _IsZoomedIn?Curves.bounceInOut:Curves.bounceOut,
              width: _IsZoomedIn?MediaQuery.of(context).size.width:200,
        duration: Duration(milliseconds: 370),
              child: Image.asset("assets/images/Bg.jpg"),

            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: WidgetStateColor.transparent
              ),
                onPressed: (){
                  setState(() {
                    _IsZoomedIn = !_IsZoomedIn;

                  });
                },
                child: Text(_IsZoomedIn?"Zoom OUT":"Zoom IN",style: TextStyle(fontSize: 20,color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}

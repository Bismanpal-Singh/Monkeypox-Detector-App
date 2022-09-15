import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5,
        title: Text('Monkeypox Detector'),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'camera_page');
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF7BC6EC),
                  Colors.white,
                ],
              )
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.22,),

                child: Column(
                  children: [
                    Text(
                   'The Image is\nBeing Processed',
                    textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 50,
                     fontFamily: 'Buttler',
                    fontWeight: FontWeight.w800,
                     color: Colors.black,
                  ),
                 ),
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.07,),
                     child: Icon(Icons.done,size: 60, color: Colors.black,),
                   ),
                   SizedBox(height:50),
                  Text(
                   'Your result would be\nsent on the registered\nE-mail ID shortly',
                    textAlign: TextAlign.center,
                     style: TextStyle(
                     fontSize: 29,
                      fontFamily: 'worksans',
                     color: Colors.black,
                   ),
                  ),
                 ],
                 ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top :MediaQuery.of(context).size.height*0.60, ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: Text('Back to home',
                      style: TextStyle(
                        fontSize: 20,
                      )
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                    primary: Color(0xff4c505b),
                    shape: StadiumBorder(),
                  ),// Style
                ),
              )
            ],
          ),
       )
    );
  }
}

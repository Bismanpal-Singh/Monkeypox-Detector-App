
import 'package:flutter/material.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {

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
            Navigator.pushNamed(context, 'login');
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
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.20,),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'Click a Picture to Check\nfor Monkeypox Virus',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Buttler',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height:40),
                  Text(
                    'Important instructions\n before taking the picture : ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontFamily: 'worksans',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left:MediaQuery.of(context).size.width*0.025 ),
              child: Text(
                '1.\n\n\n2.',
                  style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'worksans',
                  color: Colors.black,
    )             ,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.501
                  ,left:MediaQuery.of(context).size.width*0.08,right: MediaQuery.of(context).size.width*0.03 ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.height*0.03),
                    child: Expanded(
                      child: Text(
                        'The Camera should directly be facing the infected area.',
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'worksans',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Expanded(
                      child: Text(
                        'There should be enough light to have a clear image as dark/blurry images might not give accurate results.',
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'worksans',
                          color: Colors.black,
                        ),
                  ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.12,),
              alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,'camera_page');
                },
                child: Text('I Understand',
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
            ),
          ],
        )
        ),
    );
  }
}

import 'package:flutter/material.dart';

class FrontPg extends StatefulWidget {
  const FrontPg({Key? key}) : super(key: key);

  @override
  State<FrontPg> createState() => _FrontPgState();
}

class _FrontPgState extends State<FrontPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* extendBodyBehindAppBar: true,
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
      ),*/
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF7BC6EC),
                Colors.white,
              ],
            )
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.4),
              alignment: Alignment.center,
              color: Colors.transparent,
              child: CircleAvatar(
                radius: 110,
                backgroundColor: Color(0xff4c505b),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/front.jpg'),
                  radius: 100,
                ),
           ),
            ),
            Container(
              padding: EdgeInsets.only(top : MediaQuery.of(context).size.height*0.52 ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'MONEKYPOX DETECTOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'worksans',
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Scan - Upload - Get Result',
                    style: TextStyle(
                    color: Color(0xff4c505b),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'worksans',
                    ),
                  ),
                  SizedBox(height: 40,),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'login');
                    },
                    child:
                    Text('Get Started',
                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 30,
                        fontFamily: 'worksans',
                        color : Color(0xff4c505b),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}

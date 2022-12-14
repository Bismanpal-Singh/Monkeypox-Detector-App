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
              padding: EdgeInsets.only(top : MediaQuery.of(context).size.height*0.48 ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'MONEKYPOX\nDETECTOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'worksans',
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Scan - Upload - Get Result',
                    style: TextStyle(
                    color: Color(0xff4c505b),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'worksans',
                    ),
                  ),
                  SizedBox(height: 60,),
                  FloatingActionButton.extended(
                    onPressed: (){
                      Navigator.pushNamed(context, 'login');
                    },
                    backgroundColor: Color(0xff4c505b),
                    label:
                    Text('Get Started',
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'worksans',
                        color : Colors.white,
                      ),
                    ),
                    icon: Icon(Icons.arrow_forward_ios),
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

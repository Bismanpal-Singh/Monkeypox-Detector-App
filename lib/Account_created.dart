import 'package:flutter/material.dart';

class AccCreated extends StatefulWidget {
  const AccCreated({Key? key}) : super(key: key);

  @override
  State<AccCreated> createState() => _AccCreatedState();
}

class _AccCreatedState extends State<AccCreated> {
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
          icon: Icon(Icons.home),
        ),
      ),
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/home.png'),
          fit: BoxFit.cover,
        ),
      ),
        child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25),
            child: Text(
                    'Account Created Successfully!',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                     color: Colors.black,
                     fontSize: 40,
                     fontWeight: FontWeight.w600,
                      fontFamily: 'worksans',
           ),
          ),
        ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.40,left: 75),
            child: Text(
                'Please login to continue',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'worksans',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.50,
                right: 35 , left: MediaQuery.of(context).size.width*0.325),
            child:
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Text('Back to login',
                  style: TextStyle(
                    fontSize: 17,
                  )
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff4c505b),
              ),// Style
            ),
          ),
      ],
     ),
    ),
    );
  }
}

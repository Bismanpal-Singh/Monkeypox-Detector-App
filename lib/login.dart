import 'package:flutter/material.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({Key? key}) : super(key: key);

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor : Colors.transparent,
        elevation: 5,
        title: Text('Monkeypox Detector',
        ),
         leading: IconButton(
           color: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, 'FrontPg');
        },
          icon: Icon(Icons.home),
          )
    ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus){
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30,top: 150),
                  child: Text(
                    "Please login\nto continue.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'worksans',
                     // fontStyle:
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45,
                  right: 35 , left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                      ),
                  )
                ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sign in",
                            style: TextStyle(
                              color : Color(0xff4c505b),
                              fontSize: 30,
                              fontFamily: 'worksans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){
                                Navigator.pushNamed(context, 'instructionSlider');
                              },

                              icon: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          },
                              child:
                              Text('Sign up',
                              style:TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                fontFamily: 'worksans',
                                color : Color(0xff4c505b),

                              ),
                          ),
                          ),
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'forgot_pass');
                          },
                            child:
                            Text('Forgot Password',
                              style:TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                fontFamily: 'worksans',
                                color : Color(0xff4c505b),
                              ),
                            ),
                          ),
                        ],
                      ),
              ],//children
            ),
          ),
          ]
    ),
    ),
        ),
      ),
    );
  }
}

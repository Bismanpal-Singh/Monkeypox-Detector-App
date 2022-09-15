import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor : Colors.transparent,
          elevation: 5,
          title: Text('Monkeypox Detector'),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            icon: Icon(Icons.arrow_back_rounded),
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
          child: Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/register.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 35,top: 145),
                      child: Text(
                        "Create a\nnew account.",
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
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.42,
                          right: 35 , left: 35),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                          SizedBox(height: 20,),
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
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Create Account",
                                style: TextStyle(
                                  color : Color(0xff4c505b),
                                  fontSize: 27,
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
                                    Navigator.pushNamed(context, 'Account_created');
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
                                  Navigator.pushNamed(context, 'login');
                                },
                                child:
                                Text('Back to login',
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
      ),
    );
  }
}

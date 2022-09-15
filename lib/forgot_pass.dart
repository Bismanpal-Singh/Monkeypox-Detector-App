import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {

  String displaytext="Please enter your \nemail to continue.";
  void changetext(){
    setState(() {
      displaytext = "Check mail to reset the password.";
    });
  }
  bool isButtonActive = true;
  late TextEditingController controller;
  @override
  void initState(){
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;
      setState(()=> this.isButtonActive = isButtonActive);
    });
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
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
                image: AssetImage('assets/register.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Align(
                alignment : Alignment.topLeft,
                child:
                Container(
                  padding: EdgeInsets.only(left:15,top: 160),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'worksans',
                      // fontStyle:
                    ),
                  ),
                ),
               ),
               Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.40),
                    alignment: Alignment.topCenter,
                    child: Text(
                      displaytext,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'worksans',
                      ),
                    ),
                  ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.12,
                      right: MediaQuery.of(context).size.height*0.04 ,
                      left: MediaQuery.of(context).size.height*0.04),
                  child :
                    TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                      controller: controller,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.27,),
                  child:
                  ElevatedButton(
                    onPressed: isButtonActive ? () {
                      setState(() =>isButtonActive = false);
                      changetext();
                      controller.clear();
                    }
                    : null,
                    child: Text('Submit',
                        style: TextStyle(
                          fontSize: 17,
                        )
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                      primary: Color(0xff4c505b),
                      shape: StadiumBorder(),
                    ),// Style
                  ),
                ),
                ], //Children
                  ),
                ),
        ),
      ),
        );


  }
}

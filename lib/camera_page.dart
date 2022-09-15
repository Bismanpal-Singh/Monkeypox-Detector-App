import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraPg extends StatefulWidget {
  const CameraPg({Key? key}) : super(key: key);

  @override
  State<CameraPg> createState() => _CameraPgState();
}

class _CameraPgState extends State<CameraPg> {
  File? selectedImage;
  String base64Image = "";
  Future<void> getImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera,);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery,);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        // won't have any error now
      });
    }
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
              Navigator.pushNamed(context, 'home');
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.255,
                    right: 110 , left: 110),
                child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(
                          iconSize: 37,
                          color: Colors.white,
                          onPressed: (){
                            getImage("camera");
                          },

                          icon: Icon(Icons.camera_enhance_sharp),
                        ),
                      ),
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(
                          iconSize: 37,
                          color: Colors.white,
                          onPressed: (){
                            getImage("gallery");
                          },
                          icon: Icon(Icons.photo),
                        ),
                      ),
                    ],
                  ),
              ),
              Container(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.14),
                alignment: Alignment.topCenter,
                child: Text(
                  'Click a picture or Select\na Photo from Gallery',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: 'Buttler',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom : MediaQuery.of(context).size.height*0.04,),
                child : ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Result');
                  },
                  child: Text('Submit',
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
            Stack(
              children: [
                 Positioned(
                  top: MediaQuery.of(context).size.height*0.36,
                  left: MediaQuery.of(context).size.width*0.02,
                  child: selectedImage != null
                  ?  Container(
                    height: MediaQuery.of(context).size.height*0.5,
                    width: MediaQuery.of(context).size.width*0.96,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                    ),
                  ),
                    child: Image.file(
                      selectedImage!,
                      height: MediaQuery.of(context).size.height*0.6,
                      width: MediaQuery.of(context).size.width*0.96,
                      fit: BoxFit.cover,
                    ),
                  )
                   : Center(
                      child: Container(
                      height: MediaQuery.of(context).size.height*0.6,
                      width: MediaQuery.of(context).size.width*0.96,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/noimage.jpg'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}

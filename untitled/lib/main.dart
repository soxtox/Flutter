import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/photos.jpeg'),
                radius: 70.0,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                //color:Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'Saulen Shilpakar',
                  style: TextStyle(fontFamily: 'pacifico', fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.teal,
                height: 5,
                width: double.infinity,
              ),
              Container(
                //color: Colors.white,
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 20),
                ),
                alignment: Alignment.center,
              ),
              Container(
                child: SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade50,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(
                      width: 3,
                    ),
                    Text('+977 984 330 2523')
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 100),
                padding: EdgeInsets.only(left: 5),
                child: Row(children: [
                  Icon(Icons.email, color: Colors.teal),
                  SizedBox(
                    width: 3,
                  ),
                  Text('soxtox@gmail.com')
                ]),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(70, 10, 70, 10),
                //padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    //work remaining in QR
                    QrImage(
                      data:
                      'BEGIN:VCARD \nVERSION:3.0 \nN;CHARSET=UTF-8:Shilpakar;Saulen;;; \nNICKNAME;CHARSET=UTF-8: \nTEL;TYPE=WORK,VOICE:+9779843302523 \nTITLE;CHARSET=UTF-8:Software Developer/Flutter \nORG;CHARSET=UTF-8:Bholachhen \nURL;CHARSET=UTF-8:https://github.com/soxtox \nNOTE;CHARSET=UTF-8:Notes on contact \nREV:2023-05-12T02:23:21.232127 \nEND:VCARD',
                      size: 220,
                      embeddedImageStyle:
                      QrEmbeddedImageStyle(size: Size.square(100)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

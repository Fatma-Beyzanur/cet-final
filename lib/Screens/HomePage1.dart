import 'package:flutter/material.dart';
import 'package:cetquiz_app/Screens/HomePage.dart';

void gotoHomePage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => HomePage()),
  );
}
class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/b.png',
              fit: BoxFit.contain,
              height: 50,
            ),

            Container(
                padding: const EdgeInsets.all(0.0), child: Text('FINAL PROJECT Beyzanur Özel',
              style: TextStyle(fontFamily: 'b',color:Colors.white),
            )
            ),],),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only( bottom: 30.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Center(
                child: Text(
                  ' HOŞGELDİNİZ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'a',
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),


            ),
          ),

          SizedBox(
            height: 60,
          ),

       Padding(
         padding: EdgeInsets.all(15),
            child:
              TextField(

                  maxLength: 20, style: TextStyle(color:Colors.black87,fontFamily: 'a',),decoration: InputDecoration(labelText: 'E-Posta',border: OutlineInputBorder(),),
                  keyboardType: TextInputType.emailAddress),
       ),
          SizedBox(
            height: 60,
          ),

          Padding(
            padding: EdgeInsets.all(15),
            child:
            TextField(

                maxLength: 20, style: TextStyle(color:Colors.black87,fontFamily: 'a',),decoration: InputDecoration(labelText: 'Şifre',border: OutlineInputBorder(),),
                keyboardType: TextInputType.number),
          ),


          Padding(
            padding: const EdgeInsets.all(50.0),
            child: RaisedButton(
              color: Colors.deepPurple,
              onPressed: () {
                gotoHomePage(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('GİRİŞ YAP', style: TextStyle(fontSize: 30, color:Colors.white,fontFamily: 'a',),
                ),
              ),),
          ),
        ],

      ),
      // backgroundColor: Color.fromRGBO(237, 237, 237,1.0),
    );
  }
}
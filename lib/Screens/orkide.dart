import 'package:flutter/material.dart';
class orkide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.deepPurple,

        title: Row(
          children: [
            Container(
                child: Text('FINAL PROJECT',
                  style: TextStyle(fontFamily: 'b', color: Colors.white),
                )
            ),
          ],),
      ),
      body:SingleChildScrollView(
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/back.jpg"),
    fit: BoxFit.cover,
    ),
    ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

      Padding(
      padding: const EdgeInsets.only(top : 10.0),
      child: Container(

        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 100.0),
        child: Center(
            child: Image.asset( "assets/image/r1.png" ,  width: 300,
              height: 300,),
            )

        ),

      ),
            Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text('O R K İ D E',
                          style: TextStyle(fontSize: 25.0, color: Colors.blueGrey[400], ),),
                      ),
                    ),
                  ),
                ]
            ),
            Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text('Beyaz orkideden beyaz seramikte oluşan çiçek aranjmanı, özel günlerde sevdiklerinize hediye göndermek için uygun olduğu gibi aynı zamanda sıradan bir günü unutulmaz yapmanız için de ideal bir seçim. Not: Orkideler, mevsim şartları ve ürünün yapısı gereği çiçek ya da tomurcuk adetlerinde değişkenlik gösterebilir.',
                          style: TextStyle(fontSize: 25.0, color: Colors.blueGrey[400], ),),
                      ),
                    ),
                  ),
                ]
            ),
            Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text('FİYAT:100TL',
                          style: TextStyle(fontSize: 25.0, color: Colors.blueGrey[400], ),),
                      ),
                    ),
                  ),
                ]
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.only(right:210.0),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:80.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(Icons.add, size: 30),
                      label: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("SATIN AL"),
                      ),
                    ),
                  ),
                ),
              ),

          ]
      ),
      ),
      )
    );


  }

}
import 'package:flutter/material.dart';
class gul extends StatelessWidget {
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
                        child: Image.asset( "assets/image/r2.png" ,  width: 300,
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
                            child: Text('G Ü L',
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
                            child: Text('Kırmızının etkileyici gücüne siz de katılın. Kırmızı gülün cipsofilya ve yeşilliklerle birleşerek etkileyici bir sunuma dönüştüğü romantik gül aranjmanı ile siz de unutulmaz bir sürpriz yapın. Not: Güllerin renk tonları ve boyutları mevsim şartlarına göre değişkenlik gösterebilir.',
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
                            child: Text('FİYAT:120TL',
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
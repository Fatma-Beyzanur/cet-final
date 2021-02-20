import 'package:cetquiz_app/Screens/orkide.dart';
import 'package:cetquiz_app/Screens/gul.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void gotoorkide(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => orkide()),
  );
}
void gotogul(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => gul()),
  );
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: MyHomePage(title: 'FINAL PROJECT Beyzanur Özel'),
    );
  }
}

  class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'images/f1.png',
    'images/f2.jpg',
    'images/f3.png',
    'images/f4.png',
    'images/f5.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),

        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              carouselSlider = CarouselSlider(
                height: 200.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,

                autoPlayInterval: Duration(seconds: 10),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                scrollDirection: Axis.horizontal,

                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },

                items: imgList.map((imgAsset) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(

                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Image.asset(
                          imgAsset,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),


              SizedBox(
                height: 20,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: map<Widget>(imgList, (index, url) {
                  return Container(

                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.purpleAccent[100] : Colors
                          .blueGrey[100],
                    ),
                  );
                }),
              ),


              SizedBox(
                height: 20.0,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    splashColor: Colors.purple[200],
                    onPressed: goToPrevious,
                    child: Text("<"),
                  ),
                  OutlineButton(
                    splashColor: Colors.purple[200],
                    onPressed: goToNext,
                    child: Text(">"),


                  ),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      width:150,
                      height:250,
                      child: Card(

                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [

                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  textColor: const Color(0xFF6200EE),
                                  onPressed: () {
                                    gotoorkide(context);
                                  },
                                  child: const Text('Orkide', style: TextStyle(fontSize: 20)),

                                ),
                                Image.asset(
                                  "assets/image/r1.png",
                                  fit: BoxFit.contain,
                                ),

                              ],


                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SizedBox(
                      width:150,
                      height:250,
                      child: Card(

                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [

                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  textColor: const Color(0xFF6200EE),
                                  onPressed: () {
                                    gotogul(context);
                                  },
                                  child: const Text('Gül', style: TextStyle(fontSize: 20)),

                                ),
                                Image.asset(
                                  "assets/image/r2.png",
                                  fit: BoxFit.contain,
                                ),

                              ],


                            ),


                          ],
                        ),
                      ),
                    ),
                  ), ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      width:150,
                      height:250,
                      child: Card(

                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [

                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  textColor: const Color(0xFF6200EE),
                                  onPressed: () {
                                    // Perform some action
                                  },
                                  child: const Text('Zambak', style: TextStyle(fontSize: 20)),

                                ),
                                Image.asset(
                                  "assets/image/r3.png",
                                  fit: BoxFit.contain,
                                ),

                              ],


                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SizedBox(
                      width:150,
                      height:250,
                      child: Card(

                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [

                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  textColor: const Color(0xFF6200EE),
                                  onPressed: () {
                                    // Perform some action
                                  },
                                  child: const Text('Flamingo', style: TextStyle(fontSize: 20)),


                                ),
                                Image.asset(
                                  "assets/image/r4.png",
                                  fit: BoxFit.contain,
                                ),

                              ],


                            ),


                          ],
                        ),
                      ),
                    ),
                  ), ],

              ),

            ],
          ),
        ),
      ),
      )
    );

  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }

}

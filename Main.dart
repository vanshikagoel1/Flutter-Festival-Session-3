import 'data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BookRecommender());

class BookRecommender extends StatefulWidget {
  const BookRecommender({Key? key}) : super(key: key);

  @override
  _BookRecommenderState createState() => _BookRecommenderState();
}

class _BookRecommenderState extends State<BookRecommender> {
  String input = "";
  final myController = TextEditingController();

  get fit => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[900],
            appBar: AppBar(
              title: const Text("Book Recommender"),
              centerTitle: true,
              backgroundColor: Colors.grey[850],
            ),
            body: new Stack(children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("Books.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListView(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: TextField(
                          controller: myController,
                          decoration: const InputDecoration(
                              labelText: "Enter your preferred Genre"),
                          style:
                              TextStyle(color: Color.fromARGB(255, 12, 0, 5))),
                    ),
                    ElevatedButton(
                      child: const Text("Show us the relevant searches"),
                      onPressed: () {
                        setState(() {
                          input = myController.text;
                        });
                        myController.clear();
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(Booksuggestions[input]!),
                  ],
                ),
                Row(children: [
                  Container(
                      margin: EdgeInsets.only(left: 60, right: 50),
                      padding: new EdgeInsets.all(20.0),
                      child: new Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(50),
                            // ignore: unnecessary_new
                            child: new ButtonBar(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ElevatedButton(
                                  child: new Text('Young Adult'),
                                  onPressed: () {/** */},
                                ),
                                ElevatedButton(
                                  child: const Text('Mystery'),
                                  onPressed: () {
                                    setState(
                                      () {},
                                    );
                                    myController.clear();
                                  },
                                ),
                                ElevatedButton(
                                  child: const Text('Action/Thriller'),
                                  onPressed: () {/** */},
                                ),
                                ElevatedButton(
                                  child: const Text('Romance'),
                                  onPressed: () {/** */},
                                ),
                                ElevatedButton(
                                  child: const Text('Poetry'),
                                  onPressed: () {/** */},
                                ),
                                ElevatedButton(
                                  child: const Text('Classics'),
                                  onPressed: () {/** */},
                                ),
                              ],
                            )
                          )
                        ]
                      )
                    )
                  ]
                ),
              ]
            ),
          ]
         )
       )
     );
  }
}

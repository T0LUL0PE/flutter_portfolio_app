import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Portfolio App'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 320,
            height: 560,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/getty.jpg')
                ),
                Text('Tolulope Adams',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    )
                ),
                Text('Lagos, Nigeria',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16
                    )
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 80,
                      height: 36,
                      child : OutlinedButton(
                        onPressed: null,
                        child: Text('About'),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                    color: Theme.of(context).accentColor,
                                    width: 1.5
                                )
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 80,
                      height: 36,
                      child : OutlinedButton(
                        onPressed: null,
                        child: Text('About'),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                    color: Theme.of(context).accentColor,
                                    width: 1.5
                                )
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 80,
                      height: 36,
                      child : OutlinedButton(
                        onPressed: null,
                        child: Text('About'),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                    color: Theme.of(context).accentColor,
                                    width: 1.5
                                )
                            )
                        ),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: null,
                    child: Container(
                      width: 280,
                      height: 200,
                      padding: EdgeInsets.all(10),
                      child: Text('About',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              decoration: TextDecoration.underline
                          )
                      ),
                    ),
                  ),
                ),
                Text('Socials (Long Press to see username)',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16
                    )
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child : FloatingActionButton(
                        tooltip: '@thec0dc8ter',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : FloatingActionButton(
                        tooltip: '@thec0dc8ter',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : FloatingActionButton(
                        tooltip: '@thec0dc8ter',
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            ),
            color: Colors.white,
          ),
        ),
      backgroundColor: Colors.red,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

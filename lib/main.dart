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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320,
          height: 590,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/getty.png'),
              ),
              Text('Tolulope Adams',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  )
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('images/location.png'),
                    height: 20,
                    width: 20,
                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text('Lagos, Nigeria',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )
                    ),
                  )

                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 80,
                    height: 40,
                    child : ElevatedButton(
                        onPressed: null,
                        child: Text('About',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 80,
                    height: 36,
                    child : OutlinedButton(
                      onPressed: null,
                      child: Text('Profile',
                        style: TextStyle(
                            color: Colors.black87
                        ),
                      ),
                      style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                  color: Theme.of(context).primaryColor,
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
                      child: Text('Skills',
                        style: TextStyle(
                            color: Colors.black87
                        ),
                      ),
                      style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                  color: Theme.of(context).primaryColor,
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
                      height: 220,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text('About:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                )
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text("Tolulope Adams is goal-driven, tech-savvy individual who has passion for solving problems through code."
                                "He is someone that is always enthusiastic about learning new things and he has a preference for practical/hands-on "
                                "experience rather than learning theoretically without being able to put knowledge gained to solve real-life problems",
                                style: TextStyle(
                                  fontSize: 14,
                                )
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                elevation: 4,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("Socials",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child : FloatingActionButton(
                      child: Image(
                        image: AssetImage('images/instagram.png'),
                      ),
                      tooltip: '@thec0dc8ter',
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child : FloatingActionButton(
                      child: Image(
                        image: AssetImage('images/github.png'),
                      ),
                      tooltip: '@thec0dc8ter',
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child : FloatingActionButton(
                      child: Image(
                        image: AssetImage('images/twitter.png'),
                      ),
                      tooltip: '@thec0dc8ter',
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Text('long press to see username',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.blue
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}

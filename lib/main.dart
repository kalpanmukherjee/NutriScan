import 'package:flutter/material.dart'; //import a file

class NutrientsScanActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('NutriScan'),
      ),
      body: Container(
        child: Text(
          'this is Scan Nutrients Info'
        ),
      ),
    );
  }
}

class YourDailyIntakeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('NutriScan'),
      ),
      body: Container(
        child: Text(
            'this is Your Daily Intake'
        ),
      ),
    );
  }
}

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 16.0),
          child: InkWell(
            highlightColor: Colors.yellowAccent,
            child: Column(children: <Widget>[
              new FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NutrientsScanActivity()),
                  );
                },
                splashColor: Colors.blueGrey ,
              child: new Container(
                margin: const EdgeInsets.fromLTRB(0.0,16.0,0.0,16.0),
                padding: const EdgeInsets.all(0.0),
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: new Icon(
                        Icons.camera_alt,
                        size: 40.0,
                      ),
                    ),
                    new Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(50.0, 16.0, 16.0, 16.0),
                        child: new Text(
                          'Scan Nutrients Info',
                          textScaleFactor: 1.6,
                          style: new TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ),
              new FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>YourDailyIntakeActivity()),
                  );
                },
                splashColor: Colors.blueGrey ,
                child: new Container(
                  margin: const EdgeInsets.fromLTRB(0.0,16.0,0.0,16.0),
                  padding: const EdgeInsets.all(0.0),
                  decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.black)),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: new Icon(
                          Icons.chrome_reader_mode,
                          size: 40.0,
                        ),
                      ),
                      new Expanded(
                          child: Padding(
                        padding: EdgeInsets.fromLTRB(50.0, 16.0, 16.0, 16.0),
                        child: new Text(
                          'Your Daily Intake',
                          textScaleFactor: 1.6,
                          style: new TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('NutriScan'),
        ),
        body: MainActivity(),
      ),
    ),
  );
}

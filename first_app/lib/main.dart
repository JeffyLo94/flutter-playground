import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: AxonicsStyle.AXONICS_GREEN,
        primaryContrastingColor: AxonicsStyle.AXONICS_GREY,
      ),
      home: MaterialPage(title: 'Home Page', pageCount: 0,),
    );
  }
}

class AxonicsStyle {
  static Color AXONICS_GREEN = Color.fromARGB(255, 162, 223, 93);
  static Color AXONICS_GREY = Color.fromARGB(255, 73, 80, 87);
}

class MaterialPage extends StatelessWidget {
  MaterialPage({Key key, this.title, this.pageCount}) : super(key: key);
  final String title;
  num pageCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: AxonicsStyle.AXONICS_GREY)),
        iconTheme: IconThemeData(color: AxonicsStyle.AXONICS_GREY),
        backgroundColor: AxonicsStyle.AXONICS_GREEN,
      ),
      body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Page Count: ${this.pageCount}",
              ),
              ElevatedButton(
                child: Icon(Icons.add),
                onPressed: () {
                  this.pageCount++;
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => CupertinoPage(
                        title: "Cupertino Page",
                        pageCount: this.pageCount,
                      ),
                    ),
                  );
                },
              )
            ]
          )
      ),
    );
  }
}

class CupertinoPage extends StatelessWidget {
  CupertinoPage({Key key, this.title, this.pageCount}) : super(key: key);
  final String title;
  num pageCount;
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: 
        Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              Text(
                "Page Count: ${this.pageCount}",
              ),
              CupertinoButton.filled(
                child: Icon(Icons.add),
                onPressed: () {
                  this.pageCount++;
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => CustomPage(
                        title: "Custom Page",
                        pageCount: this.pageCount,
                      ),
                    ),
                  );
                },
              )
             ],
           )
             
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  CustomPage({Key key, this.title, this.pageCount}) : super(key: key);
  final String title;
  num pageCount;
  final Color AXONICS_GREEN = Color.fromARGB(255, 162, 223, 93);
  final Color AXONICS_GREY = Color.fromARGB(255, 73, 80, 87);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80.0,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: AXONICS_GREY, fontSize: 24),
              ),
            ]
          ),
          backgroundColor: AXONICS_GREEN,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Icon(Icons.arrow_back_ios_new, color: AXONICS_GREY, size: 24),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<CircleBorder>(
                    CircleBorder(
                      side: BorderSide( color: Colors.white )
                    )
                  ),
                  // padding: MaterialStateProperty.all<EdgeInsets>( EdgeInsets.all(10) ),
                  minimumSize: MaterialStateProperty.all<Size>( Size.fromHeight(30) ),
                  backgroundColor: MaterialStateProperty.all<Color>( Colors.white ),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              Text("Back".toUpperCase(), style: TextStyle(color: AxonicsStyle.AXONICS_GREY, fontSize: 12),)
            ],
          ),
        ),
      
      body: 
        Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              Text(
                "Page Count: ${this.pageCount}",
              ),
              ElevatedButton(
                child: Icon(Icons.add),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AXONICS_GREEN)),
                onPressed: () {
                  this.pageCount++;
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => MaterialPage(
                        title: "Material Page",
                        pageCount: this.pageCount,
                      ),
                    ),
                  );
                },
              )
             ],
           )
             
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import './headerApp/headerApp.dart';
import './quizApp/quizApp.dart';
import './themes.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Playground',
      material: (_, __) =>
          MaterialAppData(theme: Themes().AxonicsMaterialThemeData),
      cupertino: (_, __) =>
          CupertinoAppData(theme: Themes().AxonicsCupertinoThemeData),
      home: HomeScreen(title: 'Home Screen'),
    );
  }
}

class AppListItem {
  AppListItem(this.name, this.btnLabel, this.app);

  String name;
  String btnLabel;
  Widget app;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  final List<AppListItem> appList = [
    AppListItem('HeaderDemoApp', 'View Header App',
        MaterialHeaderPage(title: 'Home Page', pageCount: 0)),
    AppListItem('QuizApp', 'Open App', QuizApp()),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(title),
          // material: (_, __) => MaterialAppBarData(
          //   centerTitle: true,
          // ),
          // centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.25,
                // ),
                Expanded(
                  child: Container(
                    // width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height * 0.8,
                    // padding: EdgeInsets.only(top: 20, bottom: 20,),
                    // color: Colors.white,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: appList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListOption(
                            listItemName: appList[index].name,
                            btnLabel: appList[index].btnLabel,
                            widgetToOpen: appList[index].app);
                      },
                      // children: [
                      //   ListOption(listItemName: 'HeaderDemoApp', btnLabel: 'View App', widgetToOpen: HeaderDemoApp()),
                      //   //... continue list items
                      // ],
                      // separatorBuilder: (BuildContext context, int index) =>
                      //     const Divider(height: 15, thickness: 1.0),
                    ),
                  ),
                  // ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height * 0.25,
                ),
              ]),
        ));
  }
}

class ListOption extends StatelessWidget {
  ListOption(
      {Key? key,
      required this.listItemName,
      required this.btnLabel,
      required this.widgetToOpen})
      : super(key: key);

  final String listItemName;
  final String btnLabel;
  final Widget widgetToOpen;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  this.listItemName,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  child: Text(this.btnLabel),
                  // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => widgetToOpen,
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

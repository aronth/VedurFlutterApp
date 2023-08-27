import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: Color.fromARGB(255, 90, 176, 237),
        brightness: Brightness.light,
      ),
      home: WeatherWidget(),
    );
  }
}

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.thermometer),
          middle: Text('Weather'),
          trailing: CupertinoButton(
              onPressed: null, child: Icon(CupertinoIcons.add))),
      child: Center(
        child: Text('Hér er ég'),
      ),
    );
  }
}

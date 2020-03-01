import 'package:flutter/material.dart';
import 'package:platform_widgets/platform_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final factories = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

  PlatformWidgetsFactory selectedFactory;

  @override
  void initState() {
    super.initState();
    selectedFactory = factories[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedFactory.createAppBar().render(
            leading: Icon(Icons.devices),
            title: Text(widget.title),
          ),
      body: Center(
        child: DropdownButton<PlatformWidgetsFactory>(
          value: selectedFactory,
          items: factories.map((PlatformWidgetsFactory value) {
            return DropdownMenuItem<PlatformWidgetsFactory>(
              value: value,
              child: Text(
                value.runtimeType.toString(),
              ),
            );
          }).toList(),
          onChanged: (factory) => setState(() => selectedFactory = factory),
        ),
      ),
    );
  }
}

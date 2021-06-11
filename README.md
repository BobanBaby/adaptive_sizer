# Adaptive Sizer

This package will help you to resize app based on scale ratio of design and device.

## Getting Started

This project will help you to make app responsive based on a refrence size. you can initialize the project with  refernce size lib will handle the rest of the calculations. just need to append .h for height .w for width .s for size

#  Basic usage

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: HomePage(title: 'Demo'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(
      context,
        designWidth: 375,
        designHeight: 800,
       );
    return Scaffold();
  }
}
```
#  To set font size to stay same even if system font size is different

```dart
 MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget,
          );
        },
        home: HomePage(title: 'Demo'),
      ),
```
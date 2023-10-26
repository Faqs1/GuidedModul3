import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ),
          title: Container(
            child: Text("SEMANGAT "),
          ),
          actions: [
            Container(
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
            ),
            Container(
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: Container(
              margin: EdgeInsets.all(6),
              height: 50,
              color: Colors.white,
              child: Center(
                child: Text("Bottom"),
              ),
            ),
            // )),
            // flexibleSpace: Container(
            //   height: 100,
            //   width: 100,
            //   color: Colors.amber,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColumnAndRowNestingWidget(),
                ColumnWidget(),
                ContainerWithBoxDecoration()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text('Column and Row Nesting 1'),
          Text('Column and Row Nesting 2'),
          Text('Column and Row Nesting 3'),
          Padding(padding: EdgeInsets.all(16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Row Nesting 1'),
              Text('Row Nesting 2'),
              Text('Row Nesting 3'),
            ],
          ),
        ]);
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text('Row 1'),
          Padding(padding: EdgeInsets.all(16.0)),
          Text('Row 2'),
          Padding(padding: EdgeInsets.all(16.0)),
          Text('Row 3'),
          Padding(padding: EdgeInsets.all(16.0)),
        ]);
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Column 1'),
        Divider(
          height: 30,
        ),
        Text('Column 2'),
        Divider(),
        Text('Column 3'),
        Divider(),
      ],
    );
  }
}

class ContainerWithBoxDecoration extends StatelessWidget {
  const ContainerWithBoxDecoration({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightBlue.shade500,
              ]),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
      child: Center(
        child: Text("Container"),
      ),
    );
  }
}



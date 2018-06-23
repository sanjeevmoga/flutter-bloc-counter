import 'package:flutter/material.dart';

import 'bloc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return BlocProvider(
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AndyPage(),
      ),
    );
  }
}

class AndyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final andyBloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
                stream: andyBloc.count,
                initialData: 0,
                builder: (context, snapshot) => Text(
                      snapshot.data.toString(),
                      style: Theme.of(context).textTheme.display1,
                    )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          andyBloc.countAdd.add(1);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

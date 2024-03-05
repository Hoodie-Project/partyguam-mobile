import 'package:flutter/material.dart';
import 'package:partyguam/app/pages/sign_up/login_0000.dart';
import 'package:partyguam/app/pages/sign_up/register_0111.dart';
import 'package:partyguam/utils/theme/app_bar.dart';
import 'package:partyguam/utils/theme/theme.dart';
import 'package:partyguam/utils/widgets/buttons.dart';
import 'package:partyguam/utils/widgets/inputs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const MyHomePage(title: '로그인'),
      initialRoute: '/',
      routes: {
        '/login': (context) => const Login(),
        '/register_0111': (context) => const Registration011(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: const SignUpAppBar(
        title: '로그인',
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: longHorizontalStyle,
              child: const Text('다음'),
            ),
            SizedBox(
              height: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: mainShortHorizontalStyle,
              child: const Text('작성하기'),
            ),
            SizedBox(
              height: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: subShortHorizontalStyle,
              child: const Text('홈으로'),
            ),
            SizedBox(
              height: 2,
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    PrimaryInputBox(
                      hintText: '20자 이상',
                    )
                  ],
                )),
            SquareButton(content: '여자'),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

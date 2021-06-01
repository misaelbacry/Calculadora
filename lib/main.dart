import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      shape: MaterialStateProperty.all(const CircleBorder()),
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(const EdgeInsets.all(0))
  );
  ButtonStyle buttonStyleEquals = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.red),
      shape: MaterialStateProperty.all(const CircleBorder()),
      elevation: MaterialStateProperty.all(5),
      padding: MaterialStateProperty.all(const EdgeInsets.all(0))
  );
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle textStyleBasic = const TextStyle(
    color: Colors.red,
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          Expanded(
            child: Container(
              //padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(40, 40, 40, 1),
              child: SafeArea(
                top: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Expanded(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text("C",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "7",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "4",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "1",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "00",
                                  style: textStyle,
                                  textAlign: TextAlign.center,
                                )
                            ),
                          ),

                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "+/-",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "8",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "5",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "2",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "0",
                                  style: textStyle,
                                )
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "%",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "9",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "6",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "3",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text("", style: textStyle,)
                            ),
                          ),

                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "/",
                                  style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "X",
                                  style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "+",
                                  style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyle,
                                child: Text(
                                  "-", style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => print("11"),
                                style: buttonStyleEquals,
                                child: Text(
                                  "=",
                                  style: textStyle,
                                )
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

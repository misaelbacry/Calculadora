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

  TextStyle textStyleCalculoDisplay = const TextStyle(
    color: Colors.grey,
    fontSize: 25,
    fontWeight: FontWeight.w900,
  );

  TextStyle textStyleResultadoDisplay = const TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );
  
  String calculoDisplay = "";
  bool novoCalculo = true;
  String resultado = "200";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(22, 22, 22, 1),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                        calculoDisplay,
                        style: textStyleCalculoDisplay,
                    ),
                  ),

                  Text(
                    "123.90",
                    style: textStyleResultadoDisplay,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(27, 27, 27, 1),
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
                                onPressed: () => _limpar(),
                                style: buttonStyle,
                                child: Text("C",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("7"),
                                style: buttonStyle,
                                child: Text(
                                  "7",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("4"),
                                style: buttonStyle,
                                child: Text(
                                  "4",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("1"),
                                style: buttonStyle,
                                child: Text(
                                  "1",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("00"),
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
                                onPressed: () => _addValor("8"),
                                style: buttonStyle,
                                child: Text(
                                  "8",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("5"),
                                style: buttonStyle,
                                child: Text(
                                  "5",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("2"),
                                style: buttonStyle,
                                child: Text(
                                  "2",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("0"),
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
                                onPressed: () => _addValor("9"),
                                style: buttonStyle,
                                child: Text(
                                  "9",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("6"),
                                style: buttonStyle,
                                child: Text(
                                  "6",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("3"),
                                style: buttonStyle,
                                child: Text(
                                  "3",
                                  style: textStyle,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _addValor("."),
                                style: buttonStyle,
                                child: Text(
                                  ".",
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
                                onPressed: () => calculoDisplay.isNotEmpty ? _addOperador("/") : "",
                                style: buttonStyle,
                                child: Text(
                                  "/",
                                  style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => calculoDisplay.isNotEmpty ?  _addOperador("*") : "",
                                style: buttonStyle,
                                child: Text(
                                  "*",
                                  style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => calculoDisplay.isNotEmpty ?  _addOperador("+") : "",
                                style: buttonStyle,
                                child: Text(
                                  "+",
                                  style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => calculoDisplay.isNotEmpty ?  _addOperador("-") : "",
                                style: buttonStyle,
                                child: Text(
                                  "-", style: textStyleBasic,
                                )
                            ),
                          ),

                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => _calcular(),
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

  _addValor(String valor) {
    setState(() {
      calculoDisplay += valor.toString();
    });
    novoCalculo = false;
  }
  _addOperador(String operador){

    if(novoCalculo) {
      calculoDisplay = resultado;
      novoCalculo = false;
    }

    if(!isNumero(calculoDisplay[calculoDisplay.length - 1].toString())) {
      calculoDisplay = removerUltimoChar(calculoDisplay);
    }

    setState(() {
      calculoDisplay += operador;
    });
  }


  bool isNumero(String num) {
    return double.tryParse(num) == null ? false : true;
  }
  bool isOperador(String num) {
    return double.tryParse(num) == null ? false : true;
  }
  String removerUltimoChar(String text){
    List<String> stringList = text.split("");
    stringList.removeLast();
    return stringList.join();
  }

  _limpar() {
    setState(() {
      calculoDisplay = "";
    });
  }

  _calcular() {
    novoCalculo = true;
  }
}

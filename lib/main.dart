import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.pink, // status bar color
      statusBarBrightness: Brightness.dark,//status bar brigtness
      statusBarIconBrightness:Brightness.dark , //status barIcon Brightness
      systemNavigationBarDividerColor: Colors.greenAccent,//Navigation bar divider color
      systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icon
    ));
    return MaterialApp(

      debugShowCheckedModeBanner: false,
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
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );
  
  String calculoDisplay = "";
  bool novoCalculo = true;
  String resultadoDisplay = "0";

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
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                    child: Text(
                        calculoDisplay,
                        style: textStyleCalculoDisplay,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
                    child: Text(
                      resultadoDisplay,
                      style: textStyleResultadoDisplay,
                    ),
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
                                onPressed: () => _limparUltimo(),
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
                                onPressed: () => _limparAll(),
                                style: buttonStyle,
                                child: Text(
                                  "DEL",
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
                                onPressed: () => _calculaPorc(),
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
                                onPressed: () => _calcularOperacao(),
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
      calculoDisplay = resultadoDisplay;
      _limparResultado();
      novoCalculo = false;
    }

    if(!isNumero(calculoDisplay[calculoDisplay.length - 1].toString()) &&
        isOperador(calculoDisplay[calculoDisplay.length - 1].toString())) {
      calculoDisplay = removerUltimoChar(calculoDisplay);
    }

    setState(() {
      calculoDisplay += operador;
    });
  }


  bool isNumero(String num) {
    return double.tryParse(num) == null ? false : true;
  }
  bool isOperador(String operador) {
    return operador == "-" || operador == "+" || operador == "/" || operador == "*";
  }
  bool isOperacao(String operacao) {
    return operacao.contains("-") || operacao.contains("+") || operacao.contains("/") || operacao.contains("*");
  }
  String removerUltimoChar(String text){
    List<String> stringList = text.split("");
    stringList.removeLast();
    return stringList.join();
  }
  String removerPrimeiroChar(String text){
    List<String> stringList = text.split("");
    stringList.removeAt(0);
    return stringList.join();
  }

  _limparAll() {
    setState(() {
      calculoDisplay = "";
      resultadoDisplay = "0";
    });
  }

  _limparUltimo() {
    calculoDisplay = removerUltimoChar(calculoDisplay);
    _limparResultado();
    print(calculoDisplay);
  }

  _limparResultado(){
    setState(() {
      resultadoDisplay = "0";
    });
  }

  _calcularOperacao() {
    if(!isOperacao(calculoDisplay)) {
      resultadoDisplay = calculoDisplay;
    }else{
      Parser p = Parser();
      Expression exp = p.parse(calculoDisplay);
      ContextModel cm = ContextModel();
      resultadoDisplay = exp.evaluate(EvaluationType.VECTOR, cm).toString();
      novoCalculo = true;
    }

    setState(() {});
  }

  _mudarSinal() {
    if(calculoDisplay.startsWith("-")) {
      calculoDisplay = removerPrimeiroChar(calculoDisplay);
    } else {
      calculoDisplay = "-($calculoDisplay)";
    }
    setState(() {});
  }

  _calculaPorc(){
    _calcularOperacao();
    calculoDisplay = "($calculoDisplay) / 100";
    resultadoDisplay = (double.parse(resultadoDisplay) / 100).toString();
    novoCalculo = true;
    setState(() {});
  }

}

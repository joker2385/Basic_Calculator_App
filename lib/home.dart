import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void doAdition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domultiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doclear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Calculator',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "OUTPUT: $sum",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(hintText: "Enter the Number 1 "),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(hintText: "Enter the Number 2 "),
              controller: t2,
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text('+'),
                  color: Colors.amber,
                  onPressed: doAdition,
                ),
                MaterialButton(
                  child: const Text('-'),
                  color: Colors.green,
                  onPressed: doSubtraction,
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text('*'),
                  color: Colors.blue,
                  onPressed: domultiply,
                ),
                MaterialButton(
                  child: const Text('/'),
                  color: Colors.red,
                  onPressed: dodivision,
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: const Text('CLEAR'),
                    color: Colors.orange,
                    onPressed: doclear,
                  ),
                ])
          ],
        ),
      ),
    );
  }
}

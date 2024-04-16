import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Piano Chords'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool c_bool = false;
  bool e_bool = false;
  bool g_bool = false;
  bool d_bool = false;
  bool b_bool = false;
  bool f_bool = false;
  bool a_bool = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  static const double altura_brancas = 150;
  static const double largura_brancas = 30;
  static const double largura_pretas = 20;
  static const double altura_pretas = 100;
  String note = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      note,
                      style: TextStyle(
                          fontSize: 140,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: altura_brancas,
                      width: 240,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("C");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: c_bool ? Colors.green : null,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(8)),
                                    border: Border.all(
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("D");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: d_bool ? Colors.green : null,
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("E");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: e_bool ? Colors.green : null,
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("D#");
                              },
                              child: Container(
                                width: largura_pretas,
                                height: altura_pretas,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 90,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("F");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: f_bool ? Colors.green : null,
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 120,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("G");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: g_bool ? Colors.green : null,
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 150,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("A");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: a_bool ? Colors.green : null,
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 180,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("B");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    color: b_bool ? Colors.green : null,
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 210,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("C - oitavado");
                              },
                              child: Container(
                                width: largura_brancas,
                                height: altura_brancas,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(8)),
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("C#");
                              },
                              child: Container(
                                width: largura_pretas,
                                height: altura_pretas,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 110,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("F#");
                              },
                              child: Container(
                                width: largura_pretas,
                                height: altura_pretas,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 140,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("G#");
                              },
                              child: Container(
                                width: largura_pretas,
                                height: altura_pretas,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 170,
                            top: 0,
                            child: GestureDetector(
                              onTap: () {
                                print("A#");
                              },
                              child: Container(
                                width: largura_pretas,
                                height: altura_pretas,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          c_bool = false;
                          e_bool = false;
                          g_bool = false;
                          d_bool = false;
                          b_bool = false;
                          f_bool = false;
                          a_bool = false;

                          c_bool = true;

                          e_bool = true;
                          g_bool = true;

                          note = "C";
                        });
                      },
                      child: Text("C")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          f_bool = false;
                          a_bool = false;
                          c_bool = false;
                          e_bool = false;
                          g_bool = false;
                          d_bool = false;
                          b_bool = false;

                          b_bool = true;
                          d_bool = true;
                          g_bool = true;
                          note = "G";
                        });
                      },
                      child: Text("G")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          f_bool = false;
                          a_bool = false;
                          c_bool = false;
                          e_bool = false;
                          g_bool = false;
                          d_bool = false;
                          b_bool = false;

                          a_bool = true;
                          f_bool = true;
                          d_bool = true;
                          note = "Dm";
                        });
                      },
                      child: Text("Dm")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          f_bool = false;
                          a_bool = false;
                          c_bool = true;
                          e_bool = true;
                          g_bool = false;
                          d_bool = false;
                          b_bool = false;

                          a_bool = true;
                          f_bool = false;
                          d_bool = false;
                          note = "Am";
                        });
                      },
                      child: Text("Am")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          f_bool = true;
                          a_bool = true;
                          c_bool = true;
                          e_bool = false;
                          g_bool = false;
                          d_bool = false;
                          b_bool = false;

                          a_bool = true;
                          f_bool = true;
                          d_bool = false;
                          note = "F";
                        });
                      },
                      child: Text("F")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

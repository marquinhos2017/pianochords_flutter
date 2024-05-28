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
  List<bool> notas = List.filled(13, false); // Assumindo 7 teclas de notas

  bool buttonC = false;
  bool buttonD = false;
  bool buttonE = false;

  bool ButtonMajor = false;
  bool ButtonMenor = false;
  bool ButtonAug = false;

  int inicial = 0;
  int tipo = 0;

  int _counter = 0;
  bool c_bool = false;
  bool e_bool = false;
  bool g_bool = false;
  bool d_bool = false;
  bool b_bool = false;
  bool f_bool = false;
  bool a_bool = false;

  @override
  void initState() {
    // TODO: implement initState
    Clear();
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  static const double altura_brancas = 150;
  static const double largura_brancas = 30;
  static const double largura_pretas = 20;
  static const double altura_pretas = 100;

  void Major(int i) {
    Clear();
    setState(() {
      notas[0 + i] = true;
      notas[4 + i] = true;
      notas[7 + i] = true;
    });
  }

  void Menor(int i) {
    Clear();
    setState(() {
      notas[0 + i] = true;
      notas[3 + i] = true;
      notas[7 + i] = true;
    });
  }

  void Aug(int i) {
    Clear();
    setState(() {
      notas[0 + i] = true;
      notas[4 + i] = true;
      notas[8 + i] = true;
    });
  }

  void Clear() {
    setState(() {
      for (int i = 0; i <= 12; i++) {
        notas[i] = false;
      }
    });
  }

  String note = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              /*      SizedBox(
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
                              color: notas[0] ? Colors.green : Colors.white,
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
                              color: notas[2] ? Colors.green : null,
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
                              color: notas[4] ? Colors.green : null,
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
                          decoration: BoxDecoration(
                              color: notas[3] ? Colors.green : Colors.black,
                              border: Border.all(color: Colors.black)),
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
                              color: notas[5] ? Colors.green : null,
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
                              color: notas[7] ? Colors.green : null,
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
                              color: notas[9] ? Colors.green : null,
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
                              color: notas[11] ? Colors.green : null,
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
                              color: notas[12] ? Colors.green : null,
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
                          decoration: BoxDecoration(
                              color: notas[6] ? Colors.green : Colors.black,
                              border: Border.all(color: Colors.black)),
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
                          decoration: BoxDecoration(
                              color: notas[8] ? Colors.green : Colors.black,
                              border: Border.all(color: Colors.black)),
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
                          decoration: BoxDecoration(
                              color: notas[10] ? Colors.green : Colors.black,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
          */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              buttonC ? Colors.green : Colors.red)),
                      onPressed: () {
                        ;
                        setState(() {
                          buttonC = !buttonC;
                          buttonD = false;
                          buttonE = false;
                          inicial = 0;
                          if (tipo == 0) {
                            Major(inicial);
                          } else if (tipo == 1) {
                            Menor(inicial);
                          } else if (tipo == 2) {
                            Aug(inicial);
                          }
                        });
                      },
                      child: Text(
                        "C",
                        style: TextStyle(fontSize: 12),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              buttonD ? Colors.green : Colors.red)),
                      onPressed: () {
                        setState(() {
                          buttonD = !buttonD;
                          buttonC = false;
                          buttonE = false;
                          inicial = 2;
                          if (tipo == 0) {
                            Major(inicial);
                          } else if (tipo == 1) {
                            Menor(inicial);
                          } else if (tipo == 2) {
                            Aug(inicial);
                          }
                        });
                      },
                      child: Text("D")),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              buttonE ? Colors.green : Colors.red)),
                      onPressed: () {
                        setState(() {
                          buttonE = !buttonE;
                          buttonD = false;
                          buttonC = false;
                          inicial = 4;
                          if (tipo == 0) {
                            Major(inicial);
                          } else if (tipo == 1) {
                            Menor(inicial);
                          } else if (tipo == 2) {
                            Aug(inicial);
                          }
                        });
                      },
                      child: Text("E")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              ButtonMajor ? Colors.green : Colors.red)),
                      onPressed: () {
                        setState(() {
                          ButtonMajor = true;
                          ButtonAug = false;
                          ButtonMenor = false;

                          tipo = 0;
                        });
                        Major(inicial);
                      },
                      child: Text(
                        "Maior",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              ButtonMenor ? Colors.green : Colors.red)),
                      onPressed: () {
                        setState(() {
                          tipo = 1;
                          ButtonMenor = true;
                          ButtonAug = false;

                          ButtonMajor = false;
                        });
                        Menor(inicial);
                      },
                      child: Text("Menor")),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              ButtonAug ? Colors.green : Colors.red)),
                      onPressed: () {
                        setState(() {
                          ButtonAug = true;
                          ButtonMenor = false;
                          ButtonMajor = false;
                          tipo = 2;
                        });
                        Aug(inicial);
                      },
                      child: Text("Aumentada")),
                ],
              ),
              Column(
                children: [
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
                                  color: notas[0] ? Colors.green : Colors.white,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(8)),
                                  border: Border.all(
                                    color: Colors.green,
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
                                  color: notas[2] ? Colors.green : Colors.white,
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
                                  color: notas[4] ? Colors.green : Colors.white,
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
                              decoration: BoxDecoration(
                                  color: notas[3] ? Colors.green : Colors.black,
                                  border: Border.all(color: Colors.black)),
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
                                  color: notas[5] ? Colors.green : Colors.white,
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
                                  color: notas[7] ? Colors.green : Colors.white,
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
                                  color: notas[9] ? Colors.green : Colors.white,
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
                                  color:
                                      notas[11] ? Colors.green : Colors.white,
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
                                  color:
                                      notas[12] ? Colors.green : Colors.white,
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
                              decoration: BoxDecoration(
                                  color: notas[1] ? Colors.green : Colors.black,
                                  border: Border.all(color: Colors.black)),
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
                              decoration: BoxDecoration(
                                  color: notas[6] ? Colors.green : Colors.black,
                                  border: Border.all(color: Colors.black)),
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
                              decoration: BoxDecoration(
                                  color: notas[8] ? Colors.green : Colors.black,
                                  border: Border.all(color: Colors.black)),
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
                              decoration: BoxDecoration(
                                  color:
                                      notas[10] ? Colors.green : Colors.black,
                                  border: Border.all(color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

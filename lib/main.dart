
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KirishPage(),
    );
  }
}

class KirishPage extends StatelessWidget {
  const KirishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Qaysi Dasturlash Tilini O'rganamiz !",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Js",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstPage(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/c1.png",
                        ),
                        fit: BoxFit.cover),
                    // color: Colors.purple,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "C language",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Golang",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Python",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Dart",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "C++",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text(
          "C programming language",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 26.0,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/c.png",
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "C dasturlash tilini\n0 dan, o'rganamiz !!!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent,
                      fixedSize: Size(100.0, 15.0)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "1chi navbatda royhatdan o'ting",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Kirish",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent,
                      fixedSize: Size(200.0, 15.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoyhatPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Royhatdan O'tish",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RoyhatPage extends StatefulWidget {
  const RoyhatPage({Key? key}) : super(key: key);

  @override
  _RoyhatPageState createState() => _RoyhatPageState();
}

class _RoyhatPageState extends State<RoyhatPage> {
  var _formKey = GlobalKey<FormState>();
  var _userFnameController = TextEditingController();
  var _userSnameController = TextEditingController();
  var _userPassword2Controller = TextEditingController();
  var _userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "Royhatdan O'tish",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/av.jpg",
                  ),
                ),
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 7.0),
                        child: TextFormField(
                          validator: (text) {
                            if (text!.length < 4) {
                              return "Ismni yozish shart";
                            }
                          },
                          controller: _userFnameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            hintText: "First name...",
                            labelText: "Name",
                          ),
                        ),
                      ),
                      _userFnameController.text == "jahongir"
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20.0, right: 20.0, bottom: 7.0),
                                  child: TextFormField(
                                    validator: (text) {
                                      if (text!.length < 4) {
                                        return "Juda qisqa !!!";
                                      }
                                    },
                                    controller: _userSnameController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      hintText: "Second name...",
                                      labelText: "Surmane",
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20.0, right: 20.0, bottom: 7.0),
                                  child: TextFormField(
                                    obscureText: true,
                                    validator: (text) {
                                      if (text!.length < 4) {
                                        return "parol 8ta belgidan kam bo'lmasi";
                                      }
                                    },
                                    controller: _userPasswordController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      hintText: "Password...",
                                      labelText: "Password",
                                    ),
                                  ),
                                ),
                                _userPasswordController.text == "12345678"
                                    ? Container(
                                        margin: EdgeInsets.only(
                                            left: 20.0,
                                            right: 20.0,
                                            bottom: 7.0),
                                        child: TextFormField(
                                          obscureText: true,
                                          validator: (text) {
                                            if (text!.length < 4) {
                                              return "Error parol";
                                            }
                                          },
                                          controller: _userPassword2Controller,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            hintText: "Password",
                                            labelText: "Try Password",
                                          ),
                                        ),
                                      )
                                    : SizedBox(
                                        height: 30.0,
                                      ),
                              ],
                            )
                          : SizedBox(
                              height: 30.0,
                            ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          fixedSize: Size(150.0, 20.0),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {});
                          }
                        },
                        child: Text(
                          "Next Action",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: 30.0, left: 100.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            fixedSize: Size(150.0, 20.0),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SeconPage(),
                                  ),
                                );
                              });
                            }
                          },
                          child: Text(
                            "Next Page",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeconPage extends StatefulWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  _SeconPageState createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          Typlar.type_names,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Typlar.Type_NAMES.length,
          itemBuilder: (context, index) {
            return typlarListim(context, index);
          },
        ),
      ),
    );
  }

  Widget typlarListim(BuildContext context, index) {
    return Card(
      child: ListTile(
        title: Text(Typlar.Type_NAMES[index]),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TypeInfo(index),
            ),
          );
        },
      ),
    );
  }
}

class TypeInfo extends StatefulWidget {
  int kelganIndex;
  TypeInfo(this.kelganIndex);

  @override
  _TypeInfoState createState() => _TypeInfoState();
}

class _TypeInfoState extends State<TypeInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Row(
              children: [
                Text(
                  Typlar.Type_NAMES[widget.kelganIndex],
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                ),
              ],
            ),
            expandedHeight: 200.0,
            floating: true,
            pinned: false,
            backgroundColor: Colors.indigo,
            stretch: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        Typlar.Type_NAMES[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          Typlar.Type_Info[widget.kelganIndex],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Typlar {
  static const String type_names = "Types";
  static const List<String> Type_NAMES = [
    "Hello World",
    "If - else",
    "Switch Case",
    "Variable Types",
    "For loop",
    "While loop",
    "Funtion",
    "Array",
    "Strings",
    "Structs",
    "Basics",
  ];

  static const List<String> Type_Info = [
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
    "Har bir C dasturiga kerakli  funksiyalarni bajarishga imkon beradigan kutubxona < stdio.h > hisoblanadi.",
  ];
}

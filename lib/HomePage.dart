import 'package:flag/Detail.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List l1 = [
    "INDIA",
    "AUSTRALIA",
    "NEWZELAND",
    "ENGLAND",
    "PAKISTAN",
    "SRI LANKA",
    "CHINA",
    "RUSSIA",
    "UKRAIN",
    "AMERICA"
  ];
  List flag=[
    "🇮🇳",
    "🇦🇺",
    "🇳🇿",
    "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
    "🇵🇰",
    "🇱🇰",
    "🇨🇳",
    "🇷🇺",
    "🇺🇦",
    "🇺🇸",
  ];
  List currency=[
    "₹",
    "\$",
    "NZ\$",
    "£",
    "₨",
    "௹",
    "¥",
    "₽",
    "₴",
    "\$",

  ];
  List cap=[
    "delhi",
    "Canberra",
    "Wellington",
    "London",
    "Islamabad",
    "colombo",
    "Beijing",
    "Moscow",
    "Kyiv",
    "Washington",
  ];
  List c1 = [
    Colors.redAccent,
    Colors.deepPurpleAccent,
    Colors.lightGreenAccent,
    Colors.lightBlue,
    Colors.purple,
    Colors.grey,
    Colors.cyan,
    Colors.yellow,
    Colors.amber,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (
            AppBar(
          title: Center(child: Text("App")),
          backgroundColor: Colors.black26,
        )),
        body: SingleChildScrollView(
          child: Column(
            children: l1
                .asMap()
                .entries
                .map((e) => raj(l1[e.key], c1[e.key],flag[e.key],currency[e.key],cap[e.key]))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget raj(String name, Color c1,dynamic flag,dynamic currency,dynamic cap) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => detail(name,c1,flag,currency,cap)));
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: c1,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text("$name"),
        ),
      ),
    );
  }
}

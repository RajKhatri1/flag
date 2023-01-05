import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  String name;
  Color c1;
  dynamic flag;
  dynamic currency;
  dynamic cap;
  detail(this.name,this.c1,this.flag,this.currency,this.cap);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
          body: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                color: widget.c1,
                child: Column(
                  children: [
                    Text("${widget.name}",style: TextStyle(fontSize: 50)),
                    Text("FLAG:===${widget.flag}",style: TextStyle(fontSize: 50)),
                    Text("CURRENCY:=${widget.currency}",style: TextStyle(fontSize: 50)),
                    Text("CAPITAL:=${widget.cap}",style: TextStyle(fontSize: 50)),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}

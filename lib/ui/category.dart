import 'package:finaldesgin/ui/employee_reg.dart';
import 'package:finaldesgin/ui/sponsor.dart';
import 'package:flutter/material.dart';
//import 'package:add/utilities/constants.dart';
import 'package:finaldesgin/ui/idea_maker.dart';


class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Tabs();
  }
}

class _Tabs extends State<Tabs> {

  //ده الي هيتحطلي من البدايه


  //
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3, child:Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xffEC7063),
        title: Text("Welcome to Sign Up"),
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.wb_incandescent),
            text: "Idea Maker",
          ),
          Tab(
            icon: Icon(Icons.attach_money),
            text: "Sponsor",
          ),
          Tab(
            icon: Icon(Icons.directions_walk),
            text: "Employee",
          )
        ]),
      ),
      // yellow backgroundColor: Color(0xffF7DC6F),
      backgroundColor: Color(0xffEC7063),
      body: TabBarView(
        children: <Widget>[
          Idea_Maker(),Sponsor(),Employee()
        ],
      ),
    ),);
  }
}
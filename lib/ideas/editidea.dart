import 'package:flutter/material.dart';
import 'package:finaldesgin/controller/database_helper.dart';
import 'package:finaldesgin/ideas/dashboard.dart';
import 'package:finaldesgin/utilities/constants.dart';


class EditData extends StatefulWidget {
  List list;
  int index;
  EditData({this.index, this.list});

  @override
  EditDataState createState() => EditDataState();
}

class EditDataState extends State<EditData> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  TextEditingController _ideaTitleController = new TextEditingController();
  TextEditingController _ideaCategoryController = new TextEditingController();
  TextEditingController _fundingController = new TextEditingController();
  TextEditingController _managementTypeController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();
  TextEditingController _ideaDescriptionController =
      new TextEditingController();

//  TextEditingController _nameController  ;
//  TextEditingController _priceController  ;



  Widget _ideaTitle() {
    return Container(
      // alignment: Alignment.topCenter,
      // padding: EdgeInsets.only(bottom:10.0),
      decoration: kBoxDecorationStyle,
      height: 50.0,
      //width: 165.0,
      child: TextField(
        controller: _ideaTitleController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.title,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "First Name",
          // labelStyle: kLabelStyle,
          hintText: 'Idea Title',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _ideaCategory() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      //width: 165.0,
      child: TextField(
        controller: _ideaCategoryController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.category,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Last Name",
          //labelStyle: kLabelStyle,
          hintText: 'Idea Category',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _funding() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _fundingController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.attach_money,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "E-mail",
          //labelStyle: kLabelStyle,
          hintText: "Funding",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _managementType() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _managementTypeController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.merge_type,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Password",
          //labelStyle: kLabelStyle,
          hintText: "Management Type",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _address() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        controller: _addressController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.add_location,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "Phone",
          // labelStyle: kLabelStyle,
          hintText: "Address",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _ideaDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 150.0,
      //width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: _ideaDescriptionController,
        keyboardType: TextInputType.multiline,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        maxLines: 20,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.description,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Address",
          //labelStyle: kLabelStyle,
          hintText: "Idea Description",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

//  Widget _buildLoginBtn() {
//    return Container(
//      padding: EdgeInsets.symmetric(vertical: 25.0),
//      width: 150.0,
//      child: RaisedButton(
//        elevation: 20.0,
//        onPressed: () => print('Login Button Pressed'),
//        padding: EdgeInsets.all(15.0),
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(30.0),
//        ),
//        color: Color(0xFF0a2f52),
//        child: Text(
//          'Upload Files',
//          style: TextStyle(
//            color: Colors.white,
//            letterSpacing: 1.5,
//            fontSize: 18.0,
//            fontWeight: FontWeight.bold,
//            fontFamily: 'OpenSans',
//          ),
//        ),
//      ),
//    );
//  }

  Widget _buildLoginBtns() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 150.0,
      child: RaisedButton(
        elevation: 20.0,
        onPressed: ()
//        {
////                    databaseHelper.editData(widget.list[widget.index]['id']
////                        , _nameController.text.trim(), _priceController.text.trim());
//                    Navigator.of(context).push(new MaterialPageRoute(
//                      builder: (BuildContext context) => new Dashboard(),
//                    ));
//                  },
        {
          databaseHelper.editDataIdea(widget.list[widget.index]['id'],
              _ideaTitleController.text.trim(),
              _ideaCategoryController.text.trim(),
              _fundingController.text.trim(),
              _managementTypeController.text.trim(),
              _addressController.text.trim(),
              _ideaDescriptionController.text.trim());
          Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context) => new Dashboard(),
              )
          );
          print("Edit");
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF0a2f52),
        child: Text(
          'Edit Idea',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _ideaTitleController =
    new TextEditingController(text: widget.list[widget.index]['title']);
    _ideaCategoryController = new TextEditingController(
        text: widget.list[widget.index]['ideacatagory']);
    _fundingController =
    new TextEditingController(text: widget.list[widget.index]['funding']);
    _managementTypeController = new TextEditingController(
        text: widget.list[widget.index]['Management']);
    _addressController =
    new TextEditingController(text: widget.list[widget.index]['address']);
    _ideaDescriptionController = new TextEditingController(
        text: widget.list[widget.index]['ideaDescription']);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Idea',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Update Idea',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        centerTitle: true,
        //backgroundColor: Color(0xffEC7063),
        //backgroundColor: Color(0xFFdadada),
        //backgroundColor: Color(0xff2E86C1),
        //backgroundColor: Color(0xFF233f5c),
        backgroundColor: Colors.transparent,
        ),



        backgroundColor: Color(0xff2E86C1),

body: ListView(
  //padding: EdgeInsets.only(top: 0),
  children: <Widget>[
    Stack(
      children: <Widget>[
        /*  Container(
                padding: EdgeInsets.only(top: 150.0),
                child: ClipPath(
                  clipper: WaveClipper2(),
                  child: Container(
                    padding: EdgeInsets.only(),
                    width: double.infinity,
                    height: 485,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
//                        Color(0xff5DADE2),
//                        Color(0xffF2F3F4),
                        Color(0xff2E86C1),
                        Color(0xff85C1E9)
                      ],
                    )),
                  ),
                ),
              ),

              */

        /*
                Container(
               padding: EdgeInsets.only(top: 450),
               child:  ClipPath(
                 clipper: WaveClipper3(),
                 child: Container(
                   width: double.infinity,
                   height: 350,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(colors: [
//                         Color(0xffF1C40F),
//                         Color(0xffF1C40F),
//                         Color(0xffF1C40F),
//                         Color(0xff85C1E9)

                         Color(0xFF0a2f52),
                         Color(0xff2E86C1),
                         Color(0xFFdadada),
                       ])),
                 ),
               ),
             ),*/
        ClipPath(
          clipper: WaveClipper1(),
          child: Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF0a2f52),
                    Color(0xff2E86C1),
                  ],
                )),
          ),
        ),
        Stack(
          children: <Widget>[
            SingleChildScrollView(
              //padding: EdgeInsets.only(top: 0.0),
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Container(
                    //Controlling the white place Shape
                    height: 650.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(75.0),
                        bottomRight: Radius.circular(75.0),
                        // bottomLeft: Radius.circular(75.0),
                        //   topRight: Radius.circular(75.0)
                      ),
                    ),
                    padding: EdgeInsets.all(20.0),

                    //Stack That Controlling Data In Container
                    child: Stack(
                      //primary: false,
                      //padding: EdgeInsets.only(left: 25.0, right: 20.0),
                      children: <Widget>[
                        ListView(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  1.3,
                              padding: EdgeInsets.only(top: 30.0),
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: <Widget>[
                                  // Padding(padding: EdgeInsets.only(top: 2.0)),

//                                        Row(
//                                          children: <Widget>[
//                                            _ideaTitle(),
//                                            SizedBox(
//                                              width: 10.0,
//                                            ),
//                                            _ideaCategory(),
//                                          ],
//                                        ),

                                  _ideaTitle(),

                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  _ideaCategory(),

                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  _funding(),

                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  _managementType(),

                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  _address(),

                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _ideaDescription(),

                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
//                                              _buildLoginBtn(),
//                                              SizedBox(
//                                                width: 20,
//                                              ),
                                      _buildLoginBtns(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  ],
),







//        body: Container(
//          child: ListView(
//            padding: const EdgeInsets.only(
//                top: 62, left: 12.0, right: 12.0, bottom: 12.0),
//            children: <Widget>[
//              Container(
//                height: 50,
//                child: new TextField(
//                  controller: _nameController,
//                  keyboardType: TextInputType.emailAddress,
//                  decoration: InputDecoration(
//                    labelText: 'Name',
//                    hintText: 'Product Name',
//                    icon: new Icon(Icons.email),
//                  ),
//                ),
//              ),
//              Container(
//                height: 50,
//                child: new TextField(
//                  controller: _priceController,
//                  keyboardType: TextInputType.text,
//                  decoration: InputDecoration(
//                    labelText: 'Price',
//                    hintText: 'Place your price',
//                    icon: new Icon(Icons.vpn_key),
//                  ),
//                ),
//              ),
//              new Padding(
//                padding: new EdgeInsets.only(top: 44.0),
//              ),
//              Container(
//                height: 50,
//                child: new RaisedButton(
//                  onPressed: () {
////                    databaseHelper.editData(widget.list[widget.index]['id']
////                        , _nameController.text.trim(), _priceController.text.trim());
//                    Navigator.of(context).push(new MaterialPageRoute(
//                      builder: (BuildContext context) => new Dashboard(),
//                    ));
//                  },
//                  color: Colors.blue,
//                  child: new Text(
//                    'Update',
//                    style: new TextStyle(
//                        color: Colors.white, backgroundColor: Colors.blue),
//                  ),
//                ),
//              ),
//              new Padding(
//                padding: new EdgeInsets.only(top: 44.0),
//              ),
//            ],
//          ),
//        ),




      ),
    );
  }

//  void _showDialog(){
//    showDialog(
//        context:context ,
//        builder:(BuildContext context){
//          return AlertDialog(
//            title: new Text('Failed'),
//            content:  new Text('Check your email or password'),
//            actions: <Widget>[
//              new RaisedButton(
//
//                child: new Text(
//                  'Close',
//                ),
//
//                onPressed: (){
//                  Navigator.of(context).pop();
//                },
//
//              ),
//            ],
//          );
//        }
//    );
//  }
}


class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    //امشي من البدايه علي الشمال لحد طول الكونتينر ونقص من طوله 50
    //ده كدا خط مستقيم علي الشمال
    path.lineTo(0.0, size.height);
//دلوقتي انا واقف علي الشمال عن طول الكونتينر - 50 وهعمل حاجتين
    // وهتحر من نقطتي الي نقطه الموجه الي هيا كنترول بوينت وهتجرك بعدين للاند بوينت الي هيا في نص الموجه لما تزل

    var firstEndPoint = Offset(size.width / 2 - 20, size.height - 60);

    var firstControlPoint = Offset(size.width / 2 - 150, size.height - 60);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(
        size.width, //كدا معناها ان كمل بقي خلاص لحد اخر العرض
        size.height / 2); //كده معناه ان الطول نقص منه 2

    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/*class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height/2+30);
    var firstEndPoint = Offset(size.width/2-20, size.height /2+10);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
*/
class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width / 2 - 20, size.height);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 200);
    var secondControlPoint = Offset(size.width / 2 - 20, size.height - 120);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


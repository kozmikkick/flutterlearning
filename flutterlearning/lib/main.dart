import 'package:flutter/material.dart';
import 'package:flutterlearning/cleanliness.dart' as cleanliness;
import 'package:flutterlearning/uniforms.dart' as uniforms;
import 'package:flutterlearning/product.dart' as product;
import 'package:flutterlearning/speed.dart' as speed;
import 'package:flutterlearning/submit.dart' as submit;

void main()
{
  runApp(new MaterialApp
    (
    home: new CUPSAudit(),
  ));
}

class CUPSAudit extends StatefulWidget {
  CUPSAudit({Key key}) : super(key: key);

  @override
  _CUPSAuditState createState() => _CUPSAuditState();
}

class _CUPSAuditState extends State<CUPSAudit> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    new cleanliness.Cleanliness(),
    new uniforms.Uniforms(),
    new product.Product(),
    new speed.Speed(),
    new submit.Submit(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CUPSAudit'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.tealAccent, // BottomNavigationBar Canvas Colour
        ),
        child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: new Image.asset("assets/ic_c.png"), title: Text('Cleanliness')),
          BottomNavigationBarItem(icon: new Image.asset("assets/ic_u.png"), title: Text('Uniforms')),
          BottomNavigationBarItem(icon: new Image.asset("assets/ic_p.png"), title: Text('Product')),
          BottomNavigationBarItem(icon: new Image.asset("assets/ic_s.png"), title: Text('Speed')),
          BottomNavigationBarItem(icon: new Image.asset("assets/ic_details.png"), title: Text('Submit')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.redAccent,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
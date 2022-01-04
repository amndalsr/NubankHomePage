import 'package:flutter/material.dart';
import 'package:nubank/pages/widgets/bottom_menu.dart';
import 'package:nubank/pages/widgets/card_app.dart';
import 'package:nubank/pages/widgets/cartao.dart';
import 'package:nubank/pages/widgets/item_menu_bottom.dart';
import 'package:nubank/pages/widgets/menu_app.dart';
import 'package:nubank/pages/widgets/my_app_bar.dart';

class HomePages extends StatefulWidget {
  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  late bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          MenuApp(
            top: _screenHeigth * .20,
            showMenu: _showMenu,
          ),
          AnimatedPositioned(
            top: !_showMenu ? _screenHeigth * .24 : _screenHeigth * 57,
            height: _screenHeigth * .45,
            width: MediaQuery.of(context).size.width,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: SizedBox(
              height: _screenHeigth * 0.3,
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  CardApp(
                    child: Cartao(),
                  ),
                ],
              ),
            ),
          ),
          BottomMenu(),
        ],
      ),
    );
  }
}

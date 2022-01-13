import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key? key, required this.showMenu, required this.onTap}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * .20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://camo.githubusercontent.com/aacb518f18043b313124ba77302f5d1454d3c67e3e3dd02d5fe349a0c68dedfd/68747470733a2f2f6c6f676f646f776e6c6f61642e6f72672f77702d636f6e74656e742f75706c6f6164732f323031392f30382f6e7562616e6b2d6c6f676f2d332e706e67',
                      height: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Amanda',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less, color: Colors.white,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

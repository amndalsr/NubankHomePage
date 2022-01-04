import 'package:flutter/material.dart';

import 'item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          //color: Colors.pinkAccent,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: <Widget>[
              Image.network(
                'https://imagensemoldes.com.br/wp-content/uploads/2020/08/QR-Code-PNG-1024x1024.png',
                height: 90,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(
                  text: 'Branco ',
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: '260 - Nu Pagamentos S.A',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 4,
              ),
              Text.rich(
                TextSpan(
                  text: 'Agencia ',
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: '0001',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 4,
              ),
              Text.rich(
                TextSpan(
                  text: 'Conta ',
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: '0000000-0',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: <Widget>[
                    ItemMenu(
                      icon: Icons.info_outline,
                      text: 'Me ajuda',
                    ),
                    ItemMenu(
                      icon: Icons.person_outline,
                      text: 'Perfil',
                    ),
                    ItemMenu(
                      icon: Icons.settings,
                      text: 'Configurar conta',
                    ),
                    ItemMenu(
                      icon: Icons.credit_card,
                      text: 'Configurar cartão',
                    ),
                    ItemMenu(
                      icon: Icons.store_mall_directory,
                      text: 'Pedir conta PJ',
                    ),
                    ItemMenu(
                      icon: Icons.phone_android_outlined,
                      text: 'Configuração do app',
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

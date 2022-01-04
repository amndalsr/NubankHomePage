import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0 + MediaQuery
          .of(context)
          .padding
          .bottom,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.18,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemMenuBottom(
              icon: Icons.person_add,
              text: 'Indicar amigos',
            ),
            ItemMenuBottom(
              icon: Icons.phone_android_outlined,
              text: 'Recarga de celular',
            ),
            ItemMenuBottom(
              icon: Icons.chat,
              text: 'Cobrar',
            ),
            ItemMenuBottom(
              icon: Icons.monetization_on_outlined,
              text: 'Empréstimos',
            ),
            ItemMenuBottom(
              icon: Icons.move_to_inbox,
              text: 'Depositar',
            ),
            ItemMenuBottom(
              icon: Icons.mobile_screen_share,
              text: 'Transferir',
            ),
            ItemMenuBottom(
              icon: Icons.format_align_center,
              text: 'Ajustar limite',
            ),
            ItemMenuBottom(
              icon: Icons.chrome_reader_mode,
              text: 'Pagar',
            ),
            ItemMenuBottom(
              icon: Icons.lock_open,
              text: 'Bloaquear cartão',
            ),
          ],
        ),
      ),
    );
  }
}

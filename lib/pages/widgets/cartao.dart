import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Fatura atual',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text.rich(
                                    TextSpan(text: 'R\$ 0,00'),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: 'Limite disponível ',
                                        style: TextStyle(color: Colors.grey),
                                        children: [
                                          TextSpan(text: 'R\$ 1200,00', style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'Fecha em ',
                                      style: TextStyle(color: Colors.grey),
                                      children: [
                                        TextSpan(text: '21 JAN', style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.lightGreenAccent[700],
                                  )),
                            ],
                          ),
                          width: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              )),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

AppBar appBarPadrao() {
  return AppBar(
    backgroundColor: Cores.verde2,
    title: Text(
      'LeveSabor',
      style: Tipografia.titulo4.copyWith(color: Cores.verde3),
    ),
    centerTitle: true,
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16.5,
          child: Icon(
            Icons.person,
            color: Cores.verde3,
          ),
        ),
      )
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

AppBar appBarPadrao() {
  return AppBar(
    backgroundColor: Cores.verde2,
    foregroundColor: Cores.verde3,
    title: const Text(
      'LeveSabor',
      style: Tipografia.titulo4,
    ),
    centerTitle: true,
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: CircleAvatar(
          radius: 18.0,
          backgroundColor: Cores.verde3,
          child: CircleAvatar(
            radius: 16.5,
            child: Icon(
              Icons.person,
              color: Cores.verde3,
            ),
          ),
        ),
      )
    ],
  );
}

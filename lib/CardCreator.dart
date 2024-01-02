import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

Card buildCard(String header, String subHeader, String image, String descript) {
  return Card(
    elevation: 18.0,
    shadowColor: Colors.black,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        ListTile(
            title: Text(header,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700)),
            subtitle: Text(
              subHeader,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Icon(
              Icons.favorite_outlined,
              color: Colors.black,
            )),
        Container(
          height: 200,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            descript,
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        )
      ],
    ),
  );
}

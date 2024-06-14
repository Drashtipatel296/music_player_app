import 'package:flutter/material.dart';

SliverAppBar sliverAppbar() {
  return SliverAppBar(
    backgroundColor: Colors.transparent,
    expandedHeight: 200,
    flexibleSpace: FlexibleSpaceBar(
      // title: Text('Popular Songs',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
      background: Image.asset(
        'assets/img/d1.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}

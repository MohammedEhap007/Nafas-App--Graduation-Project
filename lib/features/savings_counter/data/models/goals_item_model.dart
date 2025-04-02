import 'package:flutter/material.dart';

class GoalsItemModel {
  final String image;
  final String title;
  final IconData? icon;

  const GoalsItemModel({
    required this.image,
    required this.title,
    this.icon,
  });
}

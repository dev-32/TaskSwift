
import 'package:flutter/material.dart';
enum Levels{
  high, medium, low,
}
class Level {
  const Level(this.title, this.color);
  final String title;
  final Color color;
}
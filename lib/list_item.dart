
import 'category.dart';

class ListItem {
  const ListItem({
    required this.name,
    required this.date,
    required this.level,
});
  final String name;
  final DateTime date;
  final String level;
}
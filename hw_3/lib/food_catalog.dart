import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_3/food.dart';

class FoodCatalog extends StatefulWidget {
  final List<Food> foods;

  const FoodCatalog({super.key, required this.foods});

  @override
  State<FoodCatalog> createState() => _FoodCatalogState();
}

class _FoodCatalogState extends State<FoodCatalog> {
  int _curFood = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Column(
                  children: <Widget>[
                    Text(widget.foods[_curFood].name, style: const TextStyle(fontWeight: FontWeight.bold), maxLines: 10, overflow: TextOverflow.ellipsis),
                    Text(widget.foods[_curFood].description, maxLines: 10, overflow: TextOverflow.ellipsis),
                  ],
                )),
                Expanded(flex: 3, child: Image(image: NetworkImage(widget.foods[_curFood].url), fit: BoxFit.fill))
              ],
            ),
            Container(margin: const EdgeInsets.all(20), child: ElevatedButton(onPressed: nextFood, child: const Text('See next food!')))
          ],
        ),
      ),
    );
  }

  void nextFood() {
    setState(() {
      if (++_curFood == widget.foods.length) {
        _curFood = 0;
      }
    });
  }
}
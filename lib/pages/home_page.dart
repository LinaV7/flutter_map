import 'package:flutter/material.dart';
import '../coordinates/point_coordinates.dart';

class HomePointsPage extends StatefulWidget {
  const HomePointsPage({super.key});

  @override
  State<HomePointsPage> createState() => _HomePointsPageState();
}

class _HomePointsPageState extends State<HomePointsPage> {
  final List<ExtendedPoint> _points = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Список локаций'),
      ),
      body: ListView.builder(
          itemCount: _points.length,
          itemBuilder:  (_, i) {
            return ListTile(
              title: Text(_points[i].name),
              subtitle: Text('${_points[i].latitude} ${_points[i].longitude}'),
            );
          }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:() async {
          final result = await Navigator.pushNamed(context, '/yandex_map_page');
          if (result == null) return;
          final point = result as ExtendedPoint;
          setState(() {
            _points.add(point);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
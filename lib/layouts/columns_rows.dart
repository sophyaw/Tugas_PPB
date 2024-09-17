import 'package:flutter/material.dart';

class MyColumnsRows extends StatelessWidget {
  const MyColumnsRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column and Row'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  color: Colors.cyan,
                  child: const Icon(Icons.star, color: Colors.white),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 50,
                  color: Colors.redAccent,
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Red Container',
                  style: TextStyle(color: Color.fromARGB(255, 129, 0, 0)),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Blue Container',
                  style: TextStyle(color: Color.fromARGB(255, 28, 3, 194)),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Yellow Container',
                  style: TextStyle(color: Color.fromARGB(255, 230, 255, 2)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// sizedbox memisahkan antara kontainernya

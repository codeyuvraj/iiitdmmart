import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(3),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.white,
            child: GridTile(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
                    Card(
                      child: Row(
                        children: const [
                          Text("Calculator"),
                          Text("\$100"),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
          ),
        );
      },
    );
  }
}

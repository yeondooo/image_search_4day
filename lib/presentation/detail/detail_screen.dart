import 'package:flutter/material.dart';
import 'package:image_search_4day/domain/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;

  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('조회수: ${photo.views}회'),
      ),
      body: Column(
        children: [
          Hero(
            tag: photo.id,
            child: Image.network(
              photo.webformatURL,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('키워드: ${photo.tags}'),
          ),
        ],
      ),
    );
  }
}

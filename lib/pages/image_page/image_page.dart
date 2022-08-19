import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: Center(
      //   child: Image.asset(
      //     'assets/images/patric.jpeg',
      //     fit: BoxFit.cover,
      //     height: 200,
      //     width: 200,
      //   ),
      // ),

      // body: Center(
      //   child: Image.network(
      //     'https://static01.nyt.com/images/2019/07/29/world/29india-tiger1/merlin_143414940_ea235a98-6d46-4c74-886d-6960ddfa86e9-superJumbo.jpg',
      //     fit: BoxFit.cover,
      //   ),
      // ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl:
              'https://static01.nyt.com/images/2019/07/29/world/29india-tiger1/merlin_143414940_ea235a98-6d46-4c74-886d-6960ddfa86e9-superJumbo.jpg',
          // imageBuilder: (context, imageProvider) => Image(image: imageProvider),
          placeholder: (context, url) => const Text("Placeholder"),
          errorWidget: (context, url, error) => const Text("Error"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/button_page');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

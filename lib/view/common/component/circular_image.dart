import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CircularImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const CircularImage({
    Key? key,
    required this.imageUrl,
    this.size = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CircularImage2 extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const CircularImage2({
    Key? key,
    required this.imageUrl,
    this.radius = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: radius * 2,
          height: radius * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}

class CircularImageMock extends StatelessWidget {
  final double size;

  const CircularImageMock({
    Key? key,
    this.size = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/image/bloodmate_logo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

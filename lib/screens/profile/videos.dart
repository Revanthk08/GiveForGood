import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class videoview extends StatefulWidget {
  const videoview({super.key});

  @override
  State<videoview> createState() => _videoviewState();
}

class _videoviewState extends State<videoview> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.03 * wid),
      color: Colors.white,
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) =>
            StaggeredTile.fit(1), //cross axis cell count
        mainAxisSpacing: 8, // vertical spacing between items
        crossAxisSpacing: 8, // horizontal spacing between items
        crossAxisCount: 2, // no. of virtual columns in grid
        itemCount: 10,
        itemBuilder: (context, index) => buildImageCard(index),
      ),
    );
  }

  Widget buildImageCard(int index) => Container(
        color: Colors.white,
        // margin: EdgeInsets.all(8),
        child: Container(
          margin: EdgeInsets.all(4),
          child: ClipRRect(
              // clip the image to a circle
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index',
                fit: BoxFit.cover,
              )),
        ),
      );
}

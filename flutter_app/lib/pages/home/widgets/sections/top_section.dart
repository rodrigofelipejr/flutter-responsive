import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200)
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.asset(
                    "assets/images/image-1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: constraints.maxWidth * 0.03,
                  top: constraints.maxWidth * 0.05,
                  child: Card(
                    color: Colors.black,
                    elevation: 8.0,
                    child: Container(
                      width: 450.0,
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Aprenda Flutter com este curso",
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Bora aprender Flutter coom o professor Daniel Ciofi! Curso por apenas R\$ 22,90. Qualidade garantida.",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );

        return Container();
      },
    );
  }
}

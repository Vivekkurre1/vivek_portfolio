import 'package:flutter/material.dart';

class Screenshots extends StatelessWidget {
  const Screenshots({
    super.key,
    required this.screenshots,
    required this.isWebProject,
  });

  final List<String> screenshots;
  final bool isWebProject;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),

      child: Row(
        children: screenshots.map((screenshot) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                // show this image in a dialog
                showDialog(
                  animationStyle: AnimationStyle(
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 300),
                  ),
                  context: context,
                  builder: (context) => AlertDialog(
                    actionsPadding: const EdgeInsets.all(0),
                    contentPadding: const EdgeInsets.all(0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Screenshot'),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.close),
                          ),
                        ),
                      ],
                    ),
                    content: InteractiveViewer(
                      panEnabled: true,
                      minScale: 0.5,
                      maxScale: 6,
                      child: Image.network(
                        screenshot,
                        height: MediaQuery.of(context).size.height * 0.99,
                        width: MediaQuery.of(context).size.width * 0.99,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  screenshot,
                  height: 260,
                  width: (isWebProject) ? 400 : null,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

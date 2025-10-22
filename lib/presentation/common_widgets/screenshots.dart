import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screenshots extends StatefulWidget {
  const Screenshots({
    super.key,
    required this.themeData,
    required this.screenshots,
    required this.isWebProject,
  });
  final ThemeData themeData;
  final List<String> screenshots;
  final bool isWebProject;

  @override
  State<Screenshots> createState() => _ScreenshotsState();
}

class _ScreenshotsState extends State<Screenshots> {
  final ScrollController _scrollController = ScrollController();
  double _sliderValue = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Update slider position when user scrolls manually
      if (!_isSliding) {
        final maxScroll = _scrollController.position.maxScrollExtent;
        final scrollPos = _scrollController.position.pixels;
        setState(() {
          _sliderValue = maxScroll == 0
              ? 0
              : (scrollPos / maxScroll) * (widget.screenshots.length - 1);
        });
      }
    });
  }

  bool _isSliding = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onSliderChange(double value) {
    setState(() {
      _sliderValue = value;
      _isSliding = true;
    });
    final maxScroll = _scrollController.position.maxScrollExtent;
    final scrollTo = (value / (widget.screenshots.length - 1)) * maxScroll;
    _scrollController.jumpTo(scrollTo);
    _isSliding = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Row(
          children: [
            Text("Screenshots:", style: widget.themeData.textTheme.titleSmall),
            const SizedBox(width: 12),
            Expanded(
              child: CupertinoSlider(
                min: 0,
                max: widget.screenshots.length - 1.toDouble(),
                value: _sliderValue.clamp(0, widget.screenshots.length - 1),
                onChanged: _onSliderChange,
              ),
            ),
          ],
        ),
        Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,

            child: Row(
              children: widget.screenshots.map((screenshot) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      // show this image in a dialog
                      _onTapImage(context, screenshot);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        screenshot,
                        height: 260,
                        width: (widget.isWebProject) ? 400 : null,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> _onTapImage(BuildContext context, String screenshot) {
    return showDialog(
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
  }
}

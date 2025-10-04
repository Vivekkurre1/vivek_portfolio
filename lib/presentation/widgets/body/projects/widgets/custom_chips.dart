import 'package:flutter/material.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/helpers/helper.dart';

class CustomChips extends StatelessWidget {
  const CustomChips({
    super.key,
    required this.items,
    this.isClickable = false,
    this.links,
  });
  final List<String> items;
  final bool isClickable;
  final Map<String, String>? links;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 4,
      children: items.map((item) {
        if (isClickable && links != null && links!.containsKey(item)) {
          return InkWell(
            onTap: () => customeUrlLauncher(links![item]!),
            child: Chip(
              label: Text(
                item,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.blue.shade700,
                  decoration: TextDecoration.underline,
                ),
              ),
              backgroundColor: Colors.blue.shade50,
            ),
          );
        }
        return Chip(
          label: Text(
            item,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          backgroundColor: Colors.grey.shade200,
        );
      }).toList(),
    );
  }
}

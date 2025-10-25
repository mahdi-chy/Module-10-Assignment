import 'package:flutter/material.dart';

class FloatingCardTemplate extends StatelessWidget {
  final String headlineText;
  final String imageLink;
  final String firstLabel;
  final String secondLabel;
  final String thirdLabel;

  const FloatingCardTemplate({
    super.key,
    required this.imageLink,
    required this.firstLabel,
    required this.secondLabel,
    required this.thirdLabel,
    required this.headlineText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              elevation: 1,
              child: Image.network(
                imageLink,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          Material(
            elevation: 1,
            child: Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: LabelChip(
                          text: firstLabel,
                          icon: Icons.people,
                          iconSize: 10,
                        ),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: LabelChip(
                          text: secondLabel,
                          icon: Icons.chair_alt,
                          iconSize: 10,
                        ),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: LabelChip(
                          text: thirdLabel,
                          icon: Icons.calendar_month,
                          iconSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 12),

                  const SizedBox(height: 12),
                  Expanded(
                    child: Text(
                      headlineText,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //Spacer(),
                  const SizedBox(height: 1),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                          vertical: 1,
                          horizontal: 40,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(4),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("বিস্তারিত দেখুন "),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LabelChip extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData? icon;
  final double? iconSize;

  const LabelChip({
    super.key,
    required this.text,
    this.color,
    this.icon,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    final bg = color ?? Colors.grey.shade300;
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(color: bg),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon ?? Icons.circle_outlined, size: iconSize ?? 10),
            Flexible(
              child: Text(
                text,
                style: const TextStyle(fontSize: 8),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:anime_app/models/character.dart';
import 'package:anime_app/screens/character_images.dart';
import 'package:anime_app/screens/characters_screen.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key, required this.character});

  final Character character;

  @override
  State<TabBarWidget> createState() {
    return _TabBarState();
  }
}

class _TabBarState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    late TabController tabController = TabController(length: 2, vsync: this);

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: TabBar(
            controller: tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicator:
                const CircularTabIndicator(color: Colors.white, radius: 4),
            tabs: const [
              Tab(
                text: 'Profile',
              ),
              Tab(
                text: 'Pictures',
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              CharacterScreen(character: widget.character),
              CharacterImagesScreen(character: widget.character),
            ],
          ),
        ),
      ],
    );
  }
}

class CircularTabIndicator extends Decoration {
  const CircularTabIndicator({required this.color, required this.radius});

  final Color color;
  final double radius;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CircularPainter(color: color, radius: radius);
  }
}

class _CircularPainter extends BoxPainter {
  _CircularPainter({required this.color, required this.radius});
  final double radius;
  late Color color;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint paint;
    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, paint);
  }
}

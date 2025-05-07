import 'package:flutter/material.dart';

/// A little model for one “place → points” entry.
class PlacePointData {
  final String place;
  final String points;
  final Color backgroundColor;

  const PlacePointData({
    required this.place,
    required this.points,
    this.backgroundColor = const Color(0xFF6C23FF), // default purple
  });
}

/// A pill-style tile showing “place” on the left and “points” on the right.
class PlacePointTile extends StatelessWidget {
  final PlacePointData data;

  const PlacePointTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: data.backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(data.place, style: textStyle),
          const Spacer(),
          Text(data.points, style: textStyle),
        ],
      ),
    );
  }
}

/// A card that displays a single column of PlacePointTiles,
/// followed by an optional note at the bottom.
class SingleColumnPointsCard extends StatelessWidget {
  /// The list of place/point entries to show.
  final List<PlacePointData> entries;

  /// An optional note under the list (e.g. "1 Elimination = 1 Point").
  final String? bottomNote;

  const SingleColumnPointsCard({
    Key? key,
    required this.entries,
    this.bottomNote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // render each entry in a vertical list
            for (var entry in entries) PlacePointTile(data: entry),
            if (bottomNote != null) ...[
              const SizedBox(height: 12),
              Text(
                bottomNote!,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey[700]),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow({Key? key, required this.title, required this.value})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title:'),
        SizedBox(width: 8),
        Expanded(child: Text(value)),
      ],
    );
  }
}

class TournamentFormatCard extends StatelessWidget {
  final String game;
  final String maps;
  final String prizePool;

  const TournamentFormatCard({
    Key? key,
    required this.game,
    required this.maps,
    required this.prizePool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoRow(title: 'Game', value: game),
            const SizedBox(height: 12),
            InfoRow(title: 'Maps', value: maps),
            const SizedBox(height: 12),
            InfoRow(title: 'PrizePool', value: prizePool),
          ],
        ),
      ),
    );
  }
}

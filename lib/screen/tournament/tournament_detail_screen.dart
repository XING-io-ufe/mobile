import 'package:flutter/material.dart';

class TournamentDetailPage extends StatelessWidget {
  const TournamentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 242, 242, 242),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'PUBG MOBILE NATIONAL MASTERS',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
          bottom: TabBar(
            labelColor: const Color(0xFF6C4EE5),
            unselectedLabelColor: Colors.grey.shade600,
            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
            indicatorColor: const Color(0xFF6C4EE5),
            indicatorWeight: 3,
            tabs: const [
              Tab(text: 'Information'),
              Tab(text: 'Participant'),
              Tab(text: 'Results'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            InformationTab(),
            Center(child: Text('Participant List Here')),
            Center(child: Text('Results Here')),
          ],
        ),
      ),
    );
  }
}

class InformationTab extends StatelessWidget {
  const InformationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/logo_with_text.png',
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 24),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tournament format'),
            _InfoCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _InfoRow(label: 'Game', value: 'TPP / SQUAD'),
                  SizedBox(height: 8),
                  _InfoRow(label: 'Maps', value: 'Erangel / Miramar / Sanhok'),
                  SizedBox(height: 8),
                  _InfoRow(label: 'PrizePool', value: '10,000,000₮ / \$2,800'),
                ],
              ),
            ),
            Container(
              width: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C4EE5),
                    minimumSize: const Size.fromHeight(44),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Team Register'),
                ),
              ),
            ),
          ],
        ),

        // Schedule card
        _InfoCard(
          child: Column(
            children: const [
              _ScheduleRow(
                labelLeft: 'Registration start',
                valueLeft: '2025/03/17 23:03',
                labelRight: 'Registration end',
                valueRight: '2025/03/27 23:03',
              ),
              SizedBox(height: 16),
              _ScheduleRow(
                labelLeft: 'Tournament start',
                valueLeft: '2025/03/28 15:03',
                labelRight: 'Tournament end',
                valueRight: '2025/04/07 15:04',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final Widget child;

  const _InfoCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const SizedBox(height: 12), child],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label:',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

class _ScheduleRow extends StatelessWidget {
  final String labelLeft, valueLeft, labelRight, valueRight;
  const _ScheduleRow({
    required this.labelLeft,
    required this.valueLeft,
    required this.labelRight,
    required this.valueRight,
  });

  @override
  Widget build(BuildContext context) {
    Widget cell(String label, String value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              value,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      );
    }

    return Row(
      children: [
        Expanded(child: cell(labelLeft, valueLeft)),
        const SizedBox(width: 16),
        Expanded(child: cell(labelRight, valueRight)),
      ],
    );
  }
}

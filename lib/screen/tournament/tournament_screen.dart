import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/point_system_card.dart';
import 'package:flutter_application_2/components/tournament_dormat_cart.dart';
import 'package:flutter_application_2/theme/io_colors.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('PUBG MOBILE NATIONAL MASTERS-2025'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () => Navigator.of(context).pop(),
          ),
          bottom: TabBar(
            padding: EdgeInsets.zero,
            labelColor: Colors.purple,
            indicatorColor: Colors.purple,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.zero,
            tabs: [
              Tab(child: Text('Information')),
              Tab(child: Text('Participant')),
              Tab(child: Text('Results')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/tournament-background.jpeg',
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tournament format'),
                            TournamentFormatCard(
                              game: 'TPP / SQUAD',
                              maps: 'Erangel / Miramar / Sanhok',
                              prizePool: '10,000,000₮ / 2,800\$',
                            ),
                            SizedBox(height: 30),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  /* TODO */
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 72,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 2,
                                ),
                                child: Text(
                                  'Team Register',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text('Point system'),
                            SingleColumnPointsCard(
                              entries: const [
                                PlacePointData(place: '1', points: '10pts'),
                                PlacePointData(place: '2', points: '6pts'),
                                PlacePointData(place: '3', points: '5pts'),
                                PlacePointData(
                                  place: '4',
                                  points: '4pts',
                                  backgroundColor: Color(0xFF333333),
                                ),
                                PlacePointData(place: '5', points: '3pts'),
                                PlacePointData(place: '6', points: '2pts'),
                                PlacePointData(place: '7-8', points: '1pt'),
                                PlacePointData(place: '9-16', points: '0pts'),
                              ],
                              bottomNote: '1 Elimination = 1 Point',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(children: [Text('Point system')]),
            Column(
              children: [
                const Text('3'),
                Container(color: Colors.yellow, width: 300, height: 300),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

enum ExpeditionStatus { available, inProgress, done }
enum ExpeditionType { quickSearch, nearbyExploration, newHorizons}

class ExpeditionCard extends StatelessWidget {
  final ExpeditionType type;
  final String time;
  final ExpeditionStatus status;

  ExpeditionCard(this.type, this.time, this.status);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Icon(Icons.search_outlined),
                Text(time),
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_expeditionName()),
                Row(
                  children: [
                    Text('100'),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'XP',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            _buildProgress(),
          ],
        ),
      ),
    );
  }

  String _expeditionName() {
    switch(type) {
      case ExpeditionType.quickSearch:
        return 'Quick Search';
      case ExpeditionType.nearbyExploration:
        return 'Nearby Exploration';
      case ExpeditionType.newHorizons:
        return 'New Horizons';
    }
  }

  Widget _buildProgress() {
    switch (status) {
      case ExpeditionStatus.available:
        return TextButton(onPressed: () => {}, child: Text('Start'));
      case ExpeditionStatus.inProgress:
        return Padding(
          padding: const EdgeInsets.only(right: 20,),
          child: Column(
            children: [
              SizedBox(
                child: CircularProgressIndicator(),
                width: 20,
                height: 20,
              ),
              SizedBox(
                height: 8,
              ),
              Text('29s'),
            ],
          ),
        );
      case ExpeditionStatus.done:
        return TextButton(child: Text('Collect'));
    }
  }
}

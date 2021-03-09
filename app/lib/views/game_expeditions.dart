import 'package:app/components/expeditions/card.dart';
import 'package:flutter/material.dart';

class GameExpeditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('Available expedition groups: 1'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ExpeditionCard(ExpeditionType.quickSearch, '30 sec', ExpeditionStatus.available),
          ExpeditionCard(ExpeditionType.nearbyExploration, '30 sec', ExpeditionStatus.done),
          ExpeditionCard(ExpeditionType.newHorizons, '30 sec', ExpeditionStatus.inProgress),
        ],
      ),
    );
  }
}

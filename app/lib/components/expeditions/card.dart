import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:flutter/material.dart';

class ExpeditionCard extends StatelessWidget {
  final Expedition data;

  ExpeditionCard(this.data);

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
                Text(Duration(seconds: data.duration.seconds.toInt()).toString()),
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
    switch (data.category) {
      case ExpeditionCategory.EXPEDITION_CATEGORY_QUICK_SEARCH:
        return 'Quick Search';
      case ExpeditionCategory.EXPEDITION_CATEGORY_NEARBY_EXPLORATION:
        return 'Nearby Exploration';
      case ExpeditionCategory.EXPEDITION_CATEGORY_NEW_HORIZONS:
        return 'New Horizons';
    }
  }

  Widget _buildProgress() {
    switch (data.status) {
      case ExpeditionStatus.EXPEDITION_STATUS_AVAILABLE:
        return TextButton(onPressed: () => {}, child: Text('Start'));
      case ExpeditionStatus.EXPEDITION_STATUS_IN_PROGRESS:
        return Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
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
      case ExpeditionStatus.EXPEDITION_STATUS_DONE:
        return TextButton(child: Text('Collect'));
    }
  }
}

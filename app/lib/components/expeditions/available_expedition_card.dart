import 'package:app/state/models/models.dart';
import 'package:flutter/material.dart';

enum AvailableExpeditionCardAction {
  start,
}

class AvailableExpeditionCard extends StatelessWidget {
  final Expedition expedition;
  final VoidCallback onExpeditionStart;

  AvailableExpeditionCard({this.expedition, this.onExpeditionStart});

  @override
  Widget build(BuildContext context) {
    return ExpeditionCard(
      expedition: expedition,
      onTap: _onTap(context),
    );
  }

  _onTap(BuildContext context) {
    return () async {
      final result = await _buildStartDialog(context);
      switch (result) {
        case AvailableExpeditionCardAction.start:
          onExpeditionStart();
          break;
        default:
          break;
      }
    };
  }

  _buildStartDialog(BuildContext context) async {
    return showDialog<AvailableExpeditionCardAction>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, AvailableExpeditionCardAction.start);
                },
                child: Text('Start Expedition')),
          ],
        );
      },
    );
  }
}

// ExpeditionCardContent encapsulates contents visible on both,
// AvailableExpeditionCard and StartedExpeditionCard
class ExpeditionCard extends StatelessWidget {
  final Expedition expedition;
  final GestureTapCallback onTap;

  ExpeditionCard({this.expedition, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        height: 60,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                    ),
                    child: Center(
                      child: Text(
                        expedition.resourceTarget.nice,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(expedition.niceName),
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
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.access_time),
                    Text(expedition.baseDuration.toDuration().niceTime),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

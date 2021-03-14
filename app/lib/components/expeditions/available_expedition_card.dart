import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/components/expeditions/expeditions_util.dart';
import 'package:app/state/expeditions/expeditions_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

enum AvailableExpeditionCardAction {
  start,
}

class AvailableExpeditionCard extends StatelessWidget {
  final Expedition expedition;

  AvailableExpeditionCard(this.expedition);

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
          context.read<ExpeditionsBloc>().add(RequestExpeditionStart(
                expedition.expeditionId,
              ));
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
                  child: Icon(
                    Icons.search_outlined,
                    color: Theme.of(context).primaryColor,
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
                      Text(_expeditionName(expedition.category)),
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
                    Text(timeUntilDoneToText(
                      Duration(
                          seconds: expedition.baseDuration.seconds.toInt()),
                    )),
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

String _expeditionName(ExpeditionCategory category) {
  switch (category) {
    case ExpeditionCategory.EXPEDITION_CATEGORY_QUICK_SEARCH:
      return 'Quick Search';
    case ExpeditionCategory.EXPEDITION_CATEGORY_NEARBY_EXPLORATION:
      return 'Nearby Exploration';
    case ExpeditionCategory.EXPEDITION_CATEGORY_NEW_HORIZONS:
      return 'New Horizons';
  }
}

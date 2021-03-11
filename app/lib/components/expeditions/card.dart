import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/components/expeditions/bloc/expeditions_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class StartedExpeditionCard extends StatelessWidget {
  final ExpeditionState data;

  StartedExpeditionCard(this.data);

  @override
  Widget build(BuildContext context) {
    return ExpeditionCard(
      expedition: data.expedition,
      trailer: _buildProgress(),
    );
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
                child: Icon(Icons.assistant_photo),
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

class AvailableExpeditionCard extends StatelessWidget {
  final Expedition expedition;

  AvailableExpeditionCard(this.expedition);

  @override
  Widget build(BuildContext context) {
    return ExpeditionCard(
      expedition: expedition,
      trailer: TextButton(
          onPressed: () {
            context.read<ExpeditionsBloc>().add(
                  RequestExpeditionStart(expedition.expeditionId),
                );
          },
          child: Text('Start')),
    );
  }
}

// ExpeditionCardContent encapsulates contents visible on both,
// AvailableExpeditionCard and StartedExpeditionCard
class ExpeditionCard extends StatelessWidget {
  final Expedition expedition;
  final Widget trailer;

  ExpeditionCard({this.expedition, this.trailer});

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
                Text(Duration(seconds: expedition.baseDuration.seconds.toInt())
                    .toString()),
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Column(
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
            Spacer(),
            if (trailer != null) trailer,
          ],
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

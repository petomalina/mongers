import 'package:app/components/expeditions/available_expedition_card.dart';
import 'package:app/components/expeditions/started_expedition_card.dart';
import 'package:app/state/expeditions/expeditions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/state/models/models.dart';

class GameExpeditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildStartedExpeditions(),
          _buildAvailableExpeditions(),
        ],
      ),
    );
  }

  _buildAvailableExpeditions() {
    return BlocBuilder<ExpeditionsBloc, ExpeditionsState>(
      builder: (context, state) {
        final expeditions = state.availableExpeditions.values.toList();
        expeditions.sort(
              (a, b) => a.baseDuration.toDuration().compareTo(b.baseDuration.toDuration()),
        );

        return Column(
          children: [
            Text('Available Expeditions'),
            ...expeditions.map((e) {
              return AvailableExpeditionCard(
                expedition: e,
                onExpeditionStart: () {
                  context.read<ExpeditionsBloc>().add(StartExpedition(
                        e.expeditionId,
                      ));
                },
              );
            }).toList(),
          ],
        );
      },
    );
  }

  _buildStartedExpeditions() {
    return BlocBuilder<ExpeditionsBloc, ExpeditionsState>(
      builder: (context, state) {
        final expeditions = state.expeditionStates.values.toList();
        expeditions.sort(
          (a, b) => a.duration.toDuration().compareTo(b.duration.toDuration()),
        );

        return Column(
          children: [
            if (expeditions.length > 0) Text('Expeditions in Progress'),
            ...expeditions.map((e) {
              return StartedExpeditionCard(
                state: e,
                onExpeditionCollect: () {
                  context.read<ExpeditionsBloc>().add(CollectExpedition(
                        e.expedition.expeditionId,
                      ));
                },
              );
            }).toList(),
          ],
        );
      },
    );
  }
}

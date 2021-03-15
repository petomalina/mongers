import 'package:app/components/expeditions/available_expedition_card.dart';
import 'package:app/components/expeditions/started_expedition_card.dart';
import 'package:app/state/expeditions/expeditions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        return Column(
          children: [
            Text('Available Expeditions'),
            ...state.availableExpeditions.map((e) {
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
        return Column(
          children: [
            if (state.expeditionStates.length > 0)
              Text('Expeditions in Progress'),
            ...state.expeditionStates.map((e) {
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

import 'package:app/components/expeditions/bloc/expeditions_bloc.dart';
import 'package:app/components/expeditions/card.dart';
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
          children: state.availableExpeditions.map((e) {
            return AvailableExpeditionCard(e);
          }).toList(),
        );
      },
    );
  }

  _buildStartedExpeditions() {
    return BlocBuilder<ExpeditionsBloc, ExpeditionsState>(
      builder: (context, state) {
        return Column(
          children: state.expeditionStates.map((e) {
            return StartedExpeditionCard(e);
          }).toList(),
        );
      },
    );
  }
}

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
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  BlocBuilder<ExpeditionsBloc, ExpeditionsState>(builder: (context, state) {
                    return Text('Available power: ' + state.power.toString());
                  },),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          _buildExpeditions(),
        ],
      ),
    );
  }

  _buildExpeditions() {
    return BlocBuilder<ExpeditionsBloc, ExpeditionsState>(
      builder: (context, state) {
        return Column(
          children: state.expeditions.map((e) {
            return ExpeditionCard(e);
          }).toList(),
        );
      },
    );
  }
}

import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/components/expeditions/bloc/expeditions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum StartedExpeditionCardAction { boost, cancel, collect }

class StartedExpeditionCard extends StatelessWidget {
  final ExpeditionState state;

  StartedExpeditionCard(this.state);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap(context),
      child: Card(
        child: Container(
          height: 60,
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
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: StreamBuilder(
                  stream: Stream.periodic(Duration(seconds: 1)),
                  builder: (context, snapshot) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_time),
                        Text(_timeUntilDone()),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _timeUntilDone() {
    final seconds = this.state.duration.seconds.toInt() -
        DateTime.now().difference(this.state.startedAt.toDateTime()).inSeconds;
    final duration = Duration(seconds: seconds);

    String textTime = '';
    if (duration.inHours != 0) {
      textTime += '${duration.inHours}h ';
    }
    if (duration.inHours == 0 && duration.inMinutes != 0) {
      textTime += '${duration.inMinutes.remainder(Duration.minutesPerHour)}m ';
    }
    if (duration.inHours == 0 && duration.inMinutes == 0) {
      textTime += '${duration.inSeconds.remainder(Duration.secondsPerMinute)}s';
    }

    return textTime;
  }

  _onTap(BuildContext context) {
    return () async {
      final result = await _buildStartDialog(context);
      switch (result) {
        case StartedExpeditionCardAction.collect:
          context.read<ExpeditionsBloc>().add(RequestExpeditionCollect(
                state.expedition.expeditionId,
              ));
          break;
        default:
          break;
      }
    };
  }

  _buildStartDialog(BuildContext context) async {
    return showDialog<StartedExpeditionCardAction>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, StartedExpeditionCardAction.collect);
                },
                child: Text('Collect')),
          ],
        );
      },
    );
  }
}

import 'package:app/state/models/models.dart';
import 'package:flutter/material.dart';

enum StartedExpeditionCardAction { boost, cancel, collect }

class StartedExpeditionCard extends StatelessWidget {
  final ExpeditionState state;
  final VoidCallback onExpeditionCollect;

  StartedExpeditionCard({this.state, this.onExpeditionCollect});

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
                  child: Center(
                    child: Text(
                      state.expedition.resourceTarget.nice,
                      style: TextStyle(
                        color: Colors.white,
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
                      Text(state.expedition.name),
                      Row(
                        children: [
                          ...state.expedition.rewards.map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(right:6.0),
                              child: Text(e.currentValue().toString() +
                                  ' ' +
                                  e.category.nice),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: StreamBuilder(
                  stream: Stream.periodic(Duration(seconds: 1)),
                  builder: (context, snapshot) {
                    final currentDuration = state.currentDuration();
                    if (currentDuration.inSeconds > 0) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.access_time),
                          Text(state.currentDuration().niceTime),
                        ],
                      );
                    } else {
                      return Container(
                        color: Colors.green,
                        child: Center(child: Icon(Icons.done)),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onTap(BuildContext context) {
    return () async {
      final result = await _buildStartDialog(context);
      switch (result) {
        case StartedExpeditionCardAction.collect:
          onExpeditionCollect();
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

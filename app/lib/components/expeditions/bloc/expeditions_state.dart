part of 'expeditions_bloc.dart';

enum ExpeditionsStateStatus { loading, full }

class ExpeditionsState extends Equatable {
  final List<Expedition> expeditions;
  final ExpeditionsStateStatus status;
  final int power;

  ExpeditionsState._({
    this.expeditions = const [],
    this.power = 0,
    this.status = ExpeditionsStateStatus.loading,
  });

  ExpeditionsState.loading() : this._(status: ExpeditionsStateStatus.loading);

  ExpeditionsState.full(ListExpeditionsResponse res)
      : this._(
          expeditions: res.expeditions,
          power: res.power.current,
          status: ExpeditionsStateStatus.full,
        );

  @override
  List<Object> get props => [expeditions, status];
}

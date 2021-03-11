part of 'expeditions_bloc.dart';

enum ExpeditionsStateStatus { loading, full }

class ExpeditionsState extends Equatable {
  final List<Expedition> availableExpeditions;
  final List<ExpeditionState> expeditionStates;

  final ExpeditionsStateStatus status;

  ExpeditionsState._({
    this.availableExpeditions = const [],
    this.expeditionStates = const [],
    this.status = ExpeditionsStateStatus.loading,
  });

  ExpeditionsState.loading() : this._(status: ExpeditionsStateStatus.loading);

  ExpeditionsState.full(ListExpeditionsResponse res)
      : this._(
          availableExpeditions: res.availableExpeditions,
          expeditionStates: res.expeditionStates,
          status: ExpeditionsStateStatus.full,
        );

  @override
  List<Object> get props => [availableExpeditions, status];
}

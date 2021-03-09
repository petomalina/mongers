part of 'expeditions_bloc.dart';

enum ExpeditionsStateStatus { loading, full }

class ExpeditionsState extends Equatable {
  final List<Expedition> expeditions;
  final ExpeditionsStateStatus status;

  ExpeditionsState._(
      {this.expeditions = const [], this.status = ExpeditionsStateStatus.loading});

  ExpeditionsState.loading() : this._(status: ExpeditionsStateStatus.loading);

  ExpeditionsState.full(List<Expedition> ee)
      : this._(expeditions: ee, status: ExpeditionsStateStatus.full);

  @override
  List<Object> get props => [expeditions, status];
}

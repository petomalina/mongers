part of 'expeditions_bloc.dart';

enum ExpeditionsStateStatus { loading, loaded }

class ExpeditionsState extends Equatable {
  final List<Expedition> availableExpeditions;
  final List<ExpeditionState> expeditionStates;

  final ExpeditionsStateStatus status;
  final Exception exception;

  ExpeditionsState._({
    this.availableExpeditions = const [],
    this.expeditionStates = const [],
    this.status = ExpeditionsStateStatus.loading,
    this.exception,
  });

  ExpeditionsState copyWith({
    List<Expedition> availableExpeditions,
    List<ExpeditionState> expeditionStates,
    status,
    exception,
  }) {
    return ExpeditionsState._(
      availableExpeditions: availableExpeditions ?? this.availableExpeditions,
      expeditionStates: expeditionStates ?? this.expeditionStates,
      status: status ?? this.status,
      // exceptions are being deleted automatically, as they are only used
      // within snackbars and other volatile UI objects
      exception: exception ?? null,
    );
  }

  @override
  List<Object> get props =>
      [availableExpeditions, expeditionStates, status, exception];
}

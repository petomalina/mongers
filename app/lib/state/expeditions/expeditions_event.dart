part of 'expeditions_bloc.dart';

abstract class ExpeditionsEvent extends Equatable {
  const ExpeditionsEvent();

  @override
  List<Object> get props => [];
}

class ExpeditionsException extends ExpeditionsEvent {
  final Exception exception;

  ExpeditionsException(this.exception);

  @override
  List<Object> get props => [exception];
}

class ListExpeditions extends ExpeditionsEvent {
  final List<String> expeditionIDs;

  ListExpeditions(this.expeditionIDs);

  @override
  List<Object> get props => [expeditionIDs];
}

class ExpeditionsUpdated extends ExpeditionsEvent {
  final ListExpeditionsResponse update;

  ExpeditionsUpdated(this.update);

  @override
  List<Object> get props => [update];
}

class StartExpedition extends ExpeditionsEvent {
  final String expeditionId;

  StartExpedition(this.expeditionId);

  @override
  List<Object> get props => [expeditionId];
}

class RequestExpeditionStartResponse extends ExpeditionsEvent {}

class CollectExpedition extends ExpeditionsEvent {
  final String expeditionId;

  CollectExpedition(this.expeditionId);

  @override
  List<Object> get props => [expeditionId];
}

class RequestExpeditionCollectResponse extends ExpeditionsEvent {}

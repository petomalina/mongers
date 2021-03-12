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

class RequestExpeditionsUpdate extends ExpeditionsEvent {
  final List<String> expeditionIDs;

  RequestExpeditionsUpdate(this.expeditionIDs);

  @override
  List<Object> get props => [expeditionIDs];
}

class ExpeditionsUpdate extends ExpeditionsEvent {
  final ListExpeditionsResponse update;

  ExpeditionsUpdate(this.update);

  @override
  List<Object> get props => [update];
}

class RequestExpeditionStart extends ExpeditionsEvent {
  final String expeditionId;

  RequestExpeditionStart(this.expeditionId);

  @override
  List<Object> get props => [expeditionId];
}

class RequestExpeditionStartResponse extends ExpeditionsEvent {}
part of 'expeditions_bloc.dart';

abstract class ExpeditionsEvent extends Equatable {
  const ExpeditionsEvent();

  @override
  List<Object> get props => [];
}

class RequestExpeditionsUpdate extends ExpeditionsEvent {
  final List<String> expeditionIDs;

  RequestExpeditionsUpdate(this.expeditionIDs);

  @override
  List<Object> get props => [expeditionIDs];
}

class ExpeditionsUpdate extends ExpeditionsEvent {
  final List<Expedition> expeditions;

  ExpeditionsUpdate(this.expeditions);

  @override
  List<Object> get props => [expeditions];
}
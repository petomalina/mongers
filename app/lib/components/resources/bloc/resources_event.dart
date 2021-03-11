part of 'resources_bloc.dart';

abstract class ResourcesEvent extends Equatable {
  const ResourcesEvent();

  @override
  List<Object> get props => [];
}

class RequestResourcesUpdate extends ResourcesEvent {
  final List<String> resourceIDs;

  RequestResourcesUpdate(this.resourceIDs);

  @override
  List<Object> get props => [resourceIDs];
}

class ResourcesUpdate extends ResourcesEvent {
  final List<ResourceState> resources;

  ResourcesUpdate(this.resources);

  @override
  List<Object> get props => [resources];
}
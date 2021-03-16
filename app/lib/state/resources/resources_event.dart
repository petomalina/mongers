part of 'resources_bloc.dart';

abstract class ResourcesEvent extends Equatable {
  const ResourcesEvent();

  @override
  List<Object> get props => [];
}

class UpdateResources extends ResourcesEvent {
  final List<String> resourceIDs;

  UpdateResources(this.resourceIDs);

  @override
  List<Object> get props => [resourceIDs];
}

class ResourcesUpdated extends ResourcesEvent {
  final Map<String, ResourceState> resources;

  ResourcesUpdated(this.resources);

  @override
  List<Object> get props => [resources];
}
part of 'resources_bloc.dart';

enum ResourcesStateStatus { loading, full }

class ResourcesState extends Equatable {
  final List<Resource> resources;
  final ResourcesStateStatus status;

  ResourcesState._(
      {this.resources = const [], this.status = ResourcesStateStatus.loading});

  ResourcesState.loading() : this._(status: ResourcesStateStatus.loading);

  ResourcesState.full(List<Resource> rr)
      : this._(resources: rr, status: ResourcesStateStatus.full);

  @override
  List<Object> get props => [resources, status];
}

part of 'resources_bloc.dart';

enum ResourcesStateStatus { loading, ready }

class ResourcesState extends Equatable {
  final List<ResourceState> resources;
  final ResourcesStateStatus status;

  ResourcesState._(
      {this.resources = const [], this.status = ResourcesStateStatus.loading});

  ResourcesState.loading() : this._(status: ResourcesStateStatus.loading);

  ResourcesState.ready(List<ResourceState> rr)
      : this._(resources: rr, status: ResourcesStateStatus.ready);

  ResourcesState copyWith({
    List<ResourceState> resources,
    ResourcesStateStatus status,
  }) {
    return ResourcesState._(
      resources: resources ?? this.resources,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [resources, status];
}

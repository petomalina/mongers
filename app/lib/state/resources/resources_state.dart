part of 'resources_bloc.dart';

enum ResourcesStateStatus { loading, ready }

class ResourcesState extends Equatable {
  final Map<String, ResourceState> resources;
  final ResourcesStateStatus status;

  ResourcesState._(
      {this.resources = const {}, this.status = ResourcesStateStatus.loading});

  ResourcesState.loading() : this._(status: ResourcesStateStatus.loading);

  ResourcesState.ready(Map<String, ResourceState> rr)
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

  // getResource returns an existing resource or a filled zero resource
  ResourceState getResource(ResourceCategory cat) {
    final res = resources[cat.toID()];
    if (res != null) {
      return res;
    }

    return ResourceState(
      resource: Resource(
        resourceId: cat.toID(),
        value: $fixnum.Int64(0),
      ),
      timestamp: $timestamp.Timestamp.fromDateTime(DateTime.now()),
    );
  }

  @override
  List<Object> get props => [resources, status];
}

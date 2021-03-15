import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/apis/world/v1/world_service.pbgrpc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'resources_event.dart';

part 'resources_state.dart';

class ResourcesBloc extends Bloc<ResourcesEvent, ResourcesState> {
  ResourcesBloc({@required WorldServiceClient repository})
      : _repository = repository,
        super(ResourcesState.loading()) {
    add(UpdateResources([]));
  }

  final WorldServiceClient _repository;

  @override
  Stream<ResourcesState> mapEventToState(ResourcesEvent event) async* {
    if (event is UpdateResources) {
      try {
        yield ResourcesState.loading();

        final resp = await _repository.listResourcesState(ListResourcesStateRequest(
          ids: event.resourceIDs,
          playerId: 'peto',
        ));

        add(ResourcesUpdated(resp.resources));
      } catch (e) {
        print(e);
      }
    } else if (event is ResourcesUpdated) {
      yield ResourcesState.ready(event.resources);
    }
  }
}

import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/apis/world/v1/world_service.pbgrpc.dart';
import 'package:app/state/resources/resources_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'expeditions_event.dart';

part 'expeditions_state.dart';

class ExpeditionsBloc extends Bloc<ExpeditionsEvent, ExpeditionsState> {
  final WorldServiceClient _repository;
  final ResourcesBloc _resourcesBloc;

  ExpeditionsBloc({
    @required WorldServiceClient repository,
    @required ResourcesBloc resourcesBloc,
  })  : _repository = repository,
        _resourcesBloc = resourcesBloc,
        super(ExpeditionsState._(
          status: ExpeditionsStateStatus.loading,
        )) {
    add(ListExpeditions([]));
  }

  @override
  Stream<ExpeditionsState> mapEventToState(ExpeditionsEvent event) async* {
    if (event is ExpeditionsException) {
      yield* _handleExpeditionsException(event);
    } else if (event is ExpeditionsUpdated) {
      yield* _handleExpeditionsUpdated(event);
    } else if (event is ListExpeditions) {
      yield* _handleListExpeditions(event);
    } else if (event is StartExpedition) {
      yield* _handleStartExpedition(event);
    } else if (event is CollectExpedition) {
      yield* _handleCollectExpedition(event);
    }
  }

  Stream<ExpeditionsState> _handleExpeditionsException(
      ExpeditionsException e) async* {
    yield state.copyWith(
      exception: e.exception,
    );
  }

  Stream<ExpeditionsState> _handleExpeditionsUpdated(
      ExpeditionsUpdated e) async* {
    yield state.copyWith(
      status: ExpeditionsStateStatus.loaded,
      availableExpeditions: e.update.availableExpeditions,
      expeditionStates: e.update.expeditionStates,
    );

    // update resources as a result of updating the expeditions
    _resourcesBloc.add(UpdateResources([]));
  }

  Stream<ExpeditionsState> _handleListExpeditions(ListExpeditions e) async* {
    try {
      yield state.copyWith(
        status: ExpeditionsStateStatus.loading,
      );

      final resp = await _repository.listExpeditions(ListExpeditionsRequest(
        expeditionIds: e.expeditionIDs,
        playerId: 'peto',
      ));
      
      yield* _handleExpeditionsUpdated(ExpeditionsUpdated(resp));
    } catch (e) {
      yield* _handleExpeditionsException(ExpeditionsException(e));
    }
  }

  Stream<ExpeditionsState> _handleStartExpedition(StartExpedition e) async* {
    try {
      await _repository.startExpedition(StartExpeditionRequest(
        playerId: 'peto',
        expeditionId: e.expeditionId,
      ));
      
      yield* _handleListExpeditions(ListExpeditions([]));
    } catch (e) {
      yield* _handleExpeditionsException(ExpeditionsException(e));
    }
  }

  Stream<ExpeditionsState> _handleCollectExpedition(CollectExpedition e) async* {
    try {
      await _repository.collectExpedition(CollectExpeditionRequest(
        playerId: 'peto',
        expeditionId: e.expeditionId,
      ));

      yield* _handleListExpeditions(ListExpeditions([]));
    } catch (e) {
      yield* _handleExpeditionsException(ExpeditionsException(e));
    }
  }
}

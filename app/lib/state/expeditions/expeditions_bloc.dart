import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/apis/world/v1/world_service.pbgrpc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'expeditions_event.dart';

part 'expeditions_state.dart';

class ExpeditionsBloc extends Bloc<ExpeditionsEvent, ExpeditionsState> {
  ExpeditionsBloc({@required WorldServiceClient repository})
      : _repository = repository,
        super(ExpeditionsState._(
          status: ExpeditionsStateStatus.loading,
        )) {
    add(RequestExpeditionsUpdate([]));
  }

  final WorldServiceClient _repository;

  @override
  Stream<ExpeditionsState> mapEventToState(ExpeditionsEvent event) async* {
    if (event is ExpeditionsException) {
      yield state.copyWith(
        exception: event.exception,
      );
    } else if (event is RequestExpeditionsUpdate) {
      try {
        yield state.copyWith(
          status: ExpeditionsStateStatus.loading,
        );

        final resp = await _repository.listExpeditions(ListExpeditionsRequest(
          expeditionIds: event.expeditionIDs,
          playerId: 'peto',
        ));

        add(ExpeditionsUpdate(resp));
      } catch (e) {
        add(ExpeditionsException(e));
      }
    } else if (event is ExpeditionsUpdate) {
      yield state.copyWith(
        status: ExpeditionsStateStatus.loaded,
        availableExpeditions: event.update.availableExpeditions,
        expeditionStates: event.update.expeditionStates,
      );
    } else if (event is RequestExpeditionStart) {
      try {
        await _repository.startExpedition(StartExpeditionRequest(
            playerId: 'peto', expeditionId: event.expeditionId));

        // request an update of expeditions after the start
        add(RequestExpeditionsUpdate([]));
      } catch (e) {
        add(ExpeditionsException(e));
      }
    } else if (event is RequestExpeditionCollect) {
      try {
        await _repository.collectExpedition(CollectExpeditionRequest(
          playerId: 'peto',
          expeditionId: event.expeditionId,
        ));

        add(RequestExpeditionsUpdate([]));
      } catch (e) {
        add(ExpeditionsException(e));
      }
    }
  }
}

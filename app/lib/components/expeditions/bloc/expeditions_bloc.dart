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
        super(ExpeditionsState.loading()) {
    add(RequestExpeditionsUpdate([]));
  }

  final WorldServiceClient _repository;

  @override
  Stream<ExpeditionsState> mapEventToState(ExpeditionsEvent event) async* {
    if (event is RequestExpeditionsUpdate) {
      try {
        yield ExpeditionsState.loading();

        final resp = await _repository.listExpeditions(ListExpeditionsRequest(
          expeditionIds: event.expeditionIDs,
          playerId: 'peto',
        ));

        add(ExpeditionsUpdate(resp.expeditions));
      } catch (e) {
        print(e);
      }
    } else if (event is ExpeditionsUpdate) {
      yield ExpeditionsState.full(event.expeditions);
    }
  }
}

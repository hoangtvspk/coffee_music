import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/album/album.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/usecases/get_new_releases.dart';
import '../../domain/usecases/get_user_playlists.dart';
import '../../../../core/usecase/usecase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNewReleases _getNewReleases;
  final GetUserPlaylists _getUserPlaylists;

  HomeBloc({
    required GetNewReleases getNewReleases,
    required GetUserPlaylists getUserPlaylists,
  })  : _getNewReleases = getNewReleases,
        _getUserPlaylists = getUserPlaylists,
        super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const HomeState.loading());

          try {
            final newReleasesResult = await _getNewReleases(
              const PaginationParams(limit: 20),
            );
            // Handle each result independently
            final newReleases = newReleasesResult.fold(
              (failure) {
                print('HomeBloc: New releases failed: ${failure.message}');
                return <Album>[];
              },
              (success) {
                print(
                    'HomeBloc: New releases success: ${success.length} items');
                return success;
              },
            );

            print('HomeBloc: Emitting loaded state with new releases');
            emit(HomeState.loaded(
              newReleases: newReleases,
              userPlaylists: state.maybeWhen(
                loaded: (_, playlists) => playlists,
                orElse: () => [],
              ),
            ));
          } catch (e) {
            print('HomeBloc: Error in started event: $e');
            emit(HomeState.homeError(e.toString()));
          }
        },
        getNewReleases: (offset, limit) async {
          emit(const HomeState.loading());
          final result = await _getNewReleases(
            PaginationParams(
              offset: offset,
              limit: limit,
            ),
          );
          result.fold(
            (failure) => emit(HomeState.homeError(failure.message)),
            (success) => emit(HomeState.loaded(
              newReleases: success,
              userPlaylists: state.maybeWhen(
                loaded: (_, playlists) => playlists,
                orElse: () => [],
              ),
            )),
          );
        },
        getUserPlaylists: (offset, limit, userId) async {
          print('HomeBloc: Getting user playlists for user $userId');
          emit(const HomeState.loading());
          final result = await _getUserPlaylists(
            UserPaginationParams(
              offset: offset,
              limit: limit,
              userId: userId,
            ),
          );
          result.fold(
            (failure) {
              print(
                  'HomeBloc: Failed to get user playlists: ${failure.message}');
              emit(HomeState.homeError(failure.message));
            },
            (success) {
              print('HomeBloc: Got ${success.length} user playlists');
              emit(HomeState.loaded(
                newReleases: state.maybeWhen(
                  loaded: (albums, _) => albums,
                  orElse: () => [],
                ),
                userPlaylists: success,
              ));
            },
          );
        },
        homeError: (message) {
          emit(HomeState.homeError(message));
        },
      );
    });
  }
}

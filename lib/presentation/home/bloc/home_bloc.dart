import 'package:bloc/bloc.dart';
import 'package:edstem_machinetest/domain/model/movie_model.dart';
import 'package:edstem_machinetest/domain/repository/movie_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required MovieRepo movieRepo,
  })  : _movieRepo = movieRepo,
        super(HomeInitial()) {
    on<HomeGetMoviesEvent>(_homegetmovies);
    on<HomeSearchMoviesEvent>(_homeSearchEvent);
  }

  final MovieRepo _movieRepo;
  List<MovieModel> _allMovies = [];

  void _homegetmovies(HomeGetMoviesEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    List<MovieModel> movies = await _movieRepo.getMovies();
    debugPrint(movies.length.toString());
    _allMovies = movies;
    emit(HomeLoaded(movieList: _allMovies));
  }

  void _homeSearchEvent(HomeSearchMoviesEvent event, Emitter<HomeState> emit) {
    debugPrint(event.queryText);
    if (event.queryText.isEmpty) {
      emit(HomeLoaded(movieList: _allMovies));
    } else {
      final results = _allMovies
          .where((movie) =>
              movie.title.toLowerCase().contains(event.queryText.toLowerCase()))
          .toList();
      emit(HomeSearchResult(searchResults: results));
    }
  }
}

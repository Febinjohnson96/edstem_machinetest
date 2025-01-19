part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final List<MovieModel> movieList;

  const HomeLoaded({required this.movieList});

  @override
  List<Object> get props => [movieList];
}

class HomeSearchResult extends HomeState {
  final List<MovieModel> searchResults;

  const HomeSearchResult({required this.searchResults});

  @override
  List<Object> get props => [searchResults];
}

final class HomeError extends HomeState {}

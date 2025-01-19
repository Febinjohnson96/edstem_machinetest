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

final class HomeError extends HomeState {}

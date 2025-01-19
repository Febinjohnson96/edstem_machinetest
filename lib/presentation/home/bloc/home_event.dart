part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeInitialEvent extends HomeEvent {}

class HomeGetMoviesEvent extends HomeEvent {}

class HomeSearchMoviesEvent extends HomeEvent {
  final String queryText;
  const HomeSearchMoviesEvent({required this.queryText});

  @override
  List<Object> get props => [queryText];
}

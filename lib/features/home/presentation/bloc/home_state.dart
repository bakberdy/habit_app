part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.error({required String errorMessage}) = HomeIError;
  const factory HomeState.loaded(
      {required QuoteEntity quote, String? username}) = HomeLoaded;
}

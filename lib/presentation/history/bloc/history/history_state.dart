part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  // const factory HistoryState.success(List<OrderModel> histories, List<List<OrderItemModel>> orderItems) = _Success;
  const factory HistoryState.success(List<OrderModel> histories) = _Success;
  const factory HistoryState.error(String message) = _Error;
}

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poscuy/data/datasources/product_local_datasource.dart';
import 'package:poscuy/data/models/request/order_request_model.dart';
import 'package:poscuy/presentation/order/models/order_model.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const HistoryState.loading());
      final data = await ProductLocalDatasource.instance.getAllOrder();
      // final List<List<OrderItemModel>> orderItems = [];
      // for (final order in data) {
      //   final orderItem = await _fetchOrderItems(
      //       order.id!); // Panggil method untuk mengambil order items
      //   orderItems.add(orderItem);
      // }
      emit(HistoryState.success(data));
    });
  }
  // Future<List<OrderItemModel>> _fetchOrderItems(int orderId) async {
  //   final orderItems = await ProductLocalDatasource.instance
  //       .getOrderItemByOrderIdLocal(orderId);
  //   return orderItems;
  // }
}

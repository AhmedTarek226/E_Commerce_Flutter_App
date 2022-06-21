import 'package:flutter/material.dart';
import '../providers/orders.dart' as ord;
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  final ord.OrderItem order;

  const OrderItem({
    required this.order,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('\$ ${order.amount}'),
            subtitle: Text(
              DateFormat("DD MM YYYY hh:mm").format(order.dateTime),
            ),
            trailing: IconButton(icon: Icon(Icons.expand_more),onPressed: (){},),
          ),
        ],
      ),
    );
  }
}

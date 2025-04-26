

void main() {
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'status': 'ready', 'item': 'burger'},
    {'id': 2, 'status': 'canceled', 'item': 'pizza'},
    {'id': 3, 'status': 'ready', 'item': 'fries'},
    {'id': 4, 'status': 'ready', 'item': 'salad'},
    {'id': 5, 'status': 'vip', 'item': 'nuggets'},
    {'id': 6, 'status': 'ready', 'item': 'pizza'},
  ];

  for (var order in orders) {
    if (order['status'] == 'canceled') {
      continue;
    }

    if (order['status'] == "vip") {
      print('VIP Order found! Prioritize immediately.');
      break;
    }

    if (order['id'] == 4) {
      print(
        'Alert for the kitchen this order might take long time please be Faster!',
      );
    }

    switch (order['item']) {
      case 'burger':
        print('🍔 Preparing a burger...');
        break;
      case 'pizza':
        print('🍕 Preparing a pizza...');
        break;
      case 'fries':
        print('🍟 Preparing fries...');
        break;
      case 'nuggets':
        print('🍗 Preparing nuggets...');
        break;
      default:
        print('❓ Unknown item: ${order['item']}');
    }
  }
  print('');
}
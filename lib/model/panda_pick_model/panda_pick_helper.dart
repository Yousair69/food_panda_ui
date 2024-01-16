import 'package:food_panda_ui/model/panda_pick_model/panda_pick_item_model.dart';

class PandaPickHelper {

  static var statusList = [
    PandaPickItemModel( name: 'New York Pizza', deliveryPrice: '90', remainingTime: '30 min', image: "assets/images/pizza.jpg", rating: '4.8', subtitle: 'New York', totalRating: '1.2k'),
    PandaPickItemModel( name: 'Burger Lab', deliveryPrice: '50', remainingTime: '25 min', image : "assets/images/burger.jpg", rating: '4.2' , subtitle : 'Burgers', totalRating: '230'),
    PandaPickItemModel( name: 'Jans Delights', deliveryPrice: '600', remainingTime: '20 min', image : "assets/images/noddels.jpg", rating: '2.5' , subtitle :"Pakistani", totalRating: '400'),

  ];

  static PandaPickItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;

}
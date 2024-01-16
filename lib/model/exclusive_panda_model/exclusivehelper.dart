import 'package:food_panda_ui/model/exclusive_panda_model/exclusive_item_model.dart';

class ExclusiveHelper {

  static var exclusiveListModel = [
    ExclusiveItemModel( name: 'Burning Brownies', deliveryPrice: 'Free Delivery', remainingTime: '15 min', image: "assets/images/cake.jpg", totalRating: '300', subtitle: 'Backery' , rating: '4.3'),
    ExclusiveItemModel( name: 'OPTP G11', deliveryPrice: '50', remainingTime: '35 min', image : "assets/images/chicken.jpg", totalRating: '400' , subtitle : 'Burgers' , rating: '4.7'),
    ExclusiveItemModel( name: 'China Town', deliveryPrice: '600', remainingTime: '20 min', image : "assets/images/chinese.jpg", totalRating: '560' , subtitle :"Chinees" , rating:'2.3'),

  ];

  static ExclusiveItemModel getStatusItem(int position) {
    return exclusiveListModel[position];
  }

  static var itemCount = exclusiveListModel.length;

}
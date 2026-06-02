class DeliveryItem {
  final String imageUrl;
  final String? title; //ໃສ່ ?= ມີກະໄດ້ບໍ່ມີກະໄດ້
  final String? price;
  final String? sold;

  const DeliveryItem({
    required this.imageUrl, //ຈຳເປັນຕ້ອງມີຮູບ
    this.title,
    this.price,
    this.sold,
  });
}

class DeliveryController {
  //class ໃມ່
  static const List<DeliveryItem> items = [
    //ສາມາດເອົາລາຍການນີ້ໄປໃຊ້ໄດ້ເລີຍໂດຍບໍ່ຕ້ອງສ້າງ Object ໃໝ່
    DeliveryItem(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAOVRyjcQfYYW4EkeqFxDr95Oa_-4Q2XTMtQ&s',
    ),
    DeliveryItem(
      imageUrl:
          'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
    ),
    DeliveryItem(
      imageUrl:
          'https://www.shutterstock.com/image-photo/detail-shot-pouring-matcha-glass-260nw-2762965737.jpg',
      title: 'Lecafe Chez Nous (ເລຄາເຟ່)',
      price: 'K125,000',
      sold: 'ຂາຍແລ້ວ: 99+',
    ),
    DeliveryItem(
      imageUrl:
          'https://www.shutterstock.com/image-photo/detail-shot-pouring-matcha-glass-260nw-2762965737.jpg',
      title: 'Lecafe Chez Nous (ເລຄາເຟ່)',
      price: 'K125,000',
      sold: 'ຂາຍແລ້ວ: 99+',
    ),
  ];
}

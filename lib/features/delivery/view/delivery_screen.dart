import 'package:flutter/material.dart';
import '../controller/delivery_controller.dart';
import '../widget/delivery_card.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Delivery'),
        backgroundColor: const Color.fromARGB(255, 151, 222, 154),
      ),
      body: ListView.builder(
        //ເລື່ອນຂື້ນລົງ
        itemCount: DeliveryController.items.length,
        itemBuilder: (context, index) {
          //ລູບເຮັດວຽກຊ້ຳ,ເລີ່ມຈາກ0
          return DeliveryCard(
            item: DeliveryController.items[index],
          ); //ດຶງຂໍມູນເທື່ອລະອັນມາສະແດງ
        },
      ),
    );
  }
}

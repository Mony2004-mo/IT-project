import 'package:flutter/material.dart';
import '../controller/delivery_controller.dart';

class DeliveryCard extends StatelessWidget {
  final DeliveryItem item;

  const DeliveryCard({
    super.key,
    required this.item,
  }); //ຕ້ອງການຂໍ້ມູນ item (ຊະນິດ DeliveryItem) ສົ່ງເຂົ້າມາທຸກຄັ້ງ ເພື່ອເອົາມາສະແດງຜົນເທິງກາດ.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      width: double.infinity, //ຫ່າງຂອບຈໍ
      height: 200,
      decoration: BoxDecoration(
        //ຕົກແຕ່ງ
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: const [BoxShadow(color: Color.fromARGB(255, 228, 222, 222))],
      ),
      child: ClipRRect(
        //ໃຊ້ຕັດຂອບຮູບບໍ່ໃຫ້ຮູບທະລຸ
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //ໃຫ້ທຸກຢ່າງເລີ່ມຈາກຊ້າຍສຸດ
          children: [
            Image.network(
              item.imageUrl,
              width: double.infinity,
              height: item.title != null
                  ? 120
                  : 194, //ຖ້າມີຊື່ໃຫ້ຮູບສູງ 120, ຖ້າບໍ່ມີຊື່ໃຫ້ຮູບສູງ 200
              fit: BoxFit.cover,
            ),
            if (item.title != null) //ໃຊ້  if ກວດສອບ
              Padding(
                //ຫຍັບຂໍ້ຄວາມຫ່າງຈາກຂອບ card
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title!, //ກວດສອບແລ້ວວ່າບໍ່ແມ່ນ null
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, //ຫຍັບໃຫ້ price ແລະ sold ຢູ່ຊ້າຍແລະຂວາສຸດ
                      children: [
                        Text(
                          item.price!,
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item.sold!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

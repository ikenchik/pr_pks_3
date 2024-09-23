import 'package:flutter/material.dart';
import 'package:pr_pks_3/components/product.dart';
import 'package:pr_pks_3/models/prod.dart';

final List<Product> products = <Product>[
  Product(productId: 1,
      productTitle: "RTX 4060Ti Windforce OC 8G",
      imageProduct: "assets/images/4060Ti.jpg",
      productName: "RTX 4060Ti Windforce OC 8G",
      productPrice: 41540,
      productAbout: "Видеокарта Gigabyte RTX4060 WINDFORCE OC 8GB GDDR6 128-bit DPx2 HDMIx2 2FAN RTL Прогрессивная микроархитектура Ada Lovelace, фирменная технология NVIDIA DLSS 3 и полноценная реализация трасировки лучей Тензорные ядра 4-поколения: прирост производительности с DLSS 3 до 4x (по сравнению с типовой процедурой рендеринга сцены) RT-ядра 3-поколения: 2-кратный прирост производительности на операциях трассировки лучей Графический процессор GeForce RTX 4060 ВидеоОЗУ GDDR6 8 Гбайт, 128-разрядная шина памяти Система охлаждения WINDFORCE Защитная пластина на тыльной стороне печатной платы."
  ),
  Product(productId: 2,
      productTitle: "RTX 4070 EAGLE OC 12G",
      imageProduct: "assets/images/4070.jpg",
      productName: "RTX 4070 EAGLE OC 12G",
      productPrice: 84480,
      productAbout: "Видеокарта GIGABYTE GeForce RTX 4070 Ti EAGLE OC 12GB - это продукт от известного производителя GIGABYTE, который зарекомендовал себя на рынке компьютерной техники. Видеокарта оснащена видеопроцессором NVIDIA GeForce RTX 4070 Ti, который обеспечивает высокую производительность и реалистичное изображение. Техпроцесс составляет 4 нм, что гарантирует высокую скорость обработки данных и низкое энергопотребление. Объем видеопамяти составляет 12 ГБ, что позволяет работать с тяжелыми графическими приложениями и играми. Тип памяти GDDR6X обеспечивает высокую скорость передачи данных и стабильность работы."
  ),
  Product(productId: 3,
      productTitle: "RTX 4090 Windforce 24G",
      imageProduct: "assets/images/4090.jpg",
      productName: "RTX 4090 Windforce 24G",
      productPrice: 304920,
      productAbout: "Видеокарта GIGABYTE GeForce RTX 4090 WINDFORCE V2 [GV-N4090WF3V2-24GD] на основе архитектуры NVIDIA Ada Lovelace обеспечивает высокую графическую производительность для работы с программами и запуска игр на ПК. Процессор функционирует с частотой 2230 МГц, которая способна повышаться до значения 2520 МГц в режиме разгона. Видеокарта оснащена 24 ГБ памяти стандарта GDDR6X с пропускной способностью 1008 Гбайт/сек, что обеспечивает быстродействие обработки графических данных."
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ILYA MARKET",
            style: TextStyle(fontWeight: FontWeight.bold,
              letterSpacing: 6,
              fontSize: 30,
            ),
          )
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}
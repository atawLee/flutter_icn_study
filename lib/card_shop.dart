// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:icn_study/gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final List<Product> _list = [
    Product(
      title: 'Apple',
      summary: 'Fresh red apple',
      price: 1200,
      desc: """
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
API Dash is a beautiful open-source cross-platform API Client that can help you easily create & customize your API requests, visually inspect responses (full list of supported mime-types) and generate API integration code (full list) on the go.
""",
      color: Colors.red,
    ),
    Product(
      title: 'Banana',
      summary: 'Sweet banana',
      price: 800,
      desc: 'Rich in potassium and perfect for breakfast',
      color: Colors.yellow,
    ),
    Product(
      title: 'Orange',
      summary: 'Citrus orange',
      price: 1500,
      desc: 'Vitamin C rich orange for healthy lifestyle',
      color: Colors.orange,
    ),
    Product(
      title: 'Grapes',
      summary: 'Seedless grapes',
      price: 2000,
      desc: 'Sweet and seedless grapes perfect for snacking',
      color: Colors.purple,
    ),
    Product(
      title: 'Watermelon',
      summary: 'Large watermelon',
      price: 5000,
      desc: 'Perfect for summer, juicy and refreshing watermelon',
      color: Colors.green,
    ),
    Product(
      title: 'Strawberry',
      summary: 'Fresh strawberry',
      price: 2500,
      desc: 'Sweet and sour strawberry rich in vitamin C',
      color: Colors.pink,
    ),
    Product(
      title: 'Peach',
      summary: 'Soft peach',
      price: 1800,
      desc: 'Soft and fragrant peach with sweet taste',
      color: Colors.yellow,
    ),
    Product(
      title: 'Mango',
      summary: 'Tropical mango',
      price: 3000,
      desc: 'Sweet tropical mango full of flavor',
      color: Colors.amber,
    ),
    Product(
      title: 'Blueberry',
      summary: 'Healthy blueberry',
      price: 3500,
      desc: 'Antioxidant-rich blueberry for healthy diet',
      color: Colors.blue,
    ),
    Product(
      title: 'Pineapple',
      summary: 'Juicy pineapple',
      price: 4000,
      desc: 'Tropical and juicy pineapple with sweet taste',
      color: Colors.brown,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardSwiper(
          cardBuilder:
              (
                context,
                index,
                horizontalOffsetPercentage,
                verticalOffsetPercentage,
              ) {
                var product = _list[index];

                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailPage(product: product),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: product.color,
                          ),

                          child: Column(
                            children: [
                              const SizedBox(height: 5),
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(10),
                                child: Image.network(
                                  width: 200,
                                  height: 200,
                                  'https://media.istockphoto.com/id/532048136/ko/%EC%82%AC%EC%A7%84/%EC%8B%A0%EC%84%A0%ED%95%9C-%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4-%ED%9D%B0%EC%83%89-%EB%B0%94%ED%83%95%EC%97%90-%EA%B7%B8%EB%A6%BC%EC%9E%90%EC%99%80-%ED%81%B4%EB%A6%AC%ED%95%91-%EA%B2%BD%EB%A1%9C%EB%A5%BC-%ED%86%B5%ED%95%B4.jpg?s=1024x1024&w=is&k=20&c=tGdr_JYRW035yWh43Mcbbe-CDndzOt2l5QkDYV4LxZ0=',
                                ),
                              ),
                              Text(
                                product.title,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(product.summary),
                              Text(product.price.toString()),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('장바구니에 담기'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
          cardsCount: _list.length,
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SafeArea(
        child: Column(
          children: [
            Image.network(
              'https://media.istockphoto.com/id/532048136/ko/%EC%82%AC%EC%A7%84/%EC%8B%A0%EC%84%A0%ED%95%9C-%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4-%ED%9D%B0%EC%83%89-%EB%B0%94%ED%83%95%EC%97%90-%EA%B7%B8%EB%A6%BC%EC%9E%90%EC%99%80-%ED%81%B4%EB%A6%AC%ED%95%91-%EA%B2%BD%EB%A1%9C%EB%A5%BC-%ED%86%B5%ED%95%B4.jpg?s=1024x1024&w=is&k=20&c=tGdr_JYRW035yWh43Mcbbe-CDndzOt2l5QkDYV4LxZ0=',
            ),
            Expanded(child: SingleChildScrollView(child: Text(product.desc))),
            TextButton(
              onPressed: () {},
              child: Text('${product.price}원에 구입하기'),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  String title;
  String summary;
  int price;
  String desc;
  Color color;
  Product({
    required this.title,
    required this.summary,
    required this.price,
    required this.desc,
    required this.color,
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

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
  final List<Product> _list = [];

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
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red,
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
                            Text('Title'),
                            Text('Summary'),
                            Text('Price'),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('장바구니에 담기'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
          cardsCount: 8,
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
  Product({
    required this.title,
    required this.summary,
    required this.price,
    required this.desc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'summary': summary,
      'price': price,
      'desc': desc,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] as String,
      summary: map['summary'] as String,
      price: map['price'] as int,
      desc: map['desc'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}

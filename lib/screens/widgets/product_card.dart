import 'package:connect_krishi/screens/widgets/text_title.dart';
import 'package:flutter/material.dart';
import '../../model/product.dart';
import '../themes/light_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ProductScreen(),
    );
  }
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ProductCard(
        key: null,
        onSelected: (Product value) {},
        product: null,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product? product;
  final ValueChanged<Product> onSelected;

  const ProductCard({
    Key? key,
    required this.product,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: LightColor.background,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xfff8f8f8),
            blurRadius: 15,
            spreadRadius: 10,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: product?.isSelected == false ? 20 : 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: IconButton(
                icon: Icon(
                  product?.isliked == true ? Icons.favorite : Icons.favorite_border,
                  color: product?.isliked == true ? LightColor.red : LightColor.iconColor,
                ),
                onPressed: () {},
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                if (product?.isSelected == true) SizedBox(height: 15),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: LightColor.orange.withAlpha(40),
                      ),
                      Image.asset(product?.image ?? 'assets/img/logo.png')

                    ],
                  ),
                ),
                TitleText(
                  text: product?.name ?? '',
                  fontSize: product?.isSelected == true ? 16 : 14,
                ),
                TitleText(
                  text: product?.category ?? '',
                  fontSize: product?.isSelected == true ? 14 : 12,
                  color: LightColor.orange,
                ),
                TitleText(
                  text: product?.price.toString() ?? '',
                  fontSize: product?.isSelected == true ? 18 : 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

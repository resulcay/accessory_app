import 'package:accessory_app/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Aristocratic Hand Bag",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          product.title,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: kDefaultPaddin,
        ),
        Row(children: [
          RichText(
            text: TextSpan(children: [
              const TextSpan(text: "Price\n"),
              TextSpan(
                text: "\$${product.price}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ]),
          ),
          const SizedBox(
            width: kDefaultPaddin * 5,
          ),
          Expanded(
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
            ),
          )
        ])
      ]),
    );
  }
}

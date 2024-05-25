import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List colors = [Colors.red, Colors.orange, Colors.green, Colors.black];
  List images = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfNgS7L2MYlDcMN8qzWYrRQW3rFcfgmLiSdg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNYN08e6Sa5KGT4rQ6lRmEujfnxtPsuJi4fg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQDJFuv4gHu99tvei6DcqY4PpOlXL_aFZvgw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgEvwXzhI5EKHsBc6d-ZMVGoHBD8TM0kne7A&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Store.",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ) ,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Carousel Slider
            CarouselSlider(
                items: List.generate(colors.length, (index) => Container(
                  width: double.infinity,
                  height: 140,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: colors[index],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("${images[index]}")),
                      borderRadius: BorderRadius.circular(14)
                  ),
                )),
                options: CarouselOptions(
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  scrollPhysics: ScrollPhysics(),
                  autoPlayInterval: Duration(milliseconds: 2000),
                  viewportFraction: 1.0,
                )),

            Container(
                margin: EdgeInsets.only(left: 14,top: 14),
                child: Text("Top Products",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),


            const SizedBox(
              height: 20,
            ),

            Container(
              width: double.infinity,
              height: 200,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return  ProductContainer(
                      productImage: "data:image/jpeg;base64,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",
                      productName: "T-Shirt",
                      productPrice: "\$13.45",
                    );
                  },),
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 14,top: 14),
                child: Text("All Products",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),

            const SizedBox(
              height: 20,
            ),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 150/180,
              children: List.generate(10, (index) => ProductContainer(
                productImage: "data:image/jpeg;base64,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",
                productName: "T-Shirt",
                productPrice: "\$13.45",
              )),
            )

          ],
        ),
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  final String productImage;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 150,
        height: 180,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                image: NetworkImage(productImage))
        ),
        child: Container(
            margin: EdgeInsets.only(bottom: 14, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(productName, style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),),
                Text(productPrice, style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.white),),
              ],
            )),

      ),

      
    );
  }
}

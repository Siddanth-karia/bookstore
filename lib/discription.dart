import 'package:flutter/material.dart';

class productdiscriptionpage extends StatelessWidget {
  const productdiscriptionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Image Container

            Container(
              width: double.infinity,
              height: 200,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfNgS7L2MYlDcMN8qzWYrRQW3rFcfgmLiSdg&usqp=CAU"))
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Product Name", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Product Category", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                        Text("Product SBIN", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Pub. Date", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                    Text("2024-10-5", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                  ],
                ),

                SizedBox(
                  height: 30,
                  child: VerticalDivider(
                    width: 1,
                    color: Colors.grey.shade600,
                  ),
                ),

                Column(
                  children: [
                    Text("Author Name", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                    Text("Subhan Mughal", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                  ],
                ),

                SizedBox(
                  height: 30,
                  child: VerticalDivider(
                    width: 1,
                    color: Colors.grey.shade600,
                  ),
                ),

                Column(
                  children: [
                    Text("Availibility", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                    Text("In-Stock", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                  ],
                )
              ],
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description:", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),

                  Text("sgkjsdfhgjksdhfkghsdfjklghjksdgsdfkghsdjkfglsdfasdfjksdfhkhadfkhaskdfhkhasdfkhkashdfkashfdkhskadfhkhkfdshklhkgsdjgksgdajhgjasgkgaskfdjasgdjgasjgghgjkhgj")
                ],
              ),
            )

          ],
        ),
      ),
      
      bottomNavigationBar: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [

                Container(
                  width: 40,
                  height: 34,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(14), bottomLeft:Radius.circular(14))
                  ),
                  child: Icon(Icons.chevron_left ,color: Colors.white,),
                ),

                Container(
                  width: 80,
                  height: 34,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                  ),
                  child: Text("Add to Cart",style: TextStyle(color: Colors.white),),
                ),

                Container(
                  width: 40,
                  height: 34,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(14), bottomRight:Radius.circular(14))
                  ),
                  child: Icon(Icons.chevron_right,color: Colors.white,),
                ),
              ],
            ),

            Container(
                margin: EdgeInsets.only(right: 10),
                child: Text("Price: 1300", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)),

          ],
        ),
      ),
    );
  }
}

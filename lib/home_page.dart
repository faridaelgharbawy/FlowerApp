import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final List<Map<String, String>> featuredproducts = [
    {
      "title": "Greetings",
      "image": "assets/images/featured/greetings.jpg",
    },
    {
      "title": "Pinky",
      "image": "assets/images/featured/pinky.jpg",
    },
    {
      "title": "Springtime",
      "image": "assets/images/featured/springtime.jpg",
    },
    
  ];

 
  final List<Map<String, String>> products = [
    {
      "title": "Recognition",
      "image": "assets/images/featured/recognition.jpg"
    },
    {
      "title": "Beautiness",
      "image": "assets/images/featured/beautiness.jpg"
    },
    {
      "title": "Pinky",
      "image": "assets/images/featured/pinky.jpg",
    },
    {
      "title": "Delight",
      "image": "assets/images/featured/delight.jpg",
    },
    {
      "title": "Splendid",
      "image": "assets/images/featured/splendid.jpg"
    },
    {
      "title": "Springtime",
      "image": "assets/images/featured/springtime.jpg"
    },
    {
      "title": "Blossoms",
      "image": "assets/images/featured/blossoms.jpg"
    },
    {
      "title": "Greetings",
      "image": "assets/images/featured/greetings.jpg"
    },
  ];


    final List<Map<String, String>> hotoffers = [
    {
      "title": "Special Offer on Pinky Flowers!",
      "desc":  "Get yours TODAY ONLY with 20% OFF!",
      "image": "assets/images/featured/pinky.jpg",
    },
    {
      "title": "Wedding Bundle",
      "desc" : "Get the Wedding Bundle to get Greetings decoration FOR FREE!",
      "image": "assets/images/featured/greetings.jpg",
    },
    {
      "title": "30% OFF ON DELIGHT FLOWERS",
      "desc" : "Buy any two items and get DELIGHT with 30% OFF!",
      "image": "assets/images/featured/delight.jpg",
    },
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 233, 237),
      appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 239, 233, 237),
      toolbarHeight: 100,
        title: Text(
          "Our Products",
          style: GoogleFonts.poppins(
            fontSize: 29,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 19),
            Text("Featured Products",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),

            const SizedBox(height: 15),

            SizedBox(
              height: screenHeight * 0.29,
              width: screenWidth * 0.75,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: featuredproducts.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            featuredproducts[index]["image"]!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      );
                    },
                  ),

                  // dots lel pageview featured prod
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        featuredproducts.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentPage == index ? 12 : 8,
                          height: _currentPage == index ? 12 : 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index
                                ? Colors.blueAccent
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 38),

            Text("Our Collection",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),

            SizedBox(height: 15),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, 
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                            child: Image.asset(
                              product["image"] ?? "assets/images/placeholder.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product["title"]!,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add_shopping_cart),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "${product["title"]} added to the cart",
                                      ),
                                      duration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 15),

            Text("Hot Offers",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold
            )),

            SizedBox(height: 10),

            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: hotoffers.length,
                  itemBuilder: (context, index){
                    final offer = hotoffers[index];
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 3,
                
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: 
                            Image.asset(
                            offer["image"]!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover
                            )),
                
                            const SizedBox(width: 8),

                
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  Text(
                                    offer["title"]!,
                                    style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                     ),),

                                  Text(
                                    offer["desc"]!,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                    ),),

                         

                                ],
                                
                              ),
                            ), 

                       ],
                      ),

                      
                    );
                    
                
                  },
                  
                   
                  ),
              ),


            ),

             SizedBox(height: 100), 




          ],
        ),
      ),
    );
  }
}

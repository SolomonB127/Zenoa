import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zenoa/Components/drawer_tiles.dart';
import 'package:zenoa/Components/product_tile.dart';
import 'package:zenoa/models/shop.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in the shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
            child: Text(
          "Shop Page",
          style: GoogleFonts.habibi(
              textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        )),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu))),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,

      // List of Products
      body: ListView(
        children: <Widget>[
          // title
          const Text("SHOP"),
          // subtitle

          // product list
          SizedBox(
            height: 550.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  // get individual products from shop
                  final product = products[index];

                  // return as tile UI
                  return ProductTile(product: product);
                }),
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset("assets/Images/Zenoa_logo.png")),
                const SizedBox(
                  height: 25.0,
                ),
                DrawerTiles(
                    icon: Icons.home,
                    text: "Shop",
                    onTap: () => Navigator.pop(context)),
                DrawerTiles(
                    icon: Icons.trolley,
                    text: "Cart",
                    onTap: () {
                      // Pop drawer
                      Navigator.pop(context);

                      // Go to Cart Page
                      Navigator.pushNamed(context, "/cartpage");
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: DrawerTiles(
                  icon: Icons.exit_to_app,
                  text: "Exit",
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/intropage', (route) => false);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

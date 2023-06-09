import 'package:flutter/material.dart';
import 'package:flutter_application_202/cartManager.dart';
import 'productdetailscreen.dart';
import 'Product.dart';
import 'appDrawer.dart';
import 'cartScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Product> products = [
    Product(
      'JUNE',
      '\₱90',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342975837_1196715181042941_120879753685222451_n.jpg?stp=cp6_dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeE2CpG5Bv0eDauY0NXy_r-2xCa2pceMKA3EJralx4woDbBhX-T3RjjwXG-R-P4rAw45Q1vpzTIdIBKzkRP-GguF&_nc_ohc=kOWNhcYUKdMAX95j4gM&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBqa3wv6YX31jbajht4oHzZqwTcCKFhrDmrDuirBOu4mQ&oe=647F40F3',
      "JUNE is a checkered top with black flowy skirt midi dress",
      ['M'],
      'B&W Collection',
    ),
    Product(
      'NIGHT',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342042650_917329569597087_5292230384585256676_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeFMadMhQMvXMW2KSkwUdyN3t7X-K3I2BrS3tf4rcjYGtKLfmBFjDIjBvdpOVIk4QXSzm56O2_hfhGvNrvqpSR8r&_nc_ohc=OtBnOV5fB_4AX-s9T-a&_nc_ht=scontent.fklo1-1.fna&oh=00_AfAzVoOWAW3oISm8vfehJVArxWrhKNQEFZ5m3oxqOeE4eA&oe=647F3EDB',
      'NIGHT is a spaghetti midi dress in color white with black gorgeous detailing which is perfect for night party.',
      ['M', 'L'],
      'B&W Collection',
    ),
    Product(
      'MOON',
      '\₱100',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342976837_1592257871184000_2059355625064819870_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGEtvbDO6R0-sIIzwnWT5kGhR8X_mgUKm6FHxf-aBQqbrSNVPsdOVYTOIb0Xa-XEyJru_c1dIhvoINGdGp2JsuA&_nc_ohc=ABYd_D_FQ-8AX-4dPB3&_nc_ht=scontent.fklo1-1.fna&oh=00_AfCxMCpByz5ltAaCVQeIBi6vGZ_osx9eK74_aAvOCZhdwg&oe=647E447C',
      'MOON is full white midi dress with little bow in the middle and shoulders which made it look cute.',
      ['S', 'M'],
      'B&W Collection',
    ),
    Product(
      'KOOM',
      '\₱120',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342195438_248774714286101_7261996125118263747_n.jpg?stp=cp6_dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeG8S_whxfM2tuNLZKMyZjB2GzkQizOhW_wbORCLM6Fb_GT0S77ny9cabu8H4Hz8el3PabzvVhiEUKz4RN6B3qOj&_nc_ohc=TmK0dRwE0Z8AX9ME4N2&_nc_ht=scontent.fklo1-1.fna&oh=00_AfDhRDgCWAOnMXJDJMgPXolFkP9WY52q3WFmFYk1r7lFIg&oe=647F1217',
      'KOOM is long-sleeved black dress with glitter detailing thoroughout the dress.',
      ['M', 'L'],
      'B&W Collection',
    ),
    Product(
      'PIECE',
      '\₱100',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342898023_845378573699875_349091013909038247_n.jpg?stp=cp6_dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGbZoiWHl18TWC41jZQxcmxpoDINQx4YaOmgMg1DHhhowUq3XtBXDYp14QLK9pCPRsgM2_-aCv80igxKlpDTmvN&_nc_ohc=j8YPPpq12k4AX8RJ5GW&_nc_ht=scontent.fklo1-1.fna&oh=00_AfDYNxoDkZcnO_LXIlJcDCAlM_FzFdLSIV_S-mawuwQuBA&oe=647E6F58',
      'PIECE is a 3/4 sleeved midi dress with floral designs with laced neckline and sleeves',
      ['M', 'L'],
      'Spring Collection',
    ),
    Product(
      'BYUN',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342630958_211331514940134_5823112770782098409_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeH1FBATfcOkRDqNQ5sVy7P90TMxdrooxvnRMzF2uijG-R0QVgoIs3oEFJcW6BA8CekUt-ZfogY1i9_bxUOR5lBO&_nc_ohc=18L7McHlgc0AX9-w7ts&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBrqqZT-e-mg-3G-4Oe-DxWBhbE_Vxp9M9s8CtVXaiTtQ&oe=647F2220',
      'BYUN is a midi dress with colorful flowers over it.',
      ['S', 'M'],
      'Spring Collection',
    ),
    Product(
      'SUNDAY',
      '\₱100',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/343065215_3115449438757755_7549097890709998861_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeHsqYmDwpeTEuDm9fC0j-IHDhoAJWC1u98OGgAlYLW732lNg-rhVxvoJ1AKdRIthRr-bA5_nvYcHM9S6YU1QDN7&_nc_ohc=sZKJB2v6A5UAX8JuvgT&_nc_ht=scontent.fklo1-1.fna&oh=00_AfCNxOvSywPRh9Ufpk-P8rw4jRNj_5LXceMi6ji0NHBxoQ&oe=647F2E1B',
      'SUNDAY is a cute dress in white with orangey-green floral detailing.',
      ['S'],
      'Spring Collection',
    ),
    Product(
      'HAE',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342969525_3550149851931800_5388957810898168435_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEf-hkRE5dq1Y0oRxhcEjoZox-DXkjlRQKjH4NeSOVFAtb3QI61mUnh6FRr8oeAJW2pTR-ZO4gAJhOTIY3WEV4g&_nc_ohc=Gaq4Ezkeu9kAX-kPfWH&_nc_oc=AQnonycmDdTixWwyq-y4u26JfJg3O_6ddsmogsyeE6jX8VpkNEBDe9oAplZLF2eQ0ow&_nc_ht=scontent.fklo1-1.fna&oh=00_AfCGe36LbeLlI6ztQknYepnfcRo4miXHisktYdcCB5uweg&oe=647F7859',
      'HAE is stripe black and white sleeveless dress.',
      ['M', 'L'],
      'Stripes Collection',
    ),
    Product(
      'LOVE',
      '\₱90',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/343331125_1392739794913763_4530845305523266730_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGupkUCvOw851MleZa0vA5DgDQjc_PKeXaANCNz88p5dgry5m8AdVBr56Lp5DzICVr0g_j4NIzbmq9ILUuyD_b6&_nc_ohc=gsoThGTNq4IAX9TQclE&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBLgglS_0W8ocs6lc6lJRz983O_HeynZw6ng0cbpXHVMw&oe=647DB7DD',
      'LOVE is a stripe dress with big heart on the middle in pink.',
      ['L', 'XL'],
      'Stripes Collection',
    ),
    Product(
      'GOSSIP',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342980090_1593623421119890_1459457381440170222_n.jpg?stp=cp6_dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeHWfKG-2fp2-RKdNQmRf4tfZdPcIc1GF3dl09whzUYXd0-PclDvsprIQVSnX--zgDDnFi9UrFio83Kgu-Q-TiSV&_nc_ohc=tWPcVuRqs70AX8nos0i&_nc_ht=scontent.fklo1-1.fna&oh=00_AfB2xUM1CXHyX2o5rckBIlLlV_6xlyguAvGzJhzjFELjbQ&oe=647E8411',
      'GOSSIP is midi dress design in black top with a denim kind of skirt in one',
      ['S', 'M'],
      'Funky Collection',
    ),
    Product(
      'RARE',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342986729_6106631409404906_1788010717688541805_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGmHPzlGyCajZVfJolBzoAxlcmOXUcn6YWVyY5dRyfphQ4fVQr0QTTTT7DgzFz8TW63DRu6wPwg_esJKHQNw0R4&_nc_ohc=2nclsHyO8McAX8hrPCf&_nc_ht=scontent.fklo1-1.fna&oh=00_AfAYSKSBXsOzM7zGY7keJcwNpAKwbi0iA0N3jmR3drUP9g&oe=647E3581',
      'RARE is a dress that have a futuristic kind of blue.',
      ['S', 'M'],
      'Funky Collection',
    ),
  ];

  List<Product> cartItems = [];
  List<Product> filteredProducts = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
  }

  void addToCart(Product product) {
    setState(() {
      cartItems.add(product);
    });
  }

  void removeFromCart(Product product) {
    setState(() {
      cartItems.remove(product);
    });
  }

  bool isInCart(Product product) {
    return cartItems.contains(product);
  }

  void searchProducts(String searchText) {
    setState(() {
      filteredProducts = products
          .where((product) =>
              product.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) => searchProducts(value),
                    decoration: InputDecoration(
                      hintText: 'Search for products...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Show search dialog or perform search operation
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: filteredProducts.map((product) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsScreen(
                              product: product,
                              cartManager: CartManager(),
                            ),
                          ),
                        );
                      },
                      child: _buildProductItem(product),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(cartItems),
            ),
          );
        },
        label: Text('Cart (${cartItems.length})'),
        icon: Icon(Icons.shopping_cart),
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    final isInCart = this.isInCart(product);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Image.network(
          product.imageUrl,
          width: 50,
          height: 50,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator();
          },
          errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
        ),
        title: Text(
          product.name,
          style: GoogleFonts.frankRuhlLibre(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          product.description,
          style: GoogleFonts.cormorantGaramond(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: IconButton(
          icon: isInCart
              ? Icon(Icons.shopping_cart)
              : Icon(Icons.add_shopping_cart),
          onPressed: () {
            if (isInCart) {
              removeFromCart(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Removed from Cart')),
              );
            } else {
              addToCart(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Added to Cart')),
              );
            }
          },
        ),
      ),
    );
  }
}

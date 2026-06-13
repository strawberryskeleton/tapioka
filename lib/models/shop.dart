import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    // 3Q milk tea
    Food(
      name: "3Q Milk Tea",
      price: "60.00", 
      imagePath: "lib/images/3Q_milk_tea.png", 
      rating: "4.9",
      description: "Our signature 3Q Milk Tea is a fun and satisfying drink packed with texture in every sip. Made with smooth black tea blended with creamy milk, this refreshing favorite features a trio of chewy toppings: classic tapioca pearls, coconut jelly, and pudding. The combination creates a rich, silky flavor balanced by playful bites that make every mouthful exciting. Perfect for bubble tea lovers who enjoy variety, this drink delivers sweetness, creaminess, and chewiness all in one delicious cup.",
    ),

    // coconut jelly tea
    Food(
      name: "Coconut Jelly Tea", 
      price: "40.00", 
      imagePath: "lib/images/coconut_jelly_tea.png", 
      rating: "4.2",
      description: "Light, refreshing, and naturally sweet, Coconut Jelly Tea is the perfect tropical-inspired treat for any time of day. Freshly brewed tea is paired with delicate cubes of soft coconut jelly that add a subtle sweetness and satisfying texture to every sip. The clean, smooth tea flavor balances beautifully with the cool, juicy coconut notes, creating a drink that feels both energizing and indulgent. Ideal for anyone who loves lighter fruit-forward beverages, this drink offers a refreshing escape with every delicious sip.",
    ),

    // 
    Food(
      name: "Cranberry Soda", 
      price: "45.00", 
      imagePath: "lib/images/cranberry_soda.png", 
      rating: "4.7",
      description: "Bright, fizzy, and bursting with fruity flavor, Cranberry Soda is a refreshing sparkling drink with the perfect balance of sweet and tangy. Made with crisp soda water infused with bold cranberry flavor, every sip delivers a lively burst of berry goodness with an energizing carbonation kick. Its refreshing tartness makes it perfect for cooling down on warm days or pairing with your favorite snacks. Light, vibrant, and incredibly refreshing, this bubbly favorite offers a fun twist for anyone craving something fruity and sparkling.",
    ),

    // 
    Food(
      name: "Grapefruit Soda", 
      price: "55.00", 
      imagePath: "lib/images/grapefruit_soda.png", 
      rating: "4.6",
      description: "Enjoy the perfect citrus refreshment with our Grapefruit Soda, a bright and invigorating drink packed with sweet and tangy flavor. Fresh grapefruit notes blend beautifully with sparkling soda water to create a crisp, refreshing beverage with a slightly tart finish. The natural citrus aroma adds an extra layer of freshness that makes every sip feel light and energizing. Perfect for hot afternoons or whenever you need a refreshing pick-me-up, this sparkling drink delivers a delicious balance of fruitiness and bubbly satisfaction.",
    ),

    // 
    Food(
      name: "Grass Jelly Milk Tea", 
      price: "40.00", 
      imagePath: "lib/images/grass_jelly_milk_tea.png", 
      rating: "3.9",
      description: "Smooth, creamy, and uniquely refreshing, Grass Jelly Milk Tea combines rich milk tea with soft herbal grass jelly for a perfectly balanced drink experience. The fragrant tea base is blended with creamy milk for a silky texture, while the delicate grass jelly adds a subtle earthy flavor and soft bite that complements the sweetness beautifully. Popular for its refreshing taste and satisfying texture, this drink is ideal for those looking to try a classic Asian favorite. Comforting, flavorful, and deliciously smooth in every sip.",
    ),

    // 
    Food(
      name: "Hawaii Fruit Punch", 
      price: "40.00", 
      imagePath: "lib/images/hawaii_fruit_punch.png", 
      rating: "4.1",
      description: "Bring tropical island vibes to your day with our vibrant Hawaii Fruit Punch. This refreshing drink combines a colorful mix of tropical fruit flavors for a sweet, juicy explosion in every sip. Bursting with notes of pineapple, passionfruit, citrus, and exotic fruit blends, it delivers a bright and energizing flavor profile that instantly refreshes. Its smooth fruity sweetness makes it a perfect thirst-quencher on warm days or a fun drink for any occasion. Sweet, tropical, and packed with vacation-worthy flavor in every cup.",
    ),

    // 
    // Food(
    //   name: "Honey Lily Green Tea", 
    //   price: "55.00", 
    //   imagePath: "lib/images/honey_lily_green_tea.png", 
    //   rating: "4.7",
    //   description: "Delicate and naturally refreshing, Honey Lily Green Tea blends fragrant green tea with floral lily notes and smooth natural honey sweetness. The fresh tea base offers a light, clean flavor while the floral aroma creates a calming and elegant drinking experience. The addition of honey brings gentle sweetness that perfectly balances the subtle herbal character of the tea. Perfect for tea lovers who enjoy lighter, more delicate flavors, this drink feels soothing, refreshing, and naturally satisfying from the very first sip.",
    // ),

    // 
    Food(
      name: "Lemon Latte", 
      price: "50.00", 
      imagePath: "lib/images/lemon_latte.png", 
      rating: "4.2",
      description: "A refreshing twist on a creamy classic, Lemon Latte combines smooth milk with bright citrus notes for a surprisingly balanced and delicious drink. Fresh lemon flavor adds a light tangy freshness that cuts through the creamy richness, creating a drink that feels both indulgent and energizing. The silky texture and citrus aroma make every sip feel smooth yet vibrant, offering a unique flavor combination that stands out from traditional milk-based drinks. Perfect for adventurous drink lovers looking for something creamy, refreshing, and unexpectedly delightful.",
    ),

    // 
    Food(
      name: "Mango Juice Yakult", 
      price: "40.00", 
      imagePath: "lib/images/mango_juice_yakult.png", 
      rating: "4.3",
      description: "Sweet, fruity, and irresistibly refreshing, Mango Juice Yakult combines tropical mango flavor with the creamy tanginess of probiotic Yakult for a smooth and vibrant drink experience. The juicy mango delivers natural sweetness while Yakult adds a light yogurt-like richness with a refreshing tangy finish. This combination creates a balanced drink that feels both indulgent and refreshing at the same time. Perfect for fruit lovers looking for something unique, this drink offers tropical flavor, creamy texture, and a deliciously smooth finish in every sip.",
    ),

    // 
    Food(
      name: "Mountain Tea", 
      price: "60.00", 
      imagePath: "lib/images/mountain_tea.png", 
      rating: "4.9",
      description: "Clean, refreshing, and naturally soothing, Mountain Tea is inspired by the pure and crisp flavors of nature. Carefully brewed from premium tea leaves, this drink offers a smooth, light taste with delicate herbal notes that feel incredibly refreshing and balanced. Its subtle flavor profile makes it perfect for those who prefer a lighter, less sweet beverage while still enjoying the comforting aroma of freshly brewed tea. Whether enjoyed hot or iced, this calming drink delivers simple, natural refreshment that feels pure and satisfying every time.",
    ),

    // 
    Food(
      name: "Peach Ice Tea", 
      price: "40.00", 
      imagePath: "lib/images/peach_ice_tea.png", 
      rating: "4.4",
      description: "Sweet, juicy, and perfectly refreshing, Peach Ice Tea blends freshly brewed tea with the smooth fruity flavor of ripe peaches for a drink that feels light and energizing. The natural sweetness of peach pairs beautifully with the crisp tea base, creating a refreshing balance that is both fruity and satisfying. Served chilled for maximum refreshment, it's the perfect drink for warm afternoons or whenever you need a flavorful pick-me-up. Smooth, fruity, and incredibly refreshing, every sip delivers a taste of summer.",
    ),

    // 
    // Food(
    //   name: "Watermelon Oolong Latte", 
    //   price: "55.00", 
    //   imagePath: "lib/images/watermelon_oolong_latte.png", 
    //   rating: "4.2",
    //   description: "Refreshing fruit meets creamy tea in our unique Watermelon Oolong Latte. Smooth oolong tea is blended with creamy milk and infused with the juicy sweetness of fresh watermelon, creating a drink that feels both light and indulgent. The floral depth of oolong balances beautifully with watermelon’s refreshing sweetness, while the creamy finish ties everything together perfectly. This creative combination offers a refreshing twist for adventurous tea lovers looking for something different. Sweet, creamy, fragrant, and incredibly smooth with every delicious sip.",
    // ),

    // 
    Food(
      name: "Winter Melon Soda", 
      price: "45.00", 
      imagePath: "lib/images/winter_melon_soda.png", 
      rating: "4.4",
      description: "Cool, bubbly, and wonderfully refreshing, Winter Melon Soda combines the naturally sweet caramel-like flavor of winter melon with sparkling soda for a uniquely satisfying drink. The smooth sweetness of winter melon pairs beautifully with crisp carbonation, creating a refreshing beverage that feels light yet flavorful. Popular for its delicate sweetness and clean finish, this sparkling drink is perfect when you want something sweet without feeling too heavy. Refreshing, fizzy, and packed with subtle fruity goodness, it delivers pure satisfaction in every bubbly sip.",
    ),

    // 
    // Food(
    //   name: "Winter Melon Tea", 
    //   price: "50.00", 
    //   imagePath: "lib/images/winter_melon_tea.png", 
    //   rating: "3.8",
    //   description: "Simple, smooth, and incredibly refreshing, Winter Melon Tea is a beloved classic known for its naturally sweet and mellow flavor. Brewed with fragrant tea and blended with winter melon syrup, this drink delivers a rich caramel-like sweetness balanced by a clean, refreshing finish. Its light texture makes it perfect for everyday enjoyment while still offering a satisfyingly full flavor. Whether enjoyed iced on a warm day or as a comforting tea treat, this drink delivers timeless flavor and refreshing sweetness in every sip.",
    // ),
    
    
  ];

  // customer cart
  List<Food> _cart = [];


  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart (Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }

}
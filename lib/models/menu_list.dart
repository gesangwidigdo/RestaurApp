class MenuList {
  String imagePath;
  String menuName;
  String price;
  String category;

  MenuList({
    required this.imagePath,
    required this.menuName,
    required this.price,
    required this.category,
  });
}

var menuList = [
  MenuList(
    imagePath: 'lib/assets/menus/nasi_goreng.jpeg',
    menuName: 'Nasi Goreng',
    price: 'Rp 15.000',
    category: 'food',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/poutine.jpg',
    menuName: 'Poutine',
    price: 'Rp 20.000',
    category: 'food',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/spaghetti-carbonara.jpg',
    menuName: 'Spaghetti Carbonara',
    price: 'Rp 30.000',
    category: 'food',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/chicken-shawarma.jpg',
    menuName: 'Chicken Shawarma',
    price: 'Rp 18.000',
    category: 'food',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/french_toast.jpg',
    menuName: 'French Toast',
    price: 'Rp 25.000',
    category: 'food',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/iced_tea.jpeg',
    menuName: 'Iced Tea',
    price: 'Rp 5.000',
    category: 'beverages',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/oreo-milkshake.jpg',
    menuName: 'Oreo Milkshake',
    price: 'Rp 15.000',
    category: 'beverages',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/matcha-latte.jpeg',
    menuName: 'Matcha Latte',
    price: 'Rp 20.000',
    category: 'beverages',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/cappuccino.jpg',
    menuName: 'Cappuccino',
    price: 'Rp 20.000',
    category: 'beverages',
  ),
  MenuList(
    imagePath: 'lib/assets/menus/tropical-slushie.jpg',
    menuName: 'Tropical Slushie',
    price: 'Rp 15.000',
    category: 'beverages',
  ),
];

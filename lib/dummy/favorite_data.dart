class MyAdsData {
  final String date, image, name, price, view, like;

  MyAdsData({
    required this.date,
    required this.image,
    required this.name,
    required this.price,
    required this.view,
    required this.like,
  });
}

class MyFavoriteData {
  final String image, name, price, location;

  MyFavoriteData({
    required this.image,
    required this.name,
    required this.price,
    required this.location,
  });
}

List<MyAdsData> my_ads_data = [
  MyAdsData(
    date: 'From: 23 Dec 2021',
    image:
        'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_960_720.jpg',
    name: '75 Nanjung, Cimahi',
    price: '\$28,000',
    view: '459',
    like: '74',
  ),
  MyAdsData(
    date: 'From: 16 Dec 2021',
    image:
        'https://image.freepik.com/free-photo/yellow-sport-car-with-black-autotuning-road_114579-5051.jpg',
    name: 'Black Yellow Sedan Chevrolet',
    price: '\$34,000',
    view: '266',
    like: '32',
  ),
  MyAdsData(
    date: 'From: 12 Dec 2021',
    image:
        'https://image.freepik.com/free-psd/close-up-laptop-with-online-learning-landing-page_23-2148487470.jpg',
    name: 'Laptop Lazer RAM 4 GB SSD 500GB',
    price: '\$1,240',
    view: '651',
    like: '97',
  ),
  MyAdsData(
    date: 'From: 04 Dec 2021',
    image:
        'https://image.freepik.com/free-photo/tom-yum-mixed-seafood-thick-soup-hot-pot-spicy-thai-food_1150-26563.jpg',
    name: 'Tom Yum Mixed Seafood',
    price: '\$21',
    view: '863',
    like: '138',
  ),
];
List<MyFavoriteData> my_favorite_data = [
  MyFavoriteData(
    image:
        'https://image.freepik.com/free-photo/tom-yum-mixed-seafood-thick-soup-hot-pot-spicy-thai-food_1150-26563.jpg',
    name: 'Tom Yum Mixed Seafood',
    price: '\$21',
    location: 'Bangkok, Thailand',
  ),
  MyFavoriteData(
    image:
        'https://image.freepik.com/free-photo/yellow-sport-car-with-black-autotuning-road_114579-5051.jpg',
    name: 'Black Yellow Sedan Chevrolet',
    price: '\$34,000',
    location: 'Bandar Seri Begawan, Brunei',
  ),
  MyFavoriteData(
    image:
        'https://image.freepik.com/free-photo/blue-jeep-parking-public-zone_114579-4042.jpg',
    name: 'Range Rover Evoque 2021',
    price: '\$32,000',
    location: 'Penang, Malaysia',
  ),
  MyFavoriteData(
    image:
        'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_960_720.jpg',
    name: '75 Nanjung, Cimahi',
    price: '\$28,000',
    location: 'Bandung, Indonesia',
  ),
  MyFavoriteData(
    image:
        'https://image.freepik.com/free-psd/close-up-laptop-with-online-learning-landing-page_23-2148487470.jpg',
    name: 'Laptop Lazer RAM 4 GB SSD 500GB',
    price: '\$1,240',
    location: 'Woodlands, Singapore',
  ),
];

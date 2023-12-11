void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  // Displaying Original fruit details
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  // Applying a 10% discount to fruit prices
  applyPriceDiscount(fruits, 10);

  // Displaying fruit details after applying the discount
  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discntPercentage) {
  for (var fruit in fruits) {
    double orgPrice = fruit['price'];
    double discntAmount = (discntPercentage / 100) * orgPrice;
    double discntPrice = orgPrice - discntAmount;
    fruit['price'] = discntPrice;
  }
}
void main() {
  /*
   ////////////////////////////// Task 1 ///////////////////////////////
   Loop basics Print numbers from 1 to 30.
   For every number divisible by 3, print "Fizz" instead of the number.
  */
  for (int i = 0; i < 31; i++) {
    if (i % 3 == 0) {
      print("Volibear");
    } else {
      print(i);
    }
  }

  /*
    //////////////////////////// Task 2 ///////////////////////////////
    Looping over a List Given List<String> 
    fruits = ['apple', 'banana', 'mango', 'kiwi'];,
    loop through it and print each fruit with its index, like 0: apple.
  */
  List<String> fruits = ['apple', 'banana', 'mango', 'kiwi'];

  for (int i = 0; i < fruits.length; i++) {
    print("$i: ${fruits[i]}");
  }

  /*
   /////////////////////////// Task 3 ////////////////////////////////
   Accumulating from a List Given 
   List<int> scores = [55, 82, 90, 43, 77];
   calculate and print the sum and the average using a loop (no .reduce() or .fold() 
   must use a manual loop with an accumulator variable).
   */
  int sum = 0;
  List<int> scores = [55, 82, 90, 43, 77];

  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }

  double average = sum / scores.length;
  print("sum: $sum - Average: $average");

  /*
   ///////////////////////////// Task 4 ///////////////////////////////
   Looping over a Map Given:
   Map<String, int> ages = {'Sara': 20,'Omar': 23,'Laila': 19,};
   Loop through it and print each entry as "Name is Age years old". 
  */

  Map<String, int> ages = {'Sara': 20, 'Omar': 23, 'Laila': 19};

  for (var name in ages.entries) {
    print("${name.key} is ${name.value} years old");
  }
  /*
   ///////////////////////////// Task 5 //////////////////////////////
   Finding something in a List Given List<int> numbers = [12, 45, 3, 89, 21, 67];
   find and print the largest number using a loop only (no .reduce(), no sorting).
  */
  int largest = 0;
  List<int> numbers = [12, 45, 3, 89, 21, 67];

  for (int i = 0; i < numbers.length; i++) {
    if (largest < numbers[i]) {
      largest = numbers[i];
    }
  }

  print(largest);

  /*
    ////////////////////////////// Task 6 ///////////////////////////////
    List + Map together Given:
    Loop through the list,
    print each product's name and price, 
    and print the total price of all products.
     Bonus 👍
     Calculate the total cost (price * qty for each item, summed),
     and also print the name of the item with the highest total cost.
  */

  List<Map<String, dynamic>> products = [
    {'name': 'Book', 'price': 40, 'qty': 2},
    {'name': 'Pen', 'price': 5, 'qty': 10},
    {'name': 'Bag', 'price': 120, 'qty': 1},
  ];

  int total = 0;
  int totalCost = 0;
  int highestTotal = 0;

  for (var i = 0; i < products.length; i++) {
    var item = products[i];

    print('item : ${item['name']} = ${item['price']}\$ ');
    total += item['price'] as int;
    totalCost += (item['price'] as int) * (item['qty'] as int);

    if (highestTotal < (item['price'] as int) * (item['qty'] as int)) {
      highestTotal = (item['price'] as int) * (item['qty'] as int);
      print('highest Total: $highestTotal');
    }
  }
  print('Total price $total');
  print('Total Cost: $totalCost');
}

/*
 NOTE FOR ME :
  The map value type is dynamic,
  which means Dart does not know that hte item['price'] is an integer.
  It could be a number or string or something else
  So we useds "as int" 
  */
// would you tell us your story with learning english
   
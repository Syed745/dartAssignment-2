void main() {
  // ' Q.1: Create a list of names and print all names using the List method.'

  List<String> names = ['Syed', 'Bilal', 'Ali', 'Haris', 'Sajjad'];

  for (String n in names) {
    print(n);
  }

  // ' Q.2: Create an empty list of type string called days.Use the add
  //method to add names of 7 days and print all days.'

  List<String> days = [];

  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  for (String d in days) {
    print(d);
  }

  // 'Q.3: Create a list of Days and remove one by one from the end of list'

  var weekDays = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  print(weekDays);

  weekDays.removeLast();
  print(weekDays);
  weekDays.removeLast();
  print(weekDays);
  weekDays.removeLast();
  print(weekDays);
  weekDays.removeLast();
  print(weekDays);
  weekDays.removeLast();
  print(weekDays);
  weekDays.removeLast();
  print(weekDays);
  weekDays.removeLast();
  print(weekDays);

  // 'Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.'

  List<int> numbers = [8, 5, 4, 0, 5];

  int count1 =
      numbers.reduce((value, element) => value < element ? value : element);
  print('smallest number is $count1');

  int count2 =
      numbers.reduce((value, element) => value > element ? value : element);
  print('greatest number is $count2');

  //Q.5: Create a map with name, phone keys and store some values to it.
  // Use where to find all keys that have length 4.

  var data = {
    "name": "SyedBilalAli",
    "phone": "123-456-7890",
    "email": "abc@gmail.com",
    "address": "123 Main St.",
  };
  print(data.keys);
  print(data.keys.length);

  //Q.6: Create Map variable name world then inside it create countries Map, Key will be the name
  //country & country value will have another map having capitalCity,
  //currency and language to it. by using any country key print all the value of Capital & Currency.

  Map world = {
    'pakistan': {
      'capitalCity': 'Islamabad',
      'currency': 'Rupee',
      'language': 'Urdu',
    },
    'United State': {
      'capitalCity': 'New york',
      'currency': 'Dollar',
      'language': 'English',
    }
  };

  print(world['pakistan']);

  //Q.7: Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise
  //add 'fri' to expenses and set its value to 5000.0 then print expenses.

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  expenses['fri'] = 5000.0;

  print(expenses);

  // Q.8: remove all false values from below list by using removeWhere or retainWhere property.

  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.retainWhere((value) => value['eligible'] == false);
  print(usersEligibility);

  //Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

  List<int> numbers2 = [5, 12, 8, 3, 10, 6, 15, 7];

  int max =
      numbers2.reduce((value, element) => value > element ? value : element);

  print('In this List Maximum Number is $max');

  //Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements,
  //returning a new list without duplicates.The order of elements in the new list should be
  //the same as in the original list

  List<String> str = [
    'Bilal',
    'Haris',
    'Ali',
    'Sajjad',
    'Sajid',
    'Bilal',
    'Haris',
    'Ali'
  ];

  print(str.toSet());

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list
  // containing the first n elements from the original list.

  List<int> intList = [10, 9, 8, 7, 6, 5, 4];

  List<int> n = intList.sublist(0, 4);

  print('copyList from Original list $n');

  //Q.12: Write a Dart code that takes in a list of strings and returns a new list with the elements in reverse
  // order. The original list should remain unchanged.

  List<String> reverseList = ['a', 'b', 'c', 'd', 'e'];

  print(reverseList.reversed.toList());

  //Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique
  // elements from the original list. The order of elements in the new list should be the same as in the original
  // list.

  List<int> originalList = [1, 2, 3, 2, 4, 5, 1, 3, 6];

  print(originalList.toSet());

  //Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted
  // in ascending order. The original list should remain unchanged.

  List<int> originalLists = [1, 2, 3, 2, 4, 5, 1, 3, 6];

  List<int> sortedList = List.from(originalLists);

  sortedList.sort();

  print('Original List $originalLists');
  print('Sorted List $sortedList');

  //Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers.
  // The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List<int> listwithNagetiveNum = [1, 2, -3, 2, 4, -5, 1, -3, -6];

  List<int> removeNagetive =
      listwithNagetiveNum.where((number) => number > 0).toList();

  print('Original List With Nagetive Number $listwithNagetiveNum');
  print('remove NAgetive Number $removeNagetive');

  // Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers.
  //The program should take in the original list as a parameter and print a new list containing only the even numbers.

  List<int> listwithOddNum = [1, 2, 3, 2, 4, 5, 1, 3, 6];

  List<int> removeOddNum =
      listwithOddNum.where((element) => element % 2 == 0).toList();

  print('Printed Even Number $removeOddNum');

  //Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value
  //squared. The program should take in the original list as a parameter and print the new list.

  List<int> listwithOutSquared = [
    1,
    2,
    3,
    4,
    5,
  ];

  List<int> squares = listwithOutSquared.map((e) => e * e).toList();

  print('Square Value $squares');

  //Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true.
  // Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

  Map person = {'name': 'John', 'age': 25, 'isStudent': true};

  var age1 = person['age'];
  var isStd = person['isStudent'];

  if (age1 > 18 && isStd) {
    print('Eligible');
  } else {
    print('Not eligible');
  }

  // Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check
  //if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock"

  Map product = {
    'name': 'Headphone',
    'price': 2000,
    'quantity': 10,
  };

  if (product['quantity'] > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }

  //Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true.
  // Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  Map car = {'brand': 'Toyota', 'color': 'Red', 'isSedan': true};

  if (car['color'] == 'Red' && car['isSedan'] == true) {
    print('Match');
  } else {
    print('No match');
  }

  //Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user
  //is an active admin.If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".

  Map user = {'name': 'John', 'isAdmin': true, 'isActive': true};

  if (user['isAdmin'] && user['isActive']) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }

//Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to
//check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

  Map shoppingCart = {'productName': 'Apple ', 'quantity': 10, 'value': 100};

  if (shoppingCart['productName'] == 'Apple') {
    print('Product found');
  } else {
    print('Product not found');
  }
}

import Foundation

//Swift Enumeration

enum Season {
  
  case spring, summer, autumn, winter
}

var currentSeason: Season
currentSeason = Season.summer

print("Current Season:", currentSeason)


//2.Swift enum With Switch Statement

enum PizzaSize {
  case small, medium, large
}

var size = PizzaSize.medium

switch(size) {
  case .small:
    print("I ordered a small size pizza.")

  case .medium:
    print("I ordered a medium size pizza.")

   case .large:
     print("I ordered a large size pizza.");
}

//3.iterate Over enum Cases

enum Season1: CaseIterable {
  case spring, summer, autumn, winter
}
for currentSeason in Season1.allCases {
  print(currentSeason)
}

//4.enums With Raw Values
enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}
var result = Size.small.rawValue
print(result)

//5.enum Associated Values
enum Laptop {

  case name(String)

  case price (Int)
}

var brand = Laptop.name("Razer")
print(brand)

var offer = Laptop.price(1599)
print(offer)

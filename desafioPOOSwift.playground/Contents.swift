//controle de fluxo ok
//coleções ok
//funções ok
//closures
//structs
//enums ok
//concorrencia
//protocol

import Foundation

class MyWeek {
    
    enum weekDays {
        case Sunday
        case Monday
        case Tuesday
        case Wednesday
        case Thursday
        case Friday
        case Saturday
    }
    
    func verifyIsOpen(_ dayOfTheWeek: weekDays) -> Bool {
        
        switch dayOfTheWeek {
        case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday, .Saturday:
            return true
        case .Sunday:
            return false
        
            }
        }
    }


class MyBusiness: MyWeek {
    
    var itemsInStock: [String : Int] = ["Mouse": 100, "Mousepad": 50, "Notebook": 4, "Bluetooth Speaker": 15 ]
    
    func printingAvailableItems() {
        for item in itemsInStock {
            print(item)
        }
    }
    
    func sellingItem(itemName: String, howMany: Int) {
            if let amount = itemsInStock[itemName] {
                if amount < howMany  {
                    print("Not available in stock, item name: \(itemName)")
                } else  {
                    itemsInStock[itemName] = amount - howMany
                    print("New item sold: \(itemName)")
                }
            } else {
                print("Item not found: \(itemName)")
            }
        }
}


let firstBusiness = MyBusiness()
firstBusiness.printingAvailableItems()
firstBusiness.sellingItem(itemName: "Mouse", howMany: 5)
firstBusiness.printingAvailableItems()
firstBusiness.sellingItem(itemName: "iPad", howMany: 4)

firstBusiness.verifyIsOpen(.Monday)


let newBusiness = MyBusiness()
newBusiness.verifyIsOpen(.Sunday)

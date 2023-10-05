//closure
//structc ok
//protocol ok
//concorrencia

import Foundation

protocol Details {

    var name: String {get set}
    var id: Int {get set}
    var category: String {get set}
    var isAvailable: Bool {get}

    func itemAvailable()
}

struct ItemDetails: Details {
    var name: String
    
    var id: Int
    
    var category: String
    
    var isAvailable: Bool
    
    var stock: Int
    
    func itemAvailable() {
        
        if isAvailable == true {
            print("The item \(name) is available")

        } else {
            print("The item \(name) is unavailable")
        }
    }

    mutating func stockcheck(newAddedAmountToStock: Int) -> Int {
        stock += newAddedAmountToStock
        
        return stock
    }
    
}

       
var itemHeadphone = ItemDetails(name: "headphone", id: 22828, category: "electronics", isAvailable: true, stock: 10)
itemHeadphone.itemAvailable()
itemHeadphone.stockcheck(newAddedAmountToStock: 20)
itemHeadphone.stockcheck(newAddedAmountToStock: 30)
itemHeadphone.stockcheck(newAddedAmountToStock: 1002)

var itemClips = ItemDetails(name: "clips", id: 96543, category: "office", isAvailable: false, stock: 0)
itemClips.itemAvailable()

//
//  main.swift
//  Hw2.2
//
//  Created by Бектур Каримов on 24/12/22.
//

import Foundation
//
//  Magazin.swift
//  Hw2.2
//
//  Created by Бектур Каримов on 24/12/22.
//

import Foundation


class Magazin{
    var name: String
    var cost: Int
    var square: Int
    var stay: String
    var timeWork: Int
    var tovar: [Tovar] = [Tovar] ()
    init(name: String, square: Int, stay: String, timeWork: Int, cost: Int) {
        self.name = name
        self.square = square
        self.stay = stay
        self.timeWork = timeWork
        self.cost = cost
    }
    func showInfo(){
        
        print("market name - \(name), square - \(square), address - \(stay),  name tovar - \(tovar), cost - \(cost)")
        for i in tovar {
            
            print("Название товара - \(i.name), цена - \(i.cost) колво - \(i.amount)")
        }
        func sameMagazTovar(add:Tovar){
            for i in tovar {
                var name = true
                for i in tovar {
                    if add.name == i.name && add.amount == i.amount && add.cost == i.cost{
                        name = false
                        i.amount += add.amount
                        
                    }
                }
                
var magazin = Magazin(name: "Frunze", square: 330, stay: "Mahat ma Ghandi", timeWork: 7, cost: 25)

magazin.showInfo()
            }
           
          }
        }
        
    }



//
//  AutoShop.swift
//  Hw2.2
//
//  Created by Бектур Каримов on 24/12/22.
//

import Foundation


class AutoShop: Magazin{
    var autoName: [Tovar] = [Tovar]()
    
    var AutoSize: Int
    init(name: String, square: Int, stay: String, timeWork: Int, AutoSize: Int, cost: Int) {
        
        self.AutoSize = AutoSize
        super.init(name: name, square: square, stay: stay, timeWork: timeWork, cost: cost)
    }
    override func showInfo(){
        print("tovar name - \(name), square - \(square),adress - \(stay),time work - \(timeWork), cost - \(cost), size - \(AutoSize)")
        for i in autoName {
            print("Название товара - \(i.name), цена - \(i.cost) колво - \(i.amount)")
        }
    }
    func sameAutoTovar(add:Tovar){
        for i in autoName{
            var tovar = true
            for i in autoName {
                if add.name == i.name && add.amount == i.amount && add.cost == i.cost{
                    tovar = false
                    i.amount += add.amount
                    
                }
            }
            if tovar != false {
                autoName.append(add)
            }
        }
    }
}
var autoShop = AutoShop(name: "Dordoi", square: 220, stay: "Dordoi", timeWork: 6, AutoSize: 35, cost: 3000)
autoShop.showInfo()


//
//  Shop.swift
//  Hw2.2
//
//  Created by Бектур Каримов on 24/12/22.
//

import Foundation
class SecondHand: Magazin{
    var clothes:[Tovar] = [Tovar] ()
    override init(name: String, square: Int, stay: String, timeWork: Int, cost: Int ) {
        
        super.init(name: name, square: square, stay: stay, timeWork: timeWork, cost: cost)
    }
    override func showInfo(){
        print("name: \(name), square: \(square), adress: \(stay), time work: \(timeWork), clothes name:\(clothes), cost - \(cost)")
        for i in clothes{
            print("Название товара - \(i.name), цена - \(i.cost) колво - \(i.amount)")
            
        }
    }
    func sameClothesTovar(add:Tovar){
        for i in clothes{
            var tovar = true
            for i in clothes {
                if add.name == i.name && add.amount == i.amount && add.cost == i.cost{
                    tovar = false
                    i.amount += add.amount
                    
                }
            }
            if tovar != false {
                clothes.append(add)
            }
        }
    }
}
var shopclothes = SecondHand(name: "Gucci", square: 300, stay: "Italy", timeWork: 7, cost: 500000)
shopclothes.showInfo()

//
//  Tovar.swift
//  Hw2.2
//
//  Created by Бектур Каримов on 24/12/22.
//

import Foundation


class Tovar{
    var name: String
     var cost: Int
    var amount: Int
    init(name: String,  cost: Int, amount: Int) {
        self.name = name
  
        self.cost = cost
        self.amount = amount

        
    }
    func showInfo(){
        
        print("name - \(name), cost - \(cost), amount - \(amount), ")
    }
}
var tovar = Tovar(name: "sandwich", cost: 80, amount: 1)
tovar.showInfo()



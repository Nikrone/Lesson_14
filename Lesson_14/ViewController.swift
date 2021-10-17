//
//  ViewController.swift
//  Lesson_14
//
//  Created by Evgeniy Nosko on 1.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label:UILabel!

    //    Any - любой тип данных
    var dictionary: [String: Any] = [:]
    
    var dictionary1: [String: Any] = ["123" : 123, "1234" : 1234]
    var dictionary2: [String: Any] = ["123" : 1235, "12345" : 12345]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        делам КАЖДОЕ слово разного цвета
        let redWord = "КАЖДЫЙ"
        let orangeWord = "ОХОТНИК"
        let yellowWord = "ЖЕЛАЕТ"
        let greenWord = "ЗНАТЬ"
        let lightblueWord = "ГДЕ"
        let blueWord = "СИДИТ"
        let purpleWord = "ФАЗАН"
        
        let phrase = [redWord, orangeWord, yellowWord, greenWord, lightblueWord, blueWord, purpleWord].joined(separator: " ")
        
        
        
        let attributedString = NSMutableAttributedString(
            string: phrase,
            attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 25)]
        )
        
//        изменяет КОНКРЕТНУЮ букву в слове
//        изменяем шрифт
        let font = UIFont(name: "Roboto-Black", size: 35) ?? .systemFont(ofSize: 45)
        let bigLetterRange = NSRange(1..<2)
        attributedString.addAttributes([NSAttributedString.Key.font : font], range: bigLetterRange)
        
        let redRange = (phrase as NSString).range(of: redWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], range: redRange)
        
        let orangeRange = (phrase as NSString).range(of: orangeWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange], range: orangeRange)
        
        let yellowRange = (phrase as NSString).range(of: yellowWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.yellow], range: yellowRange)
        
        let greenRange = (phrase as NSString).range(of: greenWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.green], range: greenRange)
        
        let lightBlueRange = (phrase as NSString).range(of: lightblueWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.systemBlue], range: lightBlueRange)
        
        let blueRange = (phrase as NSString).range(of: blueWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.blue], range: blueRange)
        
        let purpleRange = (phrase as NSString).range(of: purpleWord)
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.purple], range: purpleRange)
        
        
        
        //    ATTRIBUTED STRINGS
        //        NSAttributedString - неизменяемые атрибуты
        //        NSMutableAttributedString - изменяемые атрибуты
//        let atrributedString = NSMutableAttributedString(
//            string: "red orange",
//            //  foregroundColor-цвет текста,
//            attributes: [NSAttributedString.Key.foregroundColor : UIColor.red,
//                         NSAttributedString.Key.backgroundColor : UIColor.gray,
//                         NSAttributedString.Key.font : UIFont.systemFont(ofSize: 40)])
//        //        создаем константу для Range
//        let range = ("red orange" as NSString).range(of: "orange")
//        atrributedString.addAttributes(
//            [NSAttributedString.Key.foregroundColor : UIColor.orange,
//             NSAttributedString.Key.backgroundColor : UIColor.black,], range: range)
//
        label.attributedText = attributedString
        
        
        
        
        //        DICTIONARY
//        dictionary["213"] = "Abc"
//        dictionary["Key"] = 123
//
//        //        получить все ключи словаря
//        let arrayDictionary = Array(dictionary.keys)
//        //        получить значения словаря
//        let arrayDictionary1 = Array(dictionary.values)
//
//        print(arrayDictionary)
//        print(arrayDictionary1)
//
//        //        соединение двух словарей с изменениями в один, в новую переменную
//        let newDictionary = dictionary1.merging(dictionary2) { firstElement,
//                                                               secondElement in
//            //            входим если ключи одинаковые
//            return firstElement
//        }

    }
}


// делаем структуру Хешируемой
struct Key: Hashable {
    
}

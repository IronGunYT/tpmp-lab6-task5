//
//  main.swift
//  tpmp_lab6-5
//
//  Created by Demid Moshkovich on 9/4/24.
//  Copyright © 2024 Demid Moshkovich. All right reserved.
//

import Foundation

// хранит два типа значений
// Product [name: cost]
// Company [name: staff_number]
var dataDict: [String: Double] = [
    "iPhone": 999.99,
    "Smart TV": 1499.99,
    
    "Apple": 2500,
    "Samsung": 1500
]

func printDictionaryCount() {
    print("Количество элементов в словаре: \(dataDict.count)")
}

func printValueForKey() {
    print("Введите ключ:")
    if let key = readLine() {
        if let value = dataDict[key] {
            print("Значение для ключа '\(key)': \(value)")
        } else {
            print("Ключ '\(key)' не найден в словаре")
        }
    }
}

func printAllElements() {
    print("Элементы (ключ-значение) в словаре:")
    for (key, value) in dataDict {
        print("Ключ: \(key), Значение: \(value)")
    }
}

func addElementToDictionary() {
    print("Введите ключ:")
    if let key = readLine() {
        print("Введите значение (число):")
        if let valueStr = readLine(), let value = Double(valueStr) {
            dataDict[key] = value
            print("Элемент успешно добавлен в словарь")
        } else {
            print("Ошибка: значение должно быть числом")
        }
    }
}

func modifyElementInDictionary() {
    print("Введите ключ:")
    if let key = readLine() {
        print("Введите новое значение (число):")
        if let valueStr = readLine(), let value = Double(valueStr) {
            dataDict[key] = value
            print("Элемент успешно изменен")
        } else {
            print("Ошибка: значение должно быть числом")
        }
    }
}

func sortDictionaryByKey() {
    print("Сортировка словаря по ключу:")
    let sortedKeys = dataDict.keys.sorted()
    for key in sortedKeys {
        if let value = dataDict[key] {
            print("Ключ: \(key), Значение: \(value)")
        }
    }
}

func sortDictionaryByValue() {
    print("Сортировка словаря по значению:")
    let sortedValues = dataDict.values.sorted()
    for value in sortedValues {
        for (key, value2) in dataDict {
            if value2 == value {
                print("Ключ: \(key), Значение: \(value2)")
            }
        }
    }
}

func removeElementFromDictionary() {
    print("Введите ключ элемента для удаления:")
    if let key = readLine() {
        dataDict.removeValue(forKey: key)
        print("Элемент успешно удален из словаря")
    }
}

func removeAllElementsFromDictionary() {
    dataDict.removeAll()
    print("Все элементы успешно удалены из словаря")
}

func printMenu() {
    print("Меню:")
    print("1. Вывести количество элементов в словаре")
    print("2. Вывести значение и ключ из словаря по ключу")
    print("3. Вывести все элементы (ключ-значение) из словаря")
    print("4. Добавить элемент в словарь")
    print("5. Изменить элемент в словаре")
    print("6. Отсортировать словарь по ключу")
    print("7. Отсортировать словарь по значению")
    print("8. Удалить элемент из словаря")
    print("9. Удалить все элементы из словаря")
    print("0. Выход")
    print("Выберите операцию:")
}

var continueMenuLoop = true

while continueMenuLoop {
    printMenu()
    if let choiceStr = readLine(), let choice = Int(choiceStr) {
        switch choice {
        case 1:
            printDictionaryCount()
        case 2:
            printValueForKey()
        case 3:
            printAllElements()
        case 4:
            addElementToDictionary()
        case 5:
            modifyElementInDictionary()
        case 6:
            sortDictionaryByKey()
        case 7:
            sortDictionaryByValue()
        case 8:
            removeElementFromDictionary()
        case 9:
            removeAllElementsFromDictionary()
        case 0:
            continueMenuLoop = false
        default:
            print("Недопустимый выбор. Пожалуйста, выберите существующую операцию.")
        }
    } else {
        print("Недопустимый выбор. Пожалуйста, выберите существующую операцию.")
    }

    print("\n")
}


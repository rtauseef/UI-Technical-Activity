//
//  InfoViewModel.swift
//  UITechnicalActivityTest
//
//  Created by Tauseef on 7/5/20.
//  Copyright © 2020 Movemedical. All rights reserved.
//


import Foundation

class InfoViewModel {
    
    var bookInfoArray = [BookInfo]()
    var phoneInfoArray = [PhoneInfo]()
    var carInfoArray = [CarInfo]()
    
    func getSchoolInfo() {
        
        let bookInfo = BookInfo(name: "Book1", description: "Desc")
        let bookInfo2 = BookInfo(name: "Book2", description: "Desc")
        let bookInfo3 = BookInfo(name: "Book3", description: "Desc")
        bookInfoArray.append(bookInfo)
        bookInfoArray.append(bookInfo2)
        bookInfoArray.append(bookInfo3)
        
        let phoneInfo = PhoneInfo(name: "Apple", description: "Desc")
        let phoneInfo2 = PhoneInfo(name: "Samsung", description: "Desc")
        let phoneInfo3 = PhoneInfo(name: "Oppo", description: "Desc")
        phoneInfoArray.append(phoneInfo)
        phoneInfoArray.append(phoneInfo2)
        phoneInfoArray.append(phoneInfo3)
        
        let carInfo = CarInfo(name: "BMW", description: "Desc")
        let carInfo2 = CarInfo(name: "Marcedes", description: "Desc")
        let carInfo3 = CarInfo(name: "Ford", description: "Desc")
        carInfoArray.append(carInfo)
        carInfoArray.append(carInfo2)
        carInfoArray.append(carInfo3)
        
    }
}

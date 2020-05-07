//
//  ItemInfo.swift
//  UITechnicalActivityTest
//
//  Created by Tauseef on 7/5/20.
//  Copyright © 2020 Movemedical. All rights reserved.
//

import Foundation

protocol BasicInfo {
    var name: String { get }
    var description: String { get }
}

struct BookInfo: BasicInfo{
    var name: String
    var description: String

    /// PhoneInfo Objects.
    var autor: String?
    var publishYear: String?  
}

struct PhoneInfo: BasicInfo{
    var name: String
    var description: String
    
    /// PhoneInfo Objects.
    var model: String?
    var launchYear: String?
    var os: String?
    
}


 struct CarInfo: BasicInfo{
    var name: String
    var description: String
    
    /// CarInfo Objects.
    var model: String?
    var launchYear: String?
    var color: String?
    
}


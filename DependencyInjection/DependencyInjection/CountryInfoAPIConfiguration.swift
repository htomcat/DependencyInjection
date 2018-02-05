//
//  CountryInfoAPIConfiguration.swift
//  DependencyInjection
//
//  Created by htomcat on 2018/02/05.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

struct CountryInfoAPIConfiguration {
    private static let apiKey = ""
    static let url = "https://hogehoge"
    
    static var parameters: [String: String] {
        return ["appid": apiKey]
    }
}

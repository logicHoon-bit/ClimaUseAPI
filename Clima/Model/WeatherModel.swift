//
//  WeatherModel.swift
//  Clima
//
//  Created by 이치훈 on 2023/03/19.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let conditionID: Int
    let cityname: String
    let temperature: Double
    
    
    func getConditionName(weatherID: Int) -> String {
        switch weatherID {
        case 200...299:
            return "cloud.bolt"
        case 300...399:
            return "cloud.drizzle"
        case 500...599:
            return "cloud.rain"
        case 600...699:
            return "cloud.snow"
        case 700...799:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 800...899:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}

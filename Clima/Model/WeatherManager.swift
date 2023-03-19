//
//  WeatherManager.swift
//  Clima
//
//  Created by 이치훈 on 2023/03/19.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=656d10fa93ab2cc34172c87c1889a902&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        print(urlString)
    }
}

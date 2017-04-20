//
//  WeatherCell.swift
//  rainyshinycloudy
//
//  Created by jamesshih.ilink on 16/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!

    func configureCell(forecast: Forecast) {
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dateLabel.text = forecast.date
        weatherTypeLabel.text = forecast.weatherType
        highTempLabel.text = "\(forecast.highTemp)"
        lowTempLabel.text = "\(forecast.lowTemp)"
    }
    
}

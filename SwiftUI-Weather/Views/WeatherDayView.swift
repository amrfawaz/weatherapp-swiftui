//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Amr Fawaz on 16/09/2023.
//

import SwiftUI
struct WeatherDayView: View {
    let day: DayWaether
    
    var body: some View {
        VStack() {
            Text(day.day)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium))
            
            Image(systemName: day.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(day.tempreture)°").foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
            
        }
    }
}


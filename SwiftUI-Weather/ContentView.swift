//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Amr Fawaz on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    private var days: [DayWaether] = [
        DayWaether(day: "TUE", imageName: "cloud.sun.fill", tempreture: 30),
        DayWaether(day: "WED", imageName: "sun.max.fill", tempreture: 30),
        DayWaether(day: "THU", imageName: "wind.snow", tempreture: 30),
        DayWaether(day: "FRI", imageName: "sunset.fill", tempreture: 30),
        DayWaether(day: "SAT", imageName: "snow", tempreture: 30),
        DayWaether(day: "SUN", imageName: "cloud.sun.fill", tempreture: 30),
    ]
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityNameView(cityName: "Cairo, EG")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", tempreture: 30)
                HStack(alignment: .center, spacing: 20) {
                    
                    ForEach(days, id: \.self) { day in
                        WeatherDayView(day: day)
                    }
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButtonView(isNight: isNight)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







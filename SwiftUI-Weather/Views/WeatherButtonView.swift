//
//  WeatherButtonView.swift
//  SwiftUI-Weather
//
//  Created by Amr Fawaz on 16/09/2023.
//

import SwiftUI
struct WeatherButtonView: View {
    var isNight: Bool
    var body: some View {
            Text("Change Day Time")
                .frame(width: 300, height: 60)
                .background(isNight ? Color.black.gradient : Color.blue.gradient)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(10)
                .foregroundColor(.white)
    }
}

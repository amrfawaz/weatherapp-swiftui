//
//  WeatherBackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Amr Fawaz on 16/09/2023.
//

import SwiftUI
struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")],
                       startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

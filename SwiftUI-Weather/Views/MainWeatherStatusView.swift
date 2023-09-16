//
//  MainWeatherStatusView.swift
//  SwiftUI-Weather
//
//  Created by Amr Fawaz on 16/09/2023.
//

import SwiftUI
struct MainWeatherStatusView: View {
    let imageName: String
    let tempreture: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(tempreture)°")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium))
        }.padding(.bottom, 40)
    }
}

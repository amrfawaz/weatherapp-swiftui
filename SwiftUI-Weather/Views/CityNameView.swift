//
//  CityNameView.swift
//  SwiftUI-Weather
//
//  Created by Amr Fawaz on 16/09/2023.
//

import SwiftUI

struct CityNameView: View {
    let cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

//
//  DriverModel.swift
//  Drivers
//
//  Created by Soham Chavan on 2/26/22.
//

import SwiftUI

// DRIVER DATA MODEL

struct DriverData: Identifiable
{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var stats: [String]
}

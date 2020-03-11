//
//  roundedCorner.swift
//  Fintech App
//
//  Created by Chiziaruhoma Ogbonda on 11/03/2020.
//  Copyright © 2020 Chiziaruhoma Ogbonda. All rights reserved.
//

import Foundation
import SwiftUI


struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

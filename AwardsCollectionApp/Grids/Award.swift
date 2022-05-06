//
//  Aword.swift
//  AwardsCollectionApp
//
//  Created by brubru on 07.03.2022.
//

import SwiftUI

struct Award {
    
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles()),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView()),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView()),
                title: "Curves View",
                awarded: true
            ),
            Award(
                awardView: AnyView(HypocycloidView(width: 160, height: 160)),
                title: "Hypocycloid View",
                awarded: false
            ),
            Award(
                awardView: AnyView(RocketView()),
                title: "Rocket View",
                awarded: true
            )
        ]
    }

}


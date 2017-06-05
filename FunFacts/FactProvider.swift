//
//  FactProvider.swift
//  VeganFacts
//
//  Created by Derrick on 6/3/17.
//  Copyright © 2017 Derrick Codlyn. All rights reserved.
//

import GameKit

struct FactProvider {
    let facts = [
        "Veganism is a way of life that alters diet, clothing, and other decisions with the goal of ending exploitation of animals.",
        "Vegan foods are free of all animal products such as meat, eggs, fish, and dairy. Get YOUR school to serve a healthier, less meaty menu by signing up for Meatless Mondays.",
        "Ethical vegans also avoid the use of animal products like skin (leather or fur), feathers, and other things that cause animal suffering during production.",
        "Approximately 5% of the US is vegetarian (close to 16 million people), and about half of those are vegan -- meaning about 7.5 million Americans abstain from all animal products.",
        "Vegan living often reduces the intake of saturated fat, animal hormones, and cholesterol while increasing the intake of fresh fruits and veggies. That has the potential to reduce the risk of cancer, diabetes, obesity, and heart disease.",
    ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
    }
}

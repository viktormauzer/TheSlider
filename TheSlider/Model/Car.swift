//
//  Car.swift
//  TheSlider
//
//  Created by Viktor Mauzer on 01.08.2022..
//

import Foundation

struct Car: Identifiable {
    var id: UUID
    var make: String
    var model: String
    var price: Double
    var description: String
    var image: String
}

#if DEBUG
extension Car {
    static func mockData() -> [Car] {
        return [
            Car(id: UUID(), make: "Porsche", model: "Taycan Turbo S", price: 189668.0, description: "The Taycan is the pure expression of a Porsche electric sports car. Striking proportions, timeless and instantly recognisable design, and a perfect blend of performance with everyday usability.", image: "porsche-taycan"),
            Car(id: UUID(), make: "Tesla", model: "Model 3", price: 49990.0, description: "The Tesla Model 3 is a compact executive sedan that is battery powered and produced by Tesla. Limited production of the Model 3 began in mid-2017, with the first production vehicle rolling off the assembly line on July 7, 2017.", image: "tesla-model3"),
            Car(id: UUID(), make: "Audi", model: "e-tron GT", price: 104000.0, description: "The Audi e-tron GT is a battery electric executive car produced by Audi since late 2020 as part of the e-tron battery electric sub-brand, and the third fully electric car model, after e-tron and e-tron Sportback SUVs. Based on the J1 platform shared with the Porsche Taycan, the car went on sale in March 2021.", image: "audi-etron-gt"),
            Car(id: UUID(), make: "Ford", model: "Mustang Mach-E", price: 56500.0, description: "The Ford Mustang Mach-E is a battery electric compact crossover SUV produced by Ford. The vehicle was introduced on November 17, 2019, and went on sale in December 2020 as a 2021 model. The vehicle uses the Mustang nameplate, with a Mach-E moniker which is inspired by the Mach 1 variant of the first-generation Mustang.", image: "ford-mach-e"),
            Car(id: UUID(), make: "Polestar", model: "Polestar 2", price: 43725.0, description: "The Polestar 2 is a battery electric 5-door liftback produced by the Swedish automaker Volvo under its Polestar sub-brand. Based on the CMA platform, production began in March 2020.", image: "polestar-2")
        ]
    }
}
#endif

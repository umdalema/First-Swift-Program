//
//  main.swift
//  firstSwiftProject
//
//  Created by Dale Mallette on 6/7/16.
//  Copyright © 2016 Dale Mallette. All rights reserved.
//

import Foundation

func pluralize(singular: String, plural: String, num: Double) -> String {
    
    if num > 1 {
        return plural
    }
    
    return singular
}

func conversion(perBatch: Double, numBatches: Double, conversionNum: Double) -> Double {
    
    return ceil((perBatch * numBatches) / conversionNum)
}

func main(numPeople: Double) -> Void {
    
    // Amounts per batch:
    let cupsFlourPerBatch:           Double = 1.5
    let cupsGranulatedSugarPerBatch: Double = 1.0
    let cupsButterPerBatch:          Double = 1.5
    let cupsSourCreamPerBatch:       Double = 0.5
    let eggsPerBatch:                Double = 3.0
    let teaspoonsVanillaPerBatch:    Double = 4.5
    let cupsPowderedSugar:           Double = 2.5
    
    // Batch Calculation: 
    let numBatches: Double = ceil(numPeople / 12)
    
    // Conversion factors: 
    
    let cupsPerBagFlour:           Double = 20.0
    let cupsPerBagGranulatedSugar: Double = 10.0
    let cupsPerPoundButter:        Double = 2.0
    let cupsPerContainerSourCream: Double = 1.0
    let eggsPerDozenEggs:          Double = 12.0
    let cupsPerBagPowderedSugar:   Double = 5.5
    let teaspoonsPerBottleVanilla: Double = 12.0
    
    // Costs of each item: 
    
    let costFlour: Double = 3.09
    let costGranulatedSugar: Double = 2.98
    let costButter: Double = 2.50
    let costSourCream: Double = 1.29
    let costEggs: Double = 2.68
    let costPowderedSugar: Double = 1.18
    let costVanilla: Double = 4.12
    
    
    // Amounts Needed:
    let flourNeeded: Double = conversion(cupsFlourPerBatch, numBatches: numBatches, conversionNum: cupsPerBagFlour)
    let granulatedSugarNeeded: Double = conversion(cupsGranulatedSugarPerBatch, numBatches: numBatches, conversionNum: cupsPerBagGranulatedSugar);
    let butterNeeded: Double = conversion(cupsButterPerBatch, numBatches: numBatches, conversionNum: cupsPerPoundButter)
    let sourCreamNeeded: Double = conversion(cupsSourCreamPerBatch, numBatches: numBatches, conversionNum: cupsPerContainerSourCream)
    let eggsNeeded: Double = conversion(eggsPerBatch, numBatches: numBatches, conversionNum: eggsPerDozenEggs)
    let powderedSugarNeeded: Double = conversion(cupsPowderedSugar, numBatches: numBatches, conversionNum: cupsPerBagPowderedSugar)
    let vanillaNeeded: Double = conversion(teaspoonsVanillaPerBatch, numBatches: numBatches, conversionNum: teaspoonsPerBottleVanilla)
    
    
    let totalCost = ((flourNeeded * costFlour) +
                    (granulatedSugarNeeded * costGranulatedSugar) +
                    (butterNeeded * costButter) +
                    (sourCreamNeeded * costSourCream) +
                    (eggsNeeded * costEggs) +
                    (powderedSugarNeeded * costPowderedSugar) +
                    (vanillaNeeded * costVanilla))
    
    // print statments:
    
    print("Number of people being served: \(numPeople)")
    print()
    print("You need to make: \(numBatches) of cupcakes")
    print("-------------------------------------------")
    print()
    print("   \(flourNeeded) \(pluralize("bag", plural: "bags", num: flourNeeded)) of flour")
    print("   \(granulatedSugarNeeded) \(pluralize("bag", plural: "bags", num: granulatedSugarNeeded)) of granulated sugar")
    print("   \(butterNeeded) \(pluralize("pound", plural: "pounds", num: butterNeeded)) of butter")
    print("   \(sourCreamNeeded) \(pluralize("containers", plural: "containers", num: sourCreamNeeded)) of sour cream")
    print("   \(eggsNeeded) dozen eggs")
    print("   \(powderedSugarNeeded) \(pluralize("bag", plural: "bags", num: powderedSugarNeeded)) of powdered sugar")
    print("   \(vanillaNeeded) \(pluralize("bottle", plural: "bottles", num: vanillaNeeded)) of vanilla ")
    print()
    print("Total expected cost of ingredients: $\(totalCost)")
    print()
    print("Have a great party!")
    print()
    
    return
}

main(3)
main(12)
main(13)
main(40)

//
//  SquareBasedPyramidView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Isaad Khan on 2023-01-20.
//

import SwiftUI

struct SquareBasedPyramidView: View {
    let approximatelyPi = 3.14

    struct SquareBasedPyramid {
        
        var squareSideLength: Int
        var pyramidSideLength: Int
        
        
        
        var areaBase: Double {
            return (Double(squareSideLength)) * (Double(squareSideLength))
        }
        var areaLateralSurface: Double {
            return (Double(squareSideLength)) * (Double(pyramidSideLength)) / Double(2)
        }
        var areaTotal: Double{
            return (Double(areaBase) * Double(areaBase)) + (Double(2) * Double(squareSideLength) * Double(pyramidSideLength))
    }
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SquareBasedPyramidView_Previews: PreviewProvider {
    static var previews: some View {
        SquareBasedPyramidView()
    }
}

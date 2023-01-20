//
//  SquareBasedPyramidView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Isaad Khan on 2023-01-20.
//

import SwiftUI

struct SquareBasedPyramidView: View {
    let approximatelyPi = 3.14
    
    
    
    
    @State var squareSideLength: Double = 5
    @State var pyramidSideLength: Double = 10
    @State var desiredPrecision: Double = 1
    
    
    
    var areaBase: Double {
        return (Double(squareSideLength)) * (Double(squareSideLength))
    }
    var areaLateralSurface: Double {
        return (Double(squareSideLength)) * (Double(pyramidSideLength)) / Double(2)
    }
    var areaTotal: Double{
        return (Double(areaBase) * Double(areaBase)) + (Double(2) * Double(squareSideLength) * Double(pyramidSideLength))
    }
    
    var body: some View {
        VStack(spacing: 15){
            
            HStack{
                Image("SquareBasedPyramid")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
            }
            
            Group{
                
                Text("SquareSideLength")
                    .font(.title2)
                    .bold()
                
                Slider(value: $squareSideLength,
                       in: 0...100,
                       label: { Text("SquareSideLength") },
                       minimumValueLabel: {Text("0") },
                       maximumValueLabel: {Text("100")})
                
                
                Text("\(squareSideLength)")
                    .font(.title2)
                
            }
            
            
            Text("PyramidSideLength")
                .font(.title2)
                .bold()
            
            Slider(value: $pyramidSideLength,
                   in: 0...100,
                   label: { Text("PyramidSideLength") },
                   minimumValueLabel: {Text("0") },
                   maximumValueLabel: {Text("100")})
            
            Text("\(pyramidSideLength)")
                .font(.title2)
            
            Text("Area")
                .font(.title2)
                .bold()
            
            
            Text("\(areaTotal)")
                .font(.title2)
            
            Group{
                Stepper("Precision",
                        value: $desiredPrecision,
                        in: 0...6)
                // Show precision
                Text("\(desiredPrecision.formatted(.number.precision(.fractionLength(0))))")
                    .font(.title2)
                
            }
            
            
        }
    }
    
    
}

struct SquareBasedPyramidView_Previews: PreviewProvider {
    static var previews: some View {
        SquareBasedPyramidView()
    }
}

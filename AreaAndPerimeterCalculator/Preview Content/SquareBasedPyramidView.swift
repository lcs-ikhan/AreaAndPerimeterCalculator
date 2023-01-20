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
                Image("SquarBasedPyramid")
                
                Spacer()
            }
            
            
            Text("SquareSideLength")
                .font(.title2)
                .bold()
            
            Text("15")
                .font(.title2)
            
            
            Text("PyramidSideLength")
                .font(.title2)
                .bold()
            
            Text("15")
                .font(.title2)
            
            Text("Area")
                .font(.title2)
                .bold()
            
            Text("15")
                .font(.title2)
            
            
        }
    }
    
    struct SquareBasedPyramidView_Previews: PreviewProvider {
        static var previews: some View {
            SquareBasedPyramidView()
        }
    }
}

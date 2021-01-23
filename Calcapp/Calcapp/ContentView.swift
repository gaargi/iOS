//
//  ContentView.swift
//  Calcapp
//
//  Created by user925815 on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = ""
    
    var body: some View {
        
        VStack {
            Text("Time for Math")
                .padding(30)
                .background(Color.white)
                .foregroundColor(.pink)
                .border(Color.pink, width: 10)
                .border(Color.pink, width: 1)
                .font(.title)
                .cornerRadius(15)
                .padding()
            
            Spacer()
            
            Text(result)
                .padding(28)
                .background(Color.white)
                .foregroundColor(.pink)
                .border(Color.pink, width: 11)
                .font(.title)
                .cornerRadius(15)
                .padding()
            
            VStack {
                HStack {
                    calculatorButton(symbol: "1")
                    calculatorButton(symbol: "2")
                    calculatorButton(symbol: "3")
                    calculatorButton(symbol: "-")
                }
                HStack {
                    
                    calculatorButton(symbol: "4")
                    calculatorButton(symbol: "5")
                    calculatorButton(symbol: "6")
                    calculatorButton(symbol: "+")
                }
                HStack {
                    calculatorButton(symbol: "7")
                    calculatorButton(symbol: "8")
                    calculatorButton(symbol: "9")
                    calculatorButton(symbol: "x")
                }
                
                HStack {
                    calculatorButton(symbol: "AC")
                    calculatorButton(symbol: "0")
                    calculatorButton(symbol: "/")
                    calculatorButton(symbol: "=")
                }
            }
        }
    }
    
    func calculatorButton(symbol: String) -> some View {
        return Button(action: {
            if (symbol == "AC") {
                result = ""
            } else {
                result = result + symbol
            }
        }, label: {
            Text(symbol)
                .padding(15)
                .background(Color.white)
                .foregroundColor(.pink)
                .border(Color.red, width: 5)
                .border(Color.pink, width: 10)
                .font(.title2)
                .cornerRadius(15)
        }
        )
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


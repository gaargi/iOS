//
//  ContentView.swift
//  Calcapp
//
//  Created by user925815 on 1/6/21.
//

import SwiftUI

struct ContentView: View {
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
            
            VStack {
                HStack {
                    calculatorButton(number: "1")
                    calculatorButton(number: "2")
                    calculatorButton(number: "3")
                    calculatorButton(number: "-")                }
                HStack {
                    
                    calculatorButton(number: "4")
                    calculatorButton(number: "5")
                    calculatorButton(number: "6")
                    calculatorButton(number: "+")                }
                HStack {
                    calculatorButton(number: "7")
                    calculatorButton(number: "8")
                    calculatorButton(number: "9")
                    calculatorButton(number: "x")                }
            
                
                HStack {
                    calculatorButton(number: ".")
                    calculatorButton(number: "0")
                    calculatorButton(number: "=")
                    calculatorButton(number: "divided by")
                                    }
           
                HStack {
                  
                    
                }
            }
            
        }
    }
    
    func calculatorButton(number: String) -> some View {
        return Button(action: {
            print(number)
        }) {
            Text(number)
                .padding(15)
                .background(Color.white)
                .foregroundColor(.pink)
                .border(Color.red, width: 5)
                .border(Color.pink, width: 10)
                .font(.title2)
                .cornerRadius(15)
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


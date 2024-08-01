//
//  CelciusSample.swift
//  SwiftUiTutoriaal
//
//  Created by Bahadır Sengun on 1.08.2024.
//

import SwiftUI

struct CelciusSample: View {
    //değişkenler
    @State var celcius = "0"
    @State var fahrenayt = "0"
    var title = "Celcius to Fahrenheit"
    
    var body: some View {
        
        
        Text(title)
            .padding()
            .bold()
            .font(.title)

        HStack{
            TextField("celcius", text:$celcius)
                .padding()
                .bold()
                .frame(width: 150, height: 50)
                .background(Color(.lightGray))
                .cornerRadius(12)
                .padding()
                
            
            Button{
                if let celcius1 = Double(celcius), let fahrenayt1 = Double(fahrenayt){
                    fahrenayt = String(celcius1 * 1.8 + 32)
                } else {
                    fahrenayt = "Invalid Number"
                }
            }
        label:{
            Image(systemName: "arrowshape.turn.up.backward")
        }
            
            Text("Fahrenayt: \(fahrenayt)")
                .padding()
            
        }
        Spacer()
    
    }
}
    
    #Preview {
        CelciusSample()
    }



//
//  ContentView.swift
//  classwork2
//
//  Created by selsabil mohamed on 10/31/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var weight: String = ""
    @State var height: String = ""
    @State var BMI_String: String = "..."
    @State var category: String = "Category appears here..."
    var body: some View{
        Form{
            VStack{//VStack = vertical stack
                Text("BMI calculator app").fontWeight(.bold).font(.largeTitle).padding(.top, 50)
                HStack{
                    Text("your weight in kg:")
                    TextField("please enter it here:", text: $weight)
                        .padding(.bottom)
                        .padding(.top)
                    
                }
                
            }
        }
    }
}

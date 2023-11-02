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
                    HStack {
                        Text("your height in cm:")
                        TextField("please enter it here", text: $height)
                    }
                }.padding(.bottom, 50)
                Button(action: {
                    let weight_float = Float(self.weight)
                    let height_float = Float(self.height)
                    let BMI = weight_float!/pow((height_float! / 100), 2)
                            self.BMI_String = String(BMI)
                                                switch BMI {
                    case 1..<15:
                        self.category = "very severly underweight"
                    case 15..<16:
                        self.category = "severly underweight"
                    case 16..<18.5:
                        self.category = "underweight"
                    case 18.5..<25:
                        self.category = "normal weight"
                    case 25..<30:
                        self.category = "overweight"
                    case 30..<40:
                        self.category = "moderately obese"
                    case 40..<60:
                        self.category = "severely obese"
                    default:
                        return
                    }}) {
                        Text("calculate my bmi!!")
                            .fontWeight(.bold)
                            .font(.title)
                    }
                        .background(Color.white)
                        .padding(.bottom, 50)
                    HStack { Text("your bmi is").foregroundColor(Color.blue).font(.title)}.padding(.bottom, 25)
                    Text(self.category)
                        .fontWeight(.bold).font(.title).background(Color.yellow)
                        
                    }
                    }
                }
                    
                }
                

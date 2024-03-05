//
//  ContentView.swift
//  iPhone Calculator
//
//  Created by StudentAM on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var display: String = "0"
    @State private var resetButton: String = "AC"
    @State private var signPos: Bool = true
    @State private var isAdd: Bool = false
    var body: some View {
        VStack{
            HStack{
                Spacer()

                Text(String(display))
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(size: 75))
            }
            
            HStack{
                Button(resetButton, action: reset)
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 212 / 255, green: 212 / 255, blue: 210 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Button("+/-", action: sign)
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 212 / 255, green: 212 / 255, blue: 210 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Button("%", action: percent)
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 212 / 255, green: 212 / 255, blue: 210 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Button("÷"){}
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 7)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "7")
                    }
                }) {
                    Text("7")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 8)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "8")
                    }
                }) {
                    Text("8")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 9)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "9")
                    }
                }) {
                    Text("9")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button("x"){}
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 4)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "4")
                    }
                }) {
                    Text("4")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 5)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "5")
                    }
                }) {
                    Text("5")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 6)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "6")
                    }
                }) {
                    Text("6")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button("-"){}
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 1)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "1")
                    }
                }) {
                    Text("1")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 2)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "2")
                    }
                }) {
                    Text("2")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button(action: {
                    if (isAdd){
                        if let displayInt = Int(display){
                            display = ""
                            display = String(displayInt + 3)
                        }
                        isAdd = false
                    }else{
                        calculation(num: "3")
                    }
                }) {
                    Text("3")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button("+"){
                    operation(operation: "+")
                }
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Button(action: {
                    calculation(num: "0")
                }) {
                    Text("0")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button("."){}
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                Button("="){}
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            .fixedSize(horizontal: false, vertical: true)
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        .background(Color(red: 28 / 255, green: 28 / 255, blue: 28 / 255))
        .ignoresSafeArea()
    }
    
    func calculation(num: String){
        if (display == "0"){
            display = ""
        }
        display += num
        resetButton = "C"
    }
    
    func reset(){
        display = "0"
        resetButton = "AC"
    }
    
    func sign(){
        if (signPos){
            display = "-" + display
            signPos = false
            return
        }
        
        display = String(display.suffix(display.count-1))
        signPos = true
    }
    
    func percent(){
        if let displayDouble = Double(display){
            display = String(displayDouble / 100)
        }
    }
    
    func operation(operation: String){
        if (operation == "+"){
            isAdd = true
        }
    }
}

#Preview {
    ContentView()
}

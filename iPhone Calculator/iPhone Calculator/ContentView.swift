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
    @State private var isSub: Bool = false
    @State private var isMulti: Bool = false
    @State private var isDivide: Bool = false
    @State private var firstOperand: Int = 0
    @State private var secondOperand: Int = 0
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
                Button("÷"){
                    operation(operation: "÷", num: secondOperand)
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 7
                    }
                    calculation(num: "7")
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 8
                    }
                    calculation(num: "8")
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 9
                    }
                    calculation(num: "9")
                }) {
                    Text("9")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button("x"){
                    operation(operation: "x", num: secondOperand)
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 4
                    }
                    calculation(num: "4")
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 5
                    }
                    calculation(num: "5")
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 6
                    }
                    calculation(num: "6")
                }) {
                    Text("6")
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Button("-"){
                    operation(operation: "-", num: secondOperand)
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 1
                    }
                    calculation(num: "1")
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 2
                    }
                    calculation(num: "2")
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
                    if(isAdd || isSub || isMulti || isDivide){
                        secondOperand = 3
                    }
                    calculation(num: "3")
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
                    operation(operation: "+", num: secondOperand)
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
                Button("="){
                    operation(operation: "", num: secondOperand)
                }
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
        if let displayInt = Int(display.prefix(1)), display == "0" || isAdd || isSub || isMulti || isDivide{
            firstOperand = Int(displayInt)
            display = ""
        }
        display += num
        resetButton = "C"
    }
    
    func reset(){
        display = "0"
        resetButton = "AC"
        signPos = true
        isAdd = false
        isSub = false
        isMulti = false
        isDivide = false
        firstOperand = 0
        secondOperand = 0
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
    
    func operation(operation: String, num: Int){
        if (operation == "+"){
            if (isAdd && num == 7 ){
                display = ""
                display = String(firstOperand + 7)
            }else if (isAdd && num == 8 ){
                display = ""
                display = String(firstOperand + 8)
            }else if (isAdd && num == 9 ){
                display = ""
                display = String(firstOperand + 9)
            }else if (isAdd && num == 4 ){
                display = ""
                display = String(firstOperand + 4)
            }else if (isAdd && num == 5 ){
                display = ""
                display = String(firstOperand + 5)
            }else if (isAdd && num == 6 ){
                display = ""
                display = String(firstOperand + 6)
            }else if (isAdd && num == 1 ){
                display = ""
                display = String(firstOperand + 1)
            }else if (isAdd && num == 2 ){
                display = ""
                display = String(firstOperand + 2)
            }else if (isAdd && num == 3 ){
                display = ""
                display = String(firstOperand + 3)
            }else{
                isAdd = true
            }
        }else if(operation == "-"){
            if (isSub && num == 7 ){
                display = ""
                display = String(firstOperand - 7)
            }else if (isAdd && num == 8 ){
                display = ""
                display = String(firstOperand - 8)
            }else if (isSub && num == 9 ){
                display = ""
                display = String(firstOperand - 9)
            }else if (isSub && num == 4 ){
                display = ""
                display = String(firstOperand - 4)
            }else if (isSub && num == 5 ){
                display = ""
                display = String(firstOperand - 5)
            }else if (isSub && num == 6 ){
                display = ""
                display = String(firstOperand - 6)
            }else if (isSub && num == 1 ){
                display = ""
                display = String(firstOperand - 1)
            }else if (isSub && num == 2 ){
                display = ""
                display = String(firstOperand - 2)
            }else if (isSub && num == 3 ){
                display = ""
                display = String(firstOperand - 3)
            }else{
                isSub = true
            }
        }else if(operation == "x"){
            if (isMulti && num == 7 ){
                display = ""
                display = String(firstOperand * 7)
            }else if (isMulti  && num == 8 ){
                display = ""
                display = String(firstOperand * 8)
            }else if (isMulti  && num == 9 ){
                display = ""
                display = String(firstOperand * 9)
            }else if (isMulti  && num == 4 ){
                display = ""
                display = String(firstOperand * 4)
            }else if (isMulti && num == 5 ){
                display = ""
                display = String(firstOperand * 5)
            }else if (isMulti  && num == 6 ){
                display = ""
                display = String(firstOperand * 6)
            }else if (isMulti  && num == 1 ){
                display = ""
                display = String(firstOperand * 1)
            }else if (isMulti  && num == 2 ){
                display = ""
                display = String(firstOperand * 2)
            }else if (isMulti  && num == 3 ){
                display = ""
                display = String(firstOperand * 3)
            }else{
                isMulti  = true
            }
        }else if(operation == "÷"){
            if (isDivide && num == 7 ){
                display = ""
                display = String(firstOperand / 7)
            }else if (isDivide && num == 8 ){
                display = ""
                display = String(firstOperand / 8)
            }else if (isDivide  && num == 9 ){
                display = ""
                display = String(firstOperand / 9)
            }else if (isDivide  && num == 4 ){
                display = ""
                display = String(firstOperand / 4)
            }else if (isDivide && num == 5 ){
                display = ""
                display = String(firstOperand / 5)
            }else if (isDivide  && num == 6 ){
                display = ""
                display = String(firstOperand / 6)
            }else if (isDivide  && num == 1 ){
                display = ""
                display = String(firstOperand / 1)
            }else if (isDivide  && num == 2 ){
                display = ""
                display = String(firstOperand / 2)
            }else if (isDivide  && num == 3 ){
                display = ""
                display = String(firstOperand / 3)
            }else{
                isDivide  = true
            }
        }else{
            display = String(firstOperand + secondOperand)
        }
    }
}

#Preview {
    ContentView()
}

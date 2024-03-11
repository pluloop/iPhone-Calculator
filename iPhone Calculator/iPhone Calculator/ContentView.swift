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
    @State private var isEqual: Bool = false
    @State private var firstOperandStr: String = ""
    @State private var secondOperandStr: String = ""
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()

                Text(String(display))
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(size: 75))
                Spacer()
            }
            
            HStack{
                Spacer()
                Button(resetButton, action: reset)
                    .frame(maxWidth: 60)
                    .frame(maxHeight: 100)
                    .background(Color(red: 212 / 255, green: 212 / 255, blue: 210 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Spacer()
                Button("+/-", action: sign)
                    .frame(maxWidth: 60)
                    .frame(maxHeight: 100)
                    .background(Color(red: 212 / 255, green: 212 / 255, blue: 210 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Spacer()
                Button("%", action: percent)
                    .frame(maxWidth: 60)
                    .frame(maxHeight: 100)
                    .background(Color(red: 212 / 255, green: 212 / 255, blue: 210 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Spacer()
                Button("÷"){
                    if isDivide{
                        secondOperandStr = display
                    } else{
                        firstOperandStr = display
                    }
                    
                    if isDivide{
                        operation()
                    }else{
                        isDivide = true
                    }
                }
                    .frame(maxWidth: 60)
                    .frame(maxHeight: 100)
                    .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .cornerRadius(90)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "7"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "7"
                    }
                    calculation(num: "7")
                }) {
                    Text("7")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "8"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "8"
                    }
                    calculation(num: "8")
                }) {
                    Text("8")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "9"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "9"
                    }
                    calculation(num: "9")
                }) {
                    Text("9")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button("x"){
                    if isMulti{
                        secondOperandStr = display
                    } else{
                        firstOperandStr = display
                    }
                    
                    if isMulti{
                        operation()
                    }else{
                        isMulti = true
                    }
                }
                .frame(maxWidth: 60)
                .frame(maxHeight: 100)
                .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                .cornerRadius(90)
                .foregroundColor(.white)
                .font(.system(size: 50))
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "4"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "4"
                    }
                    calculation(num: "4")
                }) {
                    Text("4")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "5"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "5"
                    }
                    calculation(num: "5")
                }) {
                    Text("5")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "6"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "6"
                    }
                    calculation(num: "6")
                }) {
                    Text("6")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button("-"){
                    if isSub{
                        secondOperandStr = display
                    } else{
                        firstOperandStr = display
                    }
                    
                    if isSub{
                        operation()
                    }else{
                        isSub = true
                    }
                }
                .frame(maxWidth: 60)
                .frame(maxHeight: 100)
                .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                .cornerRadius(90)
                .foregroundColor(.white)
                .font(.system(size: 50))
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "1"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "1"
                    }
                    calculation(num: "1")
                }) {
                    Text("1")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "2"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "2"
                    }
                    calculation(num: "2")
                }) {
                    Text("2")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button(action: {
                    if secondOperandStr != ""{
                        secondOperandStr += "3"
                    }
                    else if(isAdd || isSub || isMulti || isDivide){
                        display = ""
                        secondOperandStr += "3"
                    }
                    calculation(num: "3")
                }) {
                    Text("3")
                        .frame(maxWidth: 60)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button("+"){
                    if isAdd{
                        secondOperandStr = display
                    } else{
                        firstOperandStr = display
                    }
                    
                    if isAdd{
                        operation()
                    }else{
                        isAdd = true
                    }
                }
                .frame(maxWidth: 60)
                .frame(maxHeight: 100)
                .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                .cornerRadius(90)
                .foregroundColor(.white)
                .font(.system(size: 50))
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            
            HStack{
                Spacer()
                Button(action: {
                    calculation(num: "0")
                }) {
                    Text("0")
                        .frame(maxWidth: 150)
                        .frame(maxHeight: 100)
                        .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                        .cornerRadius(90)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                Spacer()
                Button("."){
                    display += "."
                }
                .frame(maxWidth: 60)
                .frame(maxHeight: 100)
                .background(Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255))
                .cornerRadius(90)
                .foregroundColor(.white)
                .font(.system(size: 50))
                Spacer()
                Button("="){
                    isEqual = true
                    operation()
                }
                .frame(maxWidth: 60)
                .frame(maxHeight: 100)
                .background(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                .cornerRadius(90)
                .foregroundColor(.white)
                .font(.system(size: 50))
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        .background(Color(red: 28 / 255, green: 28 / 255, blue: 28 / 255))
        .ignoresSafeArea()
    }
    
    func calculation(num: String){
        if display == "0"{
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
        firstOperandStr = ""
        secondOperandStr = ""
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
    
    func operation(){
        if firstOperandStr.contains(".") || secondOperandStr.contains("."){
            if let firstOperandInt = Double(firstOperandStr), let secondOperandInt = Double(secondOperandStr), isEqual{
                display = ""
                if isAdd{
                    display = String(firstOperandInt + secondOperandInt)
                }else if isSub{
                    display = String(firstOperandInt - secondOperandInt)
                }else if isMulti{
                    display = String(firstOperandInt * secondOperandInt)
                } else if isDivide{
                    display = String(firstOperandInt / secondOperandInt)
                }
                isEqual = false
            }else if let firstOperandInt = Double(firstOperandStr), let secondOperandInt = Double(secondOperandStr), isAdd{
                display = ""
                display = String(firstOperandInt + secondOperandInt)
                isAdd = false
            }else if let firstOperandInt = Double(firstOperandStr), let secondOperandInt = Double(secondOperandStr), isSub{
                display = ""
                display = String(firstOperandInt - secondOperandInt)
                isSub = false
            }else if let firstOperandInt = Double(firstOperandStr), let secondOperandInt = Double(secondOperandStr), isMulti{
                display = ""
                display = String(firstOperandInt * secondOperandInt)
                isMulti = false
            }else if let firstOperandInt = Double(firstOperandStr), let secondOperandInt = Double(secondOperandStr), isDivide{
                display = ""
                display = String(firstOperandInt / secondOperandInt)
                isMulti = false
            }
        }else{
            if let firstOperandInt = Int(firstOperandStr), let secondOperandInt = Int(secondOperandStr), isEqual{
                display = ""
                if isAdd{
                    display = String(firstOperandInt + secondOperandInt)
                }else if isSub{
                    display = String(firstOperandInt - secondOperandInt)
                }else if isMulti{
                    display = String(firstOperandInt * secondOperandInt)
                } else if isDivide{
                    display = String(firstOperandInt / secondOperandInt)
                }
                isEqual = false
            }else if let firstOperandInt = Int(firstOperandStr), let secondOperandInt = Int(secondOperandStr), isAdd{
                display = ""
                display = String(firstOperandInt + secondOperandInt)
                isAdd = false
            }else if let firstOperandInt = Int(firstOperandStr), let secondOperandInt = Int(secondOperandStr), isSub{
                display = ""
                display = String(firstOperandInt - secondOperandInt)
                isSub = false
            }else if let firstOperandInt = Int(firstOperandStr), let secondOperandInt = Int(secondOperandStr), isMulti{
                display = ""
                display = String(firstOperandInt * secondOperandInt)
                isMulti = false
            }else if let firstOperandInt = Int(firstOperandStr), let secondOperandInt = Int(secondOperandStr), isDivide{
                display = ""
                display = String(firstOperandInt / secondOperandInt)
                isMulti = false
            }
        }
    }
}

#Preview {
    ContentView()
}

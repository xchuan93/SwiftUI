// ContentView.swift
// SwiftUILearning
//
// Created by mac on 2024/12/5.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var ispressed:Bool = false
    
    private let namePlaceholder = "请输入昵称"
    private let passwordPlaceholder = "请输入密码"
    private let confirmPasswordPlaceholder = "请再次输入密码"
    
    var body: some View {
        VStack {
            
            Text("Linear Gradient")
                .frame(height: 60)
                .foregroundStyle(LinearGradient(colors: [.white, .red], startPoint: .leading, endPoint: .trailing))
                .font(.largeTitle)
                .fontWeight(.bold)
                .italic()
                .shadow(color: .orange, radius: 10)
                .position(x: Constants.screenWidth / 2.0,y: 100)
            VStack(spacing:20) {
                HStack {
                    Text("昵称:")
                        .foregroundStyle(Color.black)
                        .italic()
                        .font(.system(size: 18))
                    TextField(namePlaceholder, text: $name, onEditingChanged: { changed in
                        print("onEditing: \(changed)")
                    })
                    .padding(10)
                    .frame(height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange)
                    )
                    .padding(.leading,30)
                }
                .padding([.leading,.trailing],20)
                
                HStack {
                    Text("密码:")
                        .foregroundStyle(Color.black)
                        .italic()
                        .font(.system(size: 18))
                    SecureField(passwordPlaceholder, text: $password)
                        .padding(10)
                        .frame(height: 40)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke( Color.orange))
                        .padding(.leading,30)
                    
                }
                .padding([.leading,.trailing],20)
                
                HStack {
                    Text("确认密码:")
                        .foregroundStyle(Color.black)
                        .italic()
                        .font(.system(size: 18))
                    TextField(
                        confirmPasswordPlaceholder, text: $confirmPassword,
                        prompt: Text(confirmPasswordPlaceholder)
                            .font(.system(size: 14))
                    )
                    .padding(10)
                    .frame(height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange)
                    )
                    
                }
                .padding([.leading,.trailing],20)
                
                Button("确认") {
                   ispressed = !ispressed
                }
                .frame(width: 300,height: 50)
                .background(LinearGradient(colors: [.red,.orange], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                .font(.system(size: 20))
                .italic()
                .foregroundColor(.white)
                .padding(.top,40)
                .scaleEffect(ispressed ? 0.9:1.0)
            }
            .padding(.bottom,250)
        }
        .background(LinearGradient(colors: [Color.blue.opacity(0.7),Color.orange.opacity(0.7)], startPoint: .top, endPoint: .bottom))
    }
    
    private func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    ContentView()
}

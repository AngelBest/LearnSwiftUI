//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by 宋秀腾 on 2023-06-25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @State var tt = 0.0
    
    var body: some View {
        
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 90, maxHeight: 107.5)
                .padding(.top, 90)
            
            LoginInputView(iconName: "account", placeholder: "请输入您的账号", fieldValue: $viewModel.account)
                .frame(width: UIScreen.main.bounds.width - 80)
                .padding(.top, 76)
            
            LoginInputView(iconName: "password", placeholder: "请输入您的密码", fieldValue: $viewModel.password)
                .frame(width: UIScreen.main.bounds.width - 80)
                .padding(.top, 21)
            
            HStack {
                Button("忘记密码？") {
                    
                }.foregroundColor(.white)
                
                Spacer()
                
                Button("注册用户") {
                    
                }.foregroundColor(.white)
            }
            .padding(.top, 26)
            .frame(width: UIScreen.main.bounds.width - 80)
            
            Button("登录") {
                
            }
            .buttonStyle(.theme)
            .padding(.top, 30)
            
            HStack() {
                Button {
                    viewModel.agreeTo.toggle()
                } label: {
                    HStack {
                        Image(viewModel.agreeTo ? "agree-select" : "agree")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15)
                        
                        Text("我同意并遵循")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                }
                .buttonStyle(.noHight)
                
                Text("《玖誉德App用户使用协议》")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 80, height: 15)
            .padding(.top, 30)

            
            
            
            
            
            
            Spacer()
        }
        .ignoresSafeArea()
        .background {
            Image("login-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
        
        
        
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


struct LoginInputView: View {
    var iconName = ""
    var placeholder = ""
    var height = 48.0
    @Binding var fieldValue: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16.5)
            
            TextField("", text: $fieldValue)
                .foregroundColor(.white)
                .placeholder(placeholder, color: .white, when: fieldValue.isEmpty)
                
            
        }
        .padding([.leading, .trailing], 20)
        .frame(height: height)
        .background(Color.white.opacity(0.5).cornerRadius(height * 0.5))
    }
    
    
}







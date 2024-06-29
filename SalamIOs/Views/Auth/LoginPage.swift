//
//  LoginPage.swift
//  SalamIOs
//
//  Created by Almaz Saparbaev on 28/6/24.
//

import SwiftUI

struct LoginPage: View {
    @Binding var loginText:  String
    @Binding var passText: String
    var body: some View {
        ZStack{
            Color.clear
                           .contentShape(Rectangle())
                           .onTapGesture {
                               UIApplication.shared.endEditing()
                           }
            VStack{
                BackButton().frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                Text("Войти").foregroundColor(Color("AuthColor"))
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                    .padding(.top, 50)
                    .padding(.bottom, 10)
                Text("Ваш адресс эл. почты").frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color("AuthColor"))
                    .font(.system(size: 14))
                
                    .padding(.horizontal, 20)
                CustomTextField(placeholder: "", text: $loginText, leftIcon: "person.fill", borderColor: Color("MainColor")).padding(.horizontal, 10)
                    .padding(.bottom, 10)
                Text("Пароль").frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color("AuthColor"))
                    .font(.system(size: 14))
                
                    .padding(.horizontal, 20)
                CustomTextField(placeholder: "", iconHeight: 20, text: $passText, leftIcon: "lock.fill",  borderColor: Color("MainColor"), isPass: true).padding(.horizontal, 10)                .padding(.bottom, 10)
                
                CommonButton(text: "Войти", action: justTest, textColor: Color("DarkMain"), backColor: Color("LightMain"))  .padding(.horizontal, 10)              .padding(.bottom, 10)
                Button(action: {}){
                    Text("Забыли пароль?").foregroundColor(Color("MainColor")).fontWeight(.bold) .overlay(
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(Color("MainColor"))
                            .padding(.top, 28)
                        , alignment: .bottom
                    )
                }
                
                Spacer()
                VStack{
                    Text("Или войдите через:").frame(maxWidth: .infinity).foregroundColor(Color("AuthColor"))
                        .padding()
                    HStack{
                        SocialMediaButton(action: justTest, icon: "apple")
                        SocialMediaButton(action: justTest, icon: "facebook")
                        SocialMediaButton(action: justTest, icon: "google")
                    }.padding(.horizontal)
                }
            }
        }
    }
    func justTest(){
        print("asd")
    }
}


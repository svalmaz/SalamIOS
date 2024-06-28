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
        VStack{
            BackButton().frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            Text("Войти").foregroundColor(Color("AuthColor"))
                .fontWeight(.bold)
                .font(.system(size: 30))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 50)
                .padding(.bottom, 10)
            Text("Ваш адресс эл. почты").frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("AuthColor"))
                .font(.system(size: 14))

                .padding(.horizontal, 20)
            CustomTextField(placeholder: "", text: $loginText, leftIcon: "person.fill", borderColor: Color("MainColor")).padding(.horizontal, 20)
                .padding(.bottom, 10)
            Text("Пароль").frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("AuthColor"))
                .font(.system(size: 14))

                .padding(.horizontal, 20)
            CustomTextField(placeholder: "", iconHeight: 20, text: $passText, leftIcon: "lock.fill",  borderColor: Color("MainColor"), isPass: true).padding(.horizontal, 20)                .padding(.bottom, 10)

            CommonButton(text: "Войти", action: justTest, textColor: Color("DarkMain"), backColor: Color("LightMain"))                .padding(.bottom, 10)
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
            

        }
    }
    func justTest(){
        print("asd")
    }
}


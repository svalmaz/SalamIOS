//
//  RegisterPage.swift
//  SalamIOs
//
//  Created by Almaz Saparbaev on 29/6/24.
//

import SwiftUI

struct RegisterPageEmail: View {
    @Binding var emailText: String
    @Binding var passText: String
    @Binding var nameText: String
    var body: some View {
        ZStack{
            Color.clear.contentShape(Rectangle())
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            VStack{
                BackButton().frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                Text("Регистрация").foregroundColor(Color("AuthColor"))
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                Text("Ваш адресс эл. почты").frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color("AuthColor"))
                    .font(.system(size: 14))
                
                    .padding(.horizontal, 20)
                CustomTextField(placeholder: "", text: $emailText, leftIcon: "at", borderColor: Color("MainColor")).padding(.horizontal, 10)
                    .padding(.bottom, 10)
                Text("Пароль").frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color("AuthColor"))
                    .font(.system(size: 14))
                
                    .padding(.horizontal, 20)
                CustomTextField(placeholder: "", iconHeight: 20, text: $passText, leftIcon: "lock.fill",  borderColor: Color("MainColor"), isPass: true).padding(.horizontal, 10)
                    .padding(.bottom, 10)
                Text("Ваше имя").frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color("AuthColor"))
                    .font(.system(size: 14))
                
                    .padding(.horizontal, 20)
                CustomTextField(placeholder: "", text: $nameText, leftIcon: "person.fill", borderColor: Color("MainColor")).padding(.horizontal, 10)
                    .padding(.bottom, 10)
                CommonButton(text: "Продолжить", action: justTest, textColor: Color("DarkMain"), backColor: Color("LightMain"))  .padding(.horizontal, 10)              .padding(.bottom, 10)
                Spacer()
            }
        }
    }
    func justTest(){
        print("asd")
    }
}

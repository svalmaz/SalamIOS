//
//  ContentView.swift
//  SalamIOs
//
//  Created by Almaz Saparbaev on 26/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var pass = ""
    @State private var email = ""
    @State var showAlert = false
    var body: some View {
       
       AuthPage()
        
        /* NavigationView{
            RegisterVerificationEmail()
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
       */
        /*
        VStack{
            BackButton()
            Text("Ваш адресс эл. почты").foregroundColor(Color("AuthColor"))
                
                               .padding(.leading, 15)
                               .frame(maxWidth: .infinity, alignment: .leading) // Убедитесь, что текст прижат к левому краю

            CustomTextField(placeholder: "Name", text: $name, leftIcon: "person", borderColor: Color("MainColor")).padding(.horizontal)
            /*
            Spacer()
           
            CustomTextField(placeholder: "Pass", iconHeight: 20, text: $name, leftIcon: "lock").padding(.horizontal)
             */
            OneIconButton(text: "Позвонить", action: testAction, textColor: .white, backColor: .red, icon: "person.2")
            CommonButton(text: "Вход", action: testAction, textColor: .white, backColor: .blue)
            Spacer()

            SettingsButton(text: "Изменить пароль", action: testAction, icon: "lock.open.rotation")
            SettingsButton(text: "Помощь", action: testAction, icon: "question.circle")
            SettingsButton(text: "Контакты", action: testAction, icon: "person.2")
            
        }*/
       //LoginPage(loginText: $name, passText: $pass)
       // RegisterPage(emailText: $email, passText: $pass, nameText: $name)
    }
    public func testAction(){
     name = "asd"
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}

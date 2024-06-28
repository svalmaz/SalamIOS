//
//  BackButton.swift
//  SalamIOs
//
//  Created by Almaz Saparbaev on 28/6/24.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button(action:{            dismiss()
}){
            Image(systemName: "xmark").resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color("MainColor"))
                .frame(width: 20, height: 20)
                .padding()
                .background( Color("BackButtonBackground") )
                .clipShape(Circle())
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}

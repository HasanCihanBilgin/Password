//
//  PasswordRulesView.swift
//  Password
//
//  Created by Hasan Cihan Bilgin on 11.08.2024.
//

import SwiftUI

struct PasswordRulesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Şifre Belirleme Kuralları")
                .font(.headline)
                .padding(.bottom, 8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("• 6 haneli rakamdan oluşmalıdır.")
                Text("• Aynı rakamdan 4 tane olmamalıdır.")
                Text("• 3 tane ardışık rakam olmamalıdır.")
                Text("• Doğum yılı içermemelidir.")
            }
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    PasswordRulesView()
}

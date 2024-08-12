//
//  PasswordChangeView.swift
//  Password
//
//  Created by Hasan Cihan Bilgin on 11.08.2024.
//

import SwiftUI

struct PasswordChangeView: View {
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var frequency: String = "3 Ay"
    @State private var showPasswordRules = false
    let frequencies = ["1 Ay", "3 Ay", "6 Ay", "12 Ay"]
    
    var body: some View {
        VStack(spacing: 16) {
            // Başlık ve açıklama
            VStack(alignment: .leading, spacing: 8) {
                Text("Yeni Şifre Belirleme")
                    .font(.headline)
                    .foregroundColor(.blue)
                
                Text("Mobil uygulama ve internet şubeye giriş yaparken kullanacağınız 6 haneli şifrenizi belirleyiniz.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 20)
            
            // Şifre alanı
            HStack {
                TextField("Şifre", text: $password)
                    .padding()
                
                Button(action: {
                    showPasswordRules.toggle()
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(.gray)
                }
                .padding(.trailing, 10)
            }
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .sheet(isPresented: $showPasswordRules) {
                PasswordRulesView()
            }

            // Şifre tekrar alanı
            TextField("Şifre Tekrar", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            
            // Şifre güncelleme sıklığı
            HStack {
                Text("Şifre Güncelleme Sıklığı")
                    .foregroundColor(.gray)
                Spacer()
                Picker("", selection: $frequency) {
                    ForEach(frequencies, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .frame(maxWidth: 150)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
            Spacer()
            
            // Güncelle butonu
            Button(action: {
                // Güncelleme butonuna tıklanma aksiyonu
            }) {
                Text("Güncelle")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Şifre Değişikliği")
    }
}

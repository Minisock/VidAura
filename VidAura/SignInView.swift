//
//  SignInView.swift
//  VidAura
//
//  Created by Amarjeet Kumar on 17/08/24.
//

import SwiftUI

struct SignInView: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color("AppBackgroundColor")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 30) {
                HStack(spacing: 0) {
                    Image("VidAuraLogo")
                    Image("vidaura")
                        .padding(.top,22)
                }
                .padding(.leading)
                
                Text("Sign In")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                
                VStack(spacing: 20.0) {
                    ExtractedView(text: $email, textFieldText: "Your email address", detail: "Email")
                    PasswordField(text: $password, textFieldText: "Your password", detail: "Password")
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Forgot password")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color(uiColor: UIColor.systemGray2))
                })
                
                Button(action: {
                    
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color("AppBackgroundColor"))
                        .padding()
                        .background(
                            Color("AppColor")
                                .cornerRadius(10.0)
                        )
                    
                })
                
                HStack {
                    Text("Don't have an account?")
                        .font(.subheadline)
                        .foregroundColor(Color(uiColor: UIColor.systemGray6))
                    
                    Button(action: {
                        
                    }, label: {
                        Text("SignUp")
                            .font(.headline)
                            .foregroundColor(Color("AppColor"))
                    })
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SignInView()
}

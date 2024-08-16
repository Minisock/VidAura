//
//  SignupView.swift
//  VidAura
//
//  Created by Amarjeet Kumar on 17/08/24.
//

import SwiftUI

struct SignupView: View {
    
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
                
                Text("Sign Up")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                
                VStack(spacing: 20.0) {
                    ExtractedView(text: $username, textFieldText: "Your unique username", detail: "Username")
                    ExtractedView(text: $email, textFieldText: "Your email address", detail: "Email")
                    PasswordField(text: $password, textFieldText: "Your password", detail: "Password")
                }
                
                Button(action: {
                    //
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
                    Text("Already have an account?")
                        .font(.subheadline)
                        .foregroundColor(Color(uiColor: UIColor.systemGray6))
                    
                    Button(action: {
                        //
                    }, label: {
                        Text("LogIn")
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
    SignupView()
}

struct ExtractedView: View {
    
    @Binding var text: String
    @State var textFieldText: String
    @State var detail: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
                Text(detail)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(uiColor: UIColor.systemGray6))
                .font(.headline)
            
                TextField("", text: $text, prompt: Text(textFieldText)
                    .foregroundColor(Color(uiColor: UIColor.systemGray2)))
                    .padding()
                    .background(
                        Color("AppBackgroundColorSecondary")
                            .cornerRadius(10.0)
                    )
                    .foregroundColor(.white)
        }
    }
}

struct PasswordField: View {
    
    @Binding var text: String
    @State var textFieldText: String
    @State var detail: String
    @State var isShowingPassword = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Text(detail)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(uiColor: UIColor.systemGray6))
                .font(.headline)
                
                HStack {
                    ZStack(alignment: .trailing) {
                        SecureField("", text: $text, prompt: Text(textFieldText)
                            .foregroundColor(Color(uiColor: UIColor.systemGray2)))
                            .padding()
                            .background(
                                Color("AppBackgroundColorSecondary")
                                    .cornerRadius(10.0)
                            )
                            .foregroundColor(.white)
                        .opacity(isShowingPassword ? 0 : 1)
                        
                        TextField("", text: $text, prompt: Text(textFieldText)
                            .foregroundColor(Color(uiColor: UIColor.systemGray2)))
                            .padding()
                            .background(
                                Color("AppBackgroundColorSecondary")
                                    .cornerRadius(10.0)
                            )
                            .foregroundColor(.white)
                            .opacity(isShowingPassword ? 1 : 0)
                        
                        Button(action: {
                            isShowingPassword.toggle()
                        }, label: {
                                Image(systemName: isShowingPassword ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(.gray)
                                    .padding()
                        })
                    }
                }
            }
        }
    }
}

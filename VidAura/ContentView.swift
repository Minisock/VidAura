//
//  ContentView.swift
//  VidAura
//
//  Created by Amarjeet Kumar on 16/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("AppBackgroundColor")
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    HStack {
                        Image("VidAuraLogo")
                        Image("vidaura")
                            .padding(.top,20)
                    }
                    
                    ZStack {
                        Image("Ornament Blink")
                        Image("Card2")
                            .padding(.leading, 100)
                        Image("Card1")
                            .padding(.trailing, 100)
                    }
                    
                    VStack(spacing: 0) {
                        Text("Discover Endless")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.custom("Poppins-Regular", size: 40))
                            .foregroundColor(.white)
                            .padding(.top, 20)

                        HStack(spacing: 15) {
                            Text("Possibilities with")
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.custom("Poppins-Regular", size: 24))
                                .foregroundColor(.white)
                            
                            VStack(spacing: -40) {
                                Image("VidAuraLogo2")
                                Image("VidAuraLine")
                            }
                            .frame(width: 140, height: 10)
                        }
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                    
                    Text("Unleash the Power of AI, Share the Magic of Creativity")
                        .font(.custom("Poppins-Regular", size: 13))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Coninue with Email")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 350)
                            .background(
                                LinearGradient(colors: [Color("AppColor")], startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(10.0)
                    })
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

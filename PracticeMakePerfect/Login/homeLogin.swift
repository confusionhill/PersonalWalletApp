//
//  homeLogin.swift
//  PracticeMakePerfect
//
//  Created by Farhandika Zahrir Mufti guenia on 13/05/21.
//

import SwiftUI

struct homeLogin: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color(.purple).ignoresSafeArea(edges: .all)
                VStack{
                    Image(systemName: "applelogo")
                        .resizable()
                        .frame(width: 250, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    NavigationLink(destination: LoginScreen()) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: UIScreen.screenWidth-100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .overlay(
                                    Text("Sign In")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.purple)
                                        .font(Font.system(size: 20, design: .rounded))
                                )
                    }.padding(.top,170)
                    NavigationLink(destination: Text("Second View")) {
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .font(Font.system(size: 20, design: .rounded))
                    }
                    .padding(.top,20)
                    Spacer()
                }
            }
        }.accentColor(.white)
    }
}

struct homeLogin_Previews: PreviewProvider {
    static var previews: some View {
        homeLogin()
    }
}


//
//  LoginScreen.swift
//  PracticeMakePerfect
//
//  Created by Farhandika Zahrir Mufti guenia on 13/05/21.
//

import SwiftUI

struct LoginScreen: View {
    @State var username:String = ""
    @State var passwd:String = ""
    @State var isShowPasswd:Bool = false
    var body: some View {
        ZStack{
            Color(.purple).ignoresSafeArea(edges: .top)
            VStack{
                Image(systemName: "applelogo")
                    .resizable()
                    .frame(width: 150, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding(.bottom,30)
                Spacer()
                LoginForm(username: self.$username, passwd: self.$passwd, isShowPasswd: self.$isShowPasswd)
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

struct LoginForm: View {
    @Binding var username:String
    @Binding var passwd:String
    @Binding var isShowPasswd:Bool
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
            VStack {
                Group {
                    TextField("Username", text: self.$username)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    Divider()
                }.padding(.bottom)
                Group {
                    HStack {
                        if isShowPasswd == true{
                            TextField("Password", text: self.$passwd)
                            
                        }else{
                            SecureField("Password", text: self.$passwd)
                        }
                        Spacer()
                        Button(action: {self.isShowPasswd.toggle()}) {
                            Group {                           Image(systemName: self.isShowPasswd ? "eye.slash" : "eye")
                            }.foregroundColor(.secondary)
                        }
                    }
                    Divider()
                }.padding(.bottom)
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.screenWidth-100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                        .overlay(
                            Text("Log In")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .font(Font.system(size: 20, design: .rounded)))
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Forgot Password?")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 20, design: .rounded))
                }.padding(.top,15)
                
                Spacer()
                Text("Mext V4.1")
            }
            .padding(.top,30)
            .padding(.horizontal,40)
        }
    }
}

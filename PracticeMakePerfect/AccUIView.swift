//
//  AccUIView.swift
//  PracticeMakePerfect
//
//  Created by Farhandika Zahrir Mufti guenia on 12/05/21.
//

import SwiftUI

struct AccUIView: View {
    var body: some View {
        ZStack{
            Color(.purple).ignoresSafeArea(edges: .top)
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height:60)
                    .padding(.bottom)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width:UIScreen.main.bounds.size.width-30,height: 210)
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
                    .mask(
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width:UIScreen.main.bounds.size.width-30,height: 210)
                    )
                    .overlay(
                        //Mark : Card Content
                        cardContent()
                    )
                    .padding(.top,60)
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width:UIScreen.main.bounds.size.width)
                        .foregroundColor(.init(white: 0.9))
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width:UIScreen.main.bounds.size.width-30,height: 610)
                        .padding(.bottom)
                        .padding(.top,20)
                        .foregroundColor(.white)
                        
                    // Mark : The Content of the bottom of the app
                    VStack{
                        Text("makan")
                        Spacer()
                    }.padding(.top,40)
                }
                .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                .padding(.top)
            }
        }
    }
}

struct AccUIView_Previews: PreviewProvider {
    static var previews: some View {
        AccUIView()
    }
}


struct cardContent: View {
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "simcard.2")
                .resizable()
                .foregroundColor(.white)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                VStack(alignment:.leading) {
                    Text("16520490")
                        .foregroundColor(.white)
                    Text("Farhandika Zahrir Mufti Guenia")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                Spacer()
                Text("Bank Bigo")
                    .foregroundColor(.white)
            }
        }.padding()
    }
}

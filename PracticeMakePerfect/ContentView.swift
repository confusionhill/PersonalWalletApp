//
//  ContentView.swift
//  PracticeMakePerfect
//
//  Created by Farhandika Zahrir Mufti guenia on 11/05/21.
//

import SwiftUI
/*
 var myColor: CGColor {
     DragGesture().onChanged{ value in
         if value.translation.height > 100 {
             return UIColor.lightGray.cgColor
         } else {
             return UIColor.clear
         }
     } as! CGColor
 }
 */
struct ContentView: View {
    @State var search:String = ""
    @State var showModal:Bool = false
    var body: some View {
        ZStack {
            Color(.purple).ignoresSafeArea(edges: .top)
            VStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height:1)
                ScrollView {
                    VStack{
                        // Mark : Top Content
                        searchView(search: self.$search).padding(.bottom)
                        // Mark : User's Wallet
                        myWalletView()
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack {
                                topContent().padding(.leading,50)
                                topContent()
                                topContent().padding(.trailing,30)
                                //Mark : Top Content
                                /*ForEach(1..<4){indi in
                                    if indi == 1 {
                                        topContent().padding(.leading,50)
                                    } else {
                                        topContent()
                                    }
                                }*/
                            }
                        })//.padding(.leading,30)
                            .padding(.bottom,30)
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width:UIScreen.main.bounds.size.width)
                                .foregroundColor(.init(white: 0.9))
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .frame(width:UIScreen.main.bounds.size.width-30,height: 610)
                                    .padding(.top,30)
                                    .padding(.bottom)
                                    .foregroundColor(.white)
                            // Mark : The Content of the bottom of the app
                            bottomContent(showModal: self.$showModal)
                        }.ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }.fullScreenCover(isPresented: self.$showModal, content: {
            //Mark : Transaction modal
            transactionModal(showModal: self.$showModal)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct searchView: View {
    @Binding var search:String
    var body: some View {
        HStack{
            ZStack {
                RoundedRectangle(cornerRadius: 30, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).frame(width:350,height: 45)
                    .foregroundColor(.white)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .padding()
                            TextField("Search", text: self.$search)
                                .font(Font.system(size: 25, design: .default))
                            Spacer()
                        }
                    )
            }
            //Spacer()
            /*
            Image("Screen Shot 2021-05-10 at 21.27.19")
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50
                       , height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)*/
        }.padding(.horizontal)
    }
}

struct myWalletView: View {
    var body: some View {
        HStack(){
            VStack(alignment:.leading){
                Text("My wallet")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("27 NOV 2020").foregroundColor(.white)
            }
            Spacer()
            Text("$400")
                .font(Font.system(size: 40, design: .default))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.padding().padding(.horizontal)
    }
}

struct topContent: View {
    @State var progressValue: Float = 0.4
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 190, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .overlay(
                HStack(alignment:.top){
                    //Mark : Progress Bar
                    ProgressBar(progress: self.$progressValue)
                                        .frame(width: 50.0, height: 50.0)
                                        .padding()
                    VStack(alignment:.leading) {
                        Text("Makan Bang").padding(.top,20)
                            .font(Font.system(size: 15, design: .default))
                        Text("$400")
                            .font(Font.system(size: 25, design: .default))
                            //.padding(.bottom)
                    }
                    Spacer()
                }
            )
    }
}

struct ProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
            ZStack() {
                Circle()
                    .stroke(lineWidth: 10.0)
                    .opacity(0.3)
                    .foregroundColor(Color.red)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.red)
                    .rotationEffect(Angle(degrees: 270.0))
                    .animation(.linear)
                Text(String(format: "-%.0f %", min(self.progress, 1.0)*100.0))
                        .font(Font.system(size: 18, design: .default))
                        .bold()
            }
    }
}

struct bottomContent: View {
    @Binding var showModal:Bool;
    var body: some View {
        VStack{
            HStack {
                Text("Transactions")
                    .font(.title)
                Spacer()
                Button(action: {
                    self.showModal.toggle()
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 70, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.yellow)
                        Text("See All")
                            .foregroundColor(.blue)
                            .font(Font.system(size: 15, design: .rounded))
                    }
                }
            }.padding(.top,35)
            // mark : Bottom's sub Content
            subBottomContent()
            subBottomContent()
            subBottomContent()
            subBottomContent()
            subBottomContent()
            Spacer()
        }
        .padding(.horizontal,50)
        .padding(.top,30)
        .padding(.bottom)
    }
}

struct subBottomContent: View {
    var body: some View {
        HStack() {
            Circle()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay(
                    Image(systemName: "gift.fill")
                        .resizable()
                        .frame(width:25, height: 35)
                        .foregroundColor(.white)
                )
            VStack(alignment:.leading) {
                Text("Brand New Iphone")
                    .fontWeight(.semibold)
                Text("Apple Store").foregroundColor(.secondary)
            }
            Spacer()
            Text("+$200").foregroundColor(.green)
        }.padding(.top,30)
    }
}

struct transactionModal: View {
    @Binding var showModal:Bool
    var body: some View {
        VStack {
            HStack {
                Text("Transactions")
                    .font(.title3)
                Spacer()
            }
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack() {
                    subBottomContent()
                    subBottomContent()
                    subBottomContent()
                    Spacer()
                }
            }
            Spacer()
            Button("close"){
                self.showModal.toggle()
            }.foregroundColor(.red)
        }.padding(.horizontal)
    }
}


//
//  ContentView.swift
//  CircleAnimation
//
//  Created by Can Kanbur on 3.04.2023.
//

import SwiftUI


struct ContentView: View {
    @State var scaleOut : Bool = false
    @State var rotateOut : Bool = false
    @State var moveOut : Bool = false
    
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(.black.opacity(0.4)).edgesIgnoringSafeArea(.all)
            ZStack{
                
                //MARK: first
                ZStack{
                    Circle().fill(LinearGradient(colors: [.black,.white], startPoint: .top, endPoint: .bottom)).frame(width: 120,height: 120)
                        .offset(y: moveOut ? -60 : 0)
                    Circle().fill(LinearGradient(colors: [.black,.white], startPoint: .bottom, endPoint: .top)).frame(width: 120,height: 120)
                        .offset(y : moveOut ? 60 : 0)
                }.opacity(0.5)
                
                //MARK: second
                ZStack{
                    Circle().fill(LinearGradient(colors: [.black,.white], startPoint: .top, endPoint: .bottom)).frame(width: 120,height: 120)
                        .offset(y: moveOut ? -60 : 0)
                    Circle().fill(LinearGradient(colors: [.black,.white], startPoint: .bottom, endPoint: .top)).frame(width: 120,height: 120)
                        .offset(y : moveOut ? 60 : 0)
                }.opacity(0.5).rotationEffect(.degrees(60))
                
                //MARK: third
                ZStack{
                    Circle().fill(LinearGradient(colors: [.black,.white], startPoint: .top, endPoint: .bottom)).frame(width: 120,height: 120)
                        .offset(y: moveOut ? -60 : 0)
                    Circle().fill(LinearGradient(colors: [.black,.white], startPoint: .bottom, endPoint: .top)).frame(width: 120,height: 120)
                        .offset(y : moveOut ? 60 : 0)
                }.opacity(0.5).rotationEffect(.degrees(120))
                
                
                
            }.rotationEffect(.degrees(rotateOut ? -300 : 0))
                .scaleEffect(scaleOut ? 1 : 1/4)
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(0.15))
                .onAppear{
                moveOut.toggle()
                scaleOut.toggle()
                rotateOut.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

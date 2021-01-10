//
//  ContentView.swift
//  SwiftUI-Test
//
//  Created by 지현우 on 2021/01/05.
//  Copyright © 2021 wlgusdn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // body가 프로퍼티이기 때문에,
    // 내부에 VStack, HStack 등 2개 이상을 반환할 수 없다.
    var body: some View {
        VStack {
            // Text Button
            HStack {
                Button("Button") {
                    print("button1")
                }
                
                Button(action: { print("button2") }) {
                    Text("Button2")
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                }
                
                Button(action: { print("button3") }, label: {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 80, height: 80)
                        .overlay(Text("Button3"))
                })
                
            }.accentColor(.green)
            
            // Image Button
            HStack {
                Button(action: { print("Image") }) {
                    Image(systemName: "play.circle")
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                
                Button(action: { print("ImageButton2") }, label: {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                        .font(.largeTitle)
                })
            }
            
            // OnTapGesture vs Button
            // Button : 클릭하는 하이라이트 애니메이션, 커스텀 버튼 스타일 가능
            HStack {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        print("OnTapGesture")
                    }
                Button(action: { print("Button") }) {
                    Image(systemName: "person.circle")
                        .imageScale(.large)
                }.accentColor(.black)
            }
            
            NavigationView {
//                let leadingItem = Button(action: { print("Leading Item Tapped") }) {
//                    Image(systemName: "bell").imageScale(.large)
//                }
//                let trailingItem = Button(action: { print("Trailing") }) {
//                    Image(systemName: "gear").imageScale(.large)
//                }
//
//                Image(systemName: "person.circle")
//                    .navigationBarItems(leading: leadingItem, trailing: trailingItem)
//                    .padding([.bottom], 10)
//                    .navigationBarTitle("DefaultNavigationViewStyle", displayMode: .inline)
                    
                NavigationLink(destination: self.navi_Stack) {
                    Image(systemName: "person.circle")
                        .imageScale(.large)
                        .navigationBarTitle("Default")
                }
            }
            
            // Start Text, StackView, Rectangle, Eclipse, Circle, RoundedREctangle, Capsule
//            VStack(spacing: 10) {
//                Text("Hello, World!")
//
//
//                Text("😀Vertical Stack View")
//                    .font(.headline)
//                    .italic()
//                    .lineLimit(2)
//                    .background(Color.gray)
//                    .padding()
//                ZStack {
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 100, height: 100)
//                        .offset(CGSize(width: 50, height: 50))
//                }
//                ZStack {
//                    Rectangle().frame(height: 10)
//                    HStack {
//                        Circle().fill(Color.green)
//                            .overlay(Circle()
//                                .fill(Color.white)
//                                .frame(width: 30, height: 30))
//
//                        Ellipse().fill(Color.black)
//                            .opacity(0.5)
//                            .background(Circle()
//                                .fill(Color.white)
//                                .frame(width: 30, height: 30))
//
//
//                        Capsule().fill(Color.orange)
//
//                        RoundedRectangle(cornerRadius: 20).fill(Color.gray)
//                    }
//                }
//            }.font(.largeTitle)
//                .background(Color.yellow)
        }
    }
}

private extension ContentView {
    var navi_Stack: some View {
        NavigationView {
            NavigationLink(destination: self.navi_Double) {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                    .navigationBarTitle("STack")
            }
                
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    var navi_Double: some View {
        let leadingItem = Button(action: {
            print("Leading Item Tapped")
        }) {
            Image(systemName: "bell").imageScale(.large)
        }

        let trailingItem = Button(action: { print("Trailing") }) {
            Image(systemName: "gear").imageScale(.large)
        }
        
        return NavigationView {
            Image(systemName: "person.circle")
                .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                .padding([.bottom], 10)
                
            NavigationLink(destination: Text("Destination View")) {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                    .navigationBarTitle("DoubleColumn / Inline", displayMode: .inline).navigationViewStyle(DoubleColumnNavigationViewStyle())
            }
        }
    }

    // Start Text, StackView, Rectangle, Eclipse, Circle, RoundedREctangle, Capsule
//            VStack(spacing: 10) {
//                Text("Hello, World!")
//
//
//                Text("😀Vertical Stack View")
//                    .font(.headline)
//                    .italic()
//                    .lineLimit(2)
//                    .background(Color.gray)
//                    .padding()
//                ZStack {
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 100, height: 100)
//                        .offset(CGSize(width: 50, height: 50))
//                }
//                ZStack {
//                    Rectangle().frame(height: 10)
//                    HStack {
//                        Circle().fill(Color.green)
//                            .overlay(Circle()
//                                .fill(Color.white)
//                                .frame(width: 30, height: 30))
//
//                        Ellipse().fill(Color.black)
//                            .opacity(0.5)
//                            .background(Circle()
//                                .fill(Color.white)
//                                .frame(width: 30, height: 30))
//
//
//                        Capsule().fill(Color.orange)
//
//                        RoundedRectangle(cornerRadius: 20).fill(Color.gray)
//                    }
//                }
//            }.font(.largeTitle)
//                .background(Color.yellow)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

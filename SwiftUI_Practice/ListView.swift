//
//  ListView.swift
//  SwiftUI_Practice
//
//  Created by 지현우 on 2021/01/10.
//  Copyright © 2021 wlgusdn. All rights reserved.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var user: User
    var body: some View {
        VStack{
            Text(user.name)
            
            Spacer()
            
            Button(action: {self.user.score += 1}) {
                Text(user.score.description)
            }
//            VStack{
//                Text("1")
//                Text("2")
//                Text("3")
//                Text("4")
//                Text("5")
//                Text("6")
//                Text("7")
//                Text("8")
//                Text("9")
//                Text("10")
//            }
//            List{
//                Text("1")
//                Text("2")
//                Text("3")
//                Text("4")
//                Text("5")
//                Text("6")
//                Text("7")
//                Text("8")
//                Text("9")
//                Text("10")
//            }
//            //Range<Int>
//            List(1..<10){
//                //... 오류남
//                Text("\($0)")
//            }
//            //RandomAccessCollection
//            //방법 1
//            //id 매개변수에는 Hashable 프로토콜을 준수하는 프로퍼티를 지정 가능
//            //데이터 타입 자체가 Hashable을 준수하면 아래처럼 self 사용 가능
//            //사용자 정의 커스텀 타입에서는 Hashable 프로토콜을 채택해야 함
//            //방법 2
//            //데이터 타입 자체에 Swift5.1에서 추가된
//            //identifiable 프로토콜을 채택하는 방법
//            //방법 2를 사용한다면 id를 제공하지 않아도 됨
//            List(["A","B","C","D","E","F"], id: \.self){
//                Text("\($0)")
//            }
//
//            //ForEach
//            //Range 방법과 비슷함
//            List{
//                ForEach(0..<10){
//                    Text("\($0)")
//                }
//            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(user: User())
    }
}

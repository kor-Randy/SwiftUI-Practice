//
//  ListView.swift
//  SwiftUI_Practice
//
//  Created by 지현우 on 2021/01/10.
//  Copyright © 2021 wlgusdn. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack{
            VStack{
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            }
            List{
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

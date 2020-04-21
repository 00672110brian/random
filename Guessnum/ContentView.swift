//
//  ContentView.swift
//  Guessnum
//
//  Created by User02 on 2020/4/21.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var num = "無"
    @State private var color = Color.black
    @State private var text = "click"
    @State private var answer = Int.random(in: 1...6)
    var body: some View {
        ZStack{
           Image("card")
           .resizable()
           .scaledToFill()
           .frame(minWidth: 0, maxWidth: .infinity)
           .edgesIgnoringSafeArea(.all)
            Text("你的幸運色")
                .offset(y:-30)
            .font(.system(size: 50))
        Button(action: {
            if self.answer == 1{
           self.num = "今天的幸運色是1號橘色"
           self.answer = Int.random(in: 1...6)
                self.color = Color.orange
                self.text = "橘色"
            }
            else if self.answer == 2{
            self.num = "今天的幸運色是2號藍色"
           self.answer = Int.random(in: 1...6)
                self.color = Color.blue
                self.text = "藍色"
             }
            else if self.answer == 3{
            self.num = "今天的幸運色是3號綠色"
            self.answer = Int.random(in: 1...6)
                self.color = Color.green
                self.text = "綠色"
             }
            else if self.answer == 4{
            self.num = "今天的幸運色是4號粉紅色"
            self.answer = Int.random(in: 1...6)
                self.color = Color.pink
                self.text = "粉紅色"
             }
            else if self.answer == 5{
            self.num = "今天的幸運色是5號紅色"
            self.answer = Int.random(in: 1...6)
                self.color = Color.red
                self.text = "紅色"
            }
            else if self.answer == 6{
            self.num = "今天的幸運色是6號黃色"
            self.answer = Int.random(in: 1...6)
                self.color = Color.yellow
                self.text = "黃色"
             }
           self.showAlert = true })
        {
              Text(text)
           }.font(.system(size: 50))
            .foregroundColor(.white)
            .background(self.color)
            .offset(y:60)
        }
            
        .alert(isPresented: $showAlert) { () -> Alert in
            return Alert(title: Text(self.num))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

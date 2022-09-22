//
//  ContentView.swift
//  InitializerBootcamp
//
//  Created by Bishowjit Ray on 11/9/22.
//

import SwiftUI

struct ContentView: View {
    let backgroundColor: Color
    let count: Int
    let title: String
        
    init(count: Int, fruit: Fruit) {
       
        self.count = count
      
        if fruit == .apple {
            self.title = "apples"
            self.backgroundColor = .red
        }
        else{
            self.title = "oranges"
            self.backgroundColor = .orange
        }
    }
       enum Fruit{
            case apple
            case orange
        }

    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .underline()
            
            Text(title)
                .foregroundColor(Color.white)
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ContentView(count: 34, fruit: .orange)
            ContentView(count: 35, fruit: .apple)
        }
    }
}

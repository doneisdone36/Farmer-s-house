//
//  ContentView.swift
//  Farmer's House
//
//  Created by 김규진 on 2022/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainCard(image: "plant1", heading: "OO님께 추천합니다", subheading: "오늘의 추천 상품")
    }
}

struct MainCard: View {
    var image: String
    var heading: String
    var subheading: String
    
    var body: some View{
        VStack(alignment: .leading){
            Image(image).resizable().aspectRatio(contentMode: .fit)
            HStack{
                VStack(alignment: .leading){
                    Text(heading).font(.title)
                        .foregroundColor(Color.white)
                    Text(subheading).font(.headline)
                        .foregroundColor(.secondary)
                    
                }
                .layoutPriority(100)
                Spacer()
            }
        }
    }
}



struct ContentView_previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}

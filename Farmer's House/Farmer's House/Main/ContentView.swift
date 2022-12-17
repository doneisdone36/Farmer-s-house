//
//  ContentView.swift
//  Farmer's House
//
//  Created by 김규진 on 2022/12/16.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack(){
                Text("농부의집").font(.title)
                Spacer()
                ProfileImage()
            }.frame(height:50).padding(10)
            
            SearchBar(text: $searchText)
            
            MainCard(image: "plant1", heading: "OO님께 추천합니다", subheading: "오늘의 추천 상품")
            
            MainCard(image: "plant1", heading: "OO님께 추천합니다", subheading: "오늘의 추천 상품")
            
            
        }.padding(20)
    }
}


struct ProfileImage: View{
    var body: some View{
        Image("userImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
                    
    }
}
// MARK: MainCard
struct MainCard: View {
    var image: String
    var heading: String
    var subheading: String
    
    var body: some View{
        ZStack(alignment: .leading){
            Image(image).resizable().aspectRatio(contentMode: .fit).cornerRadius(20)
            
            
            HStack{
                
                VStack(alignment: .leading){
                    Spacer()
                    Text("OO님께").font(.title)
                        .foregroundColor(Color.black)
                    Text("추천합니다").font(.title)
                        .foregroundColor(Color.black)
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

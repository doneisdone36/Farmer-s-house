//
//  SearchBar.swift
//  Farmer's House
//
//  Created by 김규진 on 2022/12/17.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyngglass")
            
            TextField("Search", text: $text)
                .foregroundColor(.primary)
            
            if !text.isEmpty{
                Button(action:{
                    self.text=""
                }){
                    Image(systemName: "xmark.circle.fill")
                }
            }else{
                EmptyView()
            }
        }
        .padding(EdgeInsets(top:4,leading: 8,bottom: 4,trailing: 8))
        .foregroundColor(.secondary)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10.0)
    }
        
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar()
//    }
//}

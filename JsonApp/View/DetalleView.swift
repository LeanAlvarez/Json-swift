//
//  DetalleView.swift
//  JsonApp
//
//  Created by Lean on 02/07/2024.
//

import SwiftUI

struct DetalleView: View {
    var id: Int
    @StateObject var user = DetalleViewModel()
    
    var body: some View {
        VStack{
           
            if user.avatar.isEmpty {
                ProgressView()
            }else{
                Image(systemName: "person.fill")
                    .data(url: URL(string: user.avatar)!)
                    .frame(width: 130, height: 130)
                    .clipped()
                    .clipShape(Circle())
                
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
            }
            
            
        }.onAppear{
            user.fetch(id: id)
        }
    }
}

#Preview {
    DetalleView(id: 1)
}

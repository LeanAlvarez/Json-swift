//
//  Home.swift
//  JsonApp
//
//  Created by Lean on 02/07/2024.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login: PostViewModel
    @StateObject var json = Modelo1ViewModel()
    
    
    var body: some View {
        NavigationView{
            if json.datosModelo.isEmpty {
                ProgressView()
            }else{
                List(json.datosModelo, id:\.id){item in
                    
                    VStack(alignment: .leading){
                        Text(item.name)
                        Text(item.email)
                        Text(item.address.geo.lat)
                    }
                    
                }.navigationTitle("JSON")
                    .navigationBarItems(leading:
                            Button(action:{
                            UserDefaults.standard.removeObject(forKey: "sesion")
                            login.authenticated = 0
                                }){
                                    Text("Salir")
                                },trailing:
                                            NavigationLink(destination: Home2()){
                        Text("Siguiente")
                    }
                    )
                
                }
             
            }
        }
}


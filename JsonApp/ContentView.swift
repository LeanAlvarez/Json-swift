//
//  ContentView.swift
//  JsonApp
//
//  Created by Lean on 02/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login : PostViewModel
    
    
    var body: some View {
        Group{
            if login.authenticated == 0 {
                Login()
            }else if login.authenticated == 1 {
                Home()
            }else {
                VStack{
                    Text("Usuario y/o contraseña incorrecta")
                    Button(action: {
                        //accion
                        login.authenticated = 0
                    }){
                        Text("Regresar")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

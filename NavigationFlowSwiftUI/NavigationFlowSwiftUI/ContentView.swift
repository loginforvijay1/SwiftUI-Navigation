//
//  ContentView.swift
//  NavigationFlowSwiftUI
//
//  Created by Vijay Reddy on 13/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            Button("Goto View1") {
                router.pushView(route: .View1)
            }
        }
        .navigationTitle("Content View")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct View1: View {
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            Button("Goto View2") {
                router.pushView(route: .View2)
            }
        }
        .navigationTitle("View1")
        .padding()
    }
}


struct View2: View {
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            Button("Goto View3") {
                router.pushView(route: .View3("Vijay"))
            }
        }
        .navigationTitle("View2")
        .padding()
    }
}



struct View3: View {
    let name: String
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            Button("Back to Route 1") {
                router.popToSpecificView(k: 2)
            }
            Button("pop to Route View") {
                router.popToRouteView()
            }
        }
        .navigationTitle("Hello : \(name)")
        .padding()
    }
}


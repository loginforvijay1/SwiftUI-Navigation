//
//  Router.swift
//  NavigationFlowSwiftUI
//
//  Created by Vijay Reddy on 13/05/24.
//

import Foundation
import SwiftUI

enum Route: Hashable {
    case ContentView
    case View1
    case View2
    case View3(String)
    
}

class Router: ObservableObject {
    
    @Published var navigationPath = NavigationPath()
    
    func pushView(route: Route) {
        navigationPath.append(route)
    }
    
    func popToRouteView() {
        navigationPath = .init()
    }
    
    func popToSpecificView(k: Int) {
        navigationPath.removeLast(k)
    }
}

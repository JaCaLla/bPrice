//
//  ContentView.swift
//  bPrice
//
//  Created by Javier Calatrava on 04/10/2019.
//  Copyright © 2019 Javier Calatrava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("\(AppEnvironment.shared.environment.toString)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

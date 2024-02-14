//
//  ContentView.swift
//  Moonshot
//
//  Created by Luis Enrique Rosas Espinoza on 12/02/24.
//

import SwiftUI

struct MainView: View {
    @State private var isList = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if isList {
                    VStack(alignment: .leading) {
                        MainViewForeachListOfMissionsView(missions: missions, astronauts: astronauts)
                    }
                    .padding([.horizontal, .bottom])
                } else {
                    LazyVGrid(columns: columns) {
                        MainViewForeachListOfMissionsView(missions: missions, astronauts: astronauts)
                    }
                    .padding([.horizontal, .bottom])
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar(content: {
                Button(action: {
                    isList.toggle()
                }) {
                    Image(systemName: isList ? "square.grid.2x2" : "list.dash")
                }
                .foregroundColor(.white)
            })
        }
    }
}



#Preview {
    MainView()
}

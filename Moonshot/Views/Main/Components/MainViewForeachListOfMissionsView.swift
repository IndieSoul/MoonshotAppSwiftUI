//
//  MainViewForeachListOfMissionsView.swift
//  Moonshot
//
//  Created by Luis Enrique Rosas Espinoza on 13/02/24.
//

import SwiftUI

struct MainViewForeachListOfMissionsView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        ForEach(missions) { mission in
            NavigationLink(value: mission) {
                MainViewMissionCard(mission: mission)
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MainViewForeachListOfMissionsView(missions: missions, astronauts: astronauts)
        .preferredColorScheme(.dark)
}

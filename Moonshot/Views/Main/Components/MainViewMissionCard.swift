//
//  MainViewMissionCard.swift
//  Moonshot
//
//  Created by Luis Enrique Rosas Espinoza on 13/02/24.
//

import SwiftUI

struct MainViewMissionCard: View {
    let mission: Mission
    
    var body: some View {
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundStyle(.white)
                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.5))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
        }
        .clipShape(.rect(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.lightBackground)
        )
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    return MainViewMissionCard(mission: missions.first!)
        .preferredColorScheme(.dark)
}

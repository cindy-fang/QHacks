/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that presents the app's user interface.
*/

import SwiftUI
import RealityKit
import Combine

// The app uses `LibraryView` as its main UI.
struct ContentView: View {
    @State private var showAirPodsMax = false
    @State private var showAirForce = false
    @State private var showPancakes = false
    @State private var showToyBiplane = false
    @State private var showBattleSpaceship = false
    @State private var showIO = false
    @State private var showIgnition = false
    
    /// The library's selection path.
    @State private var navigationPath = [Video]()
    /// A Boolean value that indicates whether the app is currently presenting an immersive space.
    @State private var isPresentingSpace = false
    /// The app's player model.
    @Environment(PlayerModel.self) private var player
    
    var body: some View {
        #if os(visionOS)
        switch player.presentation {
        case .fullWindow:
            // Present the player full window and begin playback.
            PlayerView()
                .onAppear {
                    player.play()
                }
        default:
            // Show the app's content library by default.
            if showToyBiplane {
                Model3D(named: "toy_biplane_idle") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.3)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .spring(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            Text("Collectibles")
            HStack {
                Button("Toggle AirPods Max") {
                    showAirPodsMax.toggle()
                }
                Button("Toggle AirForce") {
                    showAirForce.toggle()
                }
                Button("Toggle Pancakes") {
                    showPancakes.toggle()
                }
                Button("Toggle Toy Biplane") {
                    showToyBiplane.toggle()
                }
                Button("Toggle ignition") {
                    showIgnition.toggle()
                }
            }
            LibraryView(path: $navigationPath, isPresentingSpace: $isPresentingSpace)
        }
        #else
        LibraryView(path: $navigationPath)
            // A custom modifier that shows the player in a fullscreen modal presentation in iOS and tvOS.
            .fullScreenCoverPlayer(player: player)
        #endif
    }
}

#Preview {
    ContentView()
        .environment(PlayerModel())
        .environment(VideoLibrary())
}

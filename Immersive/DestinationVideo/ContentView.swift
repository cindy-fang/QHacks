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
    
    func openURL(urlString: String) {
            guard let url = URL(string: urlString) else { return }
            UIApplication.shared.open(url)
        }
    
    var body: some View {
        if showPancakes {
            Model3D(named: "ian") { model in
                model
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(1)
                    .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                        AirPodsMax
                            .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0, y: 0, z: 0.1))
                    } animation: { threeDYRotate in
                            .spring(duration: 8).repeatForever(autoreverses: false)
                    }
            } placeholder: {
                ProgressView()
            }
        }
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
            if showBattleSpaceship {
                Model3D(named: "duck") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
                        .opacity(1.0) // Ensure full opacity
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0, y: 0.1, z: 0))
                        } animation: { threeDYRotate in
                                .spring(duration: 4).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }                    }
            
            if showAirForce {
                Model3D(named: "duckarmy") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0, y: 0.1, z: 0))
                        } animation: { threeDYRotate in
                                .spring(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }                    }
            
            if showAirPodsMax {
                Model3D(named: "redbull") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1.2)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0, y: 0.1, z: 0))
                        } animation: { threeDYRotate in
                                .spring(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            
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
            if showIO {
                Model3D(named: "rubixcube") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0, y: 0.1, z: 0))
                        } animation: { threeDYRotate in
                                .spring(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            if showIgnition {
                Model3D(named: "Rock") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
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
            LibraryView(path: $navigationPath, isPresentingSpace: $isPresentingSpace)
                VStack {

                    Text("3D Collectibles")
                    HStack {
                        Button("Toggle CSE Duck") {
                            showBattleSpaceship.toggle()
                        }
                        Button("Toggle National Bank Rubix Cube") {
                            showIO.toggle()
                        }
                        Button("Toggle Red Bull") {
                            showAirPodsMax.toggle()
                        }
                        
                        Button("Toggle Duck Army") {
                            showAirForce.toggle()
                        }
                        Button("Toggle Ian") {
                            showPancakes.toggle()
                        }
                        Button("Toggle Toy Biplane") {
                            showToyBiplane.toggle()
                        }
                        Button("Toggle Rock") {
                            showIgnition.toggle()
                        }

                        
                        
                    }
                    
                
                
            }
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

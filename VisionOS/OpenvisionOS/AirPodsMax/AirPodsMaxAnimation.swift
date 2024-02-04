import SwiftUI
import RealityKit
import Combine

struct AirPodsMaxAnimation: View {
    @State private var showAirPodsMax = false
    @State private var showAirForce = false
    @State private var showPancakes = false
    @State private var showToyBiplane = false
    @State private var showBattleSpaceship = false
    @State private var showIO = false
    @State private var showIgnition = false
    
    func openURL(urlString: String) {
            guard let url = URL(string: urlString) else { return }
            UIApplication.shared.open(url)
        }

    var body: some View {
            
        

        NavigationStack {
            if showBattleSpaceship {
                Model3D(named: "Earth_1_12756") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1.5)
                        .opacity(1.0) // Ensure full opacity
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 4).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }                    }
            
            if showAirForce {
                Model3D(named: "AirForce") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }                    }
            
            if showAirPodsMax {
                Model3D(named: "Airpods_Max_Pink") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.3)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            if showPancakes {
                Model3D(named: "pancakes") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.3)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 8).repeatForever(autoreverses: false)
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
                                .linear(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            if showIO {
                Model3D(named: "Io_1_3643") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1.5)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            if showIgnition {
                Model3D(named: "ignition") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }
            }
            ScrollView {
                VStack {
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
                    Text("Space!")
                    HStack {
                        Button("Toggle IO") {
                            showIO.toggle()
                        }
                        Button("Toggle Earth") {
                            showBattleSpaceship.toggle()
                        }
                    }
                    Text("Music!")
                    HStack {
                        Button(action: {
                                    // Call the function and pass the URL as a parameter
                                    openURL(urlString: "https://www.youtube.com/watch?v=Fpn1imb9qZg")
                                }) {
                                    // Use HStack for horizontal layout or VStack for vertical layout
                                    HStack {
                                        Image("coldplay") // System image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                    }
                                }
                             
                    }
                    
                }
                .navigationTitle("Welcome to EyeTunes!")
                .toolbar {
                    ToolbarItem(placement: .bottomOrnament) {
                        HStack {
                            Image(systemName: "battery.75percent")
                                .symbolRenderingMode(.hierarchical)
                            Text("75 %")
                        }
                    }
                }
                
            }
        }
    }
}

// Assuming `Model3D` is a custom component that you've defined elsewhere,
// ensure it supports being toggled on and off as demonstrated.
#Preview(windowStyle: .automatic) {
    AirPodsMaxAnimation()
}

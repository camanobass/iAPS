import SwiftUI

struct MainView: View {
    @StateObject var state = WatchStateModel()

    @State var isCarbsActive = false
    @State var isTargetsActive = false
    @State var isBolusActive = false
    var body: some View {
        Form {
            NavigationLink {
                CarbsView()
                    .environmentObject(state)
            } label: {
                HStack {
                    Image("carbs", bundle: nil)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.loopGreen)
                    Text("Abb Carbs")
                }
            }

            NavigationLink {
                EmptyView()
            } label: {
                HStack {
                    Image("target", bundle: nil)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.loopYellow)
                    Text("Temp Targets").foregroundColor(.primary)
                }
            }

            NavigationLink {
                EmptyView()
            } label: {
                HStack {
                    Image("bolus", bundle: nil)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.insulin)
                    Text("Enact Bolus")
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

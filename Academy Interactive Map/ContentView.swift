//
//  ContentView.swift
//  Academy Interactive Map
//
//  Created by Brian Winandy on 5/2/23.
//

import SwiftUI
import InteractiveMap

struct ContentView: View {
    
    @State private var clickedPath = PathData()
    var body: some View {
        InteractiveMap(svgName: "tr") { pathData in // or just use $0
            InteractiveShape(pathData)
                .initWithAttributes()
            VStack {
                Text(clickedPath.name.isEmpty ? "" : "\(clickedPath.name) is clicked!" )
                    .font(.largeTitle)
                    .padding(.bottom, 15)
                InteractiveMap(svgName: "tr") { pathData in
                    InteractiveShape(pathData)
                        .initWithAttributes()
                        .shadow(color: clickedPath == pathData ? .white : .clear, radius: 6)
                        .onTapGesture {
                            clickedPath = pathData
                        }
                        .scaleEffect(clickedPath == pathData ? 1.4 : 1)
                        .animation(.easeInOut(duration: 0.2), value: clickedPath)
                        .zIndex(clickedPath == pathData ? 2 : 1)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

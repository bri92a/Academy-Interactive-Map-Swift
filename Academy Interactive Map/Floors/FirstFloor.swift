//
//  FirstFloor.swift
//  Academy Interactive Map
//
//  Created by Brian Winandy on 5/3/23.
//

import SwiftUI
import InteractiveMap

struct FirstFloor: View {
    @State private var clickedPath = PathData()
    var body: some View {
        VStack {
            Text(clickedPath.name.isEmpty ? "" : "\(clickedPath.name) is clicked!" )
                .font(.largeTitle)
                .padding(.bottom, 15)

            InteractiveMap(svgName: "tr") { pathData in // is a PathData
                InteractiveShape(pathData)
                    .stroke(clickedPath == pathData ? .cyan : .red, lineWidth: 1)
                    .shadow(color: clickedPath == pathData ? .cyan : .red,  radius: 3)
                    .shadow(color: clickedPath == pathData ? .cyan : .clear , radius: 3) // to increase the glow amount
                    .background(InteractiveShape(pathData).fill(Color(white: 0.15))) // filling the shapes
                    .shadow(color: clickedPath == pathData ? .black : .clear , radius: 5, y: 1) // for depth

                    .onTapGesture {
                        clickedPath = pathData
                    }
                    .zIndex(clickedPath == pathData ? 2 : 1) // this is REQUIRED because InteractiveShapes overlap, resulting in an ugly appearance
                    .animation(.easeInOut(duration: 0.3), value: clickedPath)
            }
        }
    }
}

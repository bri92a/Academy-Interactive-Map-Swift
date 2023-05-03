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
        NavigationView {
            VStack{
                Text(clickedPath.name.isEmpty ? "" : "\(clickedPath.name) is clicked!" )
                    .font(.largeTitle)
                    .padding(.bottom, 15)
                
                InteractiveMap(svgName: "Roller Intake 2") { pathData in // is a PathData
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
                    .animation(.easeInOut(duration: 0.3), value: clickedPath)}
                    .toolbar {
                        ToolbarItem(placement: .automatic) {
                            Menu {
                                Button(action: {}, label: {
                                    Text("First Floor")
                                })
                                Button(action: {}, label: {
                                    Text("Second Floor")
                                })
                                Button(action: {}, label: {
                                    Text("Third Floor")
                                })
                                
                                Menu {
                                    Button(action: {}, label: {
                                        Text("Room 1")
                                    })
                                    Button(action: {}, label: {
                                        Text("Room 2")
                                        
                                    })
                                } label: {
                                    Text("Learning Spaces")
                                    
                                }
                                Menu {
                                    Button(action: {}, label: {
                                        Text("Room 1")
                                    })
                                    Button(action: {}, label: {
                                        Text("Room 2")
                                        
                                    })
                                } label: {
                                    Text("Idea Rooms")
                                    
                                }
                                Menu {
                                    Button(action: {}, label: {
                                        Text("Room 1")
                                    })
                                    Button(action: {}, label: {
                                        Text("Room 2")
                                        
                                    })
                                } label: {
                                    Text("Admin & Faculty")
                                    
                                }
                                Menu {
                                    Button(action: {}, label: {
                                        Text("Room 1")
                                    })
                                    Button(action: {}, label: {
                                        Text("Room 2")
                                        
                                    })
                                } label: {
                                    Text("Science Labs")
                                    
                                }
                                Menu {
                                    Button(action: {}, label: {
                                        Text("Room 1")
                                    })
                                    Button(action: {}, label: {
                                        Text("Room 2")
                                        
                                    })
                                } label: {
                                    Text("Project Resource Areas")
                                    
                                }
                            } label: {
                                    Label(
                                        title: { Text("Add") },
                                        icon: { Image(systemName: "plus")
                                        })
                                }
                            
                            
                            
                        }
                    }
                    .navigationTitle("PAHS Interactive Map")
                
            }
        }
    }
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//  ContentView.swift
//  Academy Interactive Map
//
//  Created by Brian Winandy on 5/2/23.
//

import SwiftUI
import InteractiveMap

enum SheetTypes: Identifiable {
    case first, second, third, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen, twenty, twentyone, twentytwo, twentythree, twentyfour, twentyfive, twentysix, twentyseven, twentyeight, twentynine, thirty, thirtyone, thirtytwo, thirtythree, thirtyfour, thirtyfive, thirtysix, thirtyseven, thirtyeight, thirtynine, fourty, fourtyone, fourtytwo, fourtythree, fourtyfour, fourtyfive
    
    var id: Int {
        hashValue
    }
}

struct ContentView: View {
    @State private var clickedPath = PathData()
    @State private var activeSheet : SheetTypes?
    var body: some View {
        NavigationView {
            VStack{
                Text(clickedPath.name.isEmpty ? "" : "\(clickedPath.name)" )
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
                
                .sheet(item: self.$activeSheet){ item in
                    switch item {
                    case .one:
                        FirstFloor()
                    case .two:
                        SecondFloor()
                    case .three:
                        ThirdFloor()
                    case .one:
                        ls5()
                    case .two:
                        
                    case .three:
                        
                    case .four:
                        
                    case .five:
                        
                    case .six:
                        
                    case .seven:
                        
                    case .eight:
                        
                    case .nine:
                        
                    case .ten:
                        
                    case .eleven:
                        
                    case .twelve:
                        
                    case .thirteen:
                        
                    case .fourteen:
                        
                    case .fifteen:
                        
                    case .sixteen:
                        
                    case .seventeen:
                        
                    case .eighteen:
                        
                    case .nineteen:
                        
                    case .twenty:
                        
                    case .twentyone:
                        
                    case .twentytwo:
                        
                    case .twentythree:
                        
                    case .twentyfour:
                        
                    case .twentyfive:
                        
                    case .twentysix:
                        
                    case .twentyseven:
                        
                    case .twentyeight:
                        
                    case .twentynine:
                        
                    case .thirty:
                        
                    case .thirtyone:
                        
                    case .thirtytwo:
                        
                    case .thirtythree:
                        
                    case .thirtyfour:
                        
                    case .thirtyfive:
                        
                    case .thirtysix:
                        
                    case .thirtyseven:
                        
                    case .thirtyeight:
                        
                    case .thirtynine:
                        
                    case .fourty:
                        
                    case .fourtyone:
                        
                    case .fourtytwo:
                        
                    case .fourtythree:
                        
                    case .fourtyfour:
                        
                    case .fourtyfive:
                    
                        
                    }
                    
                    
                }
                
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Menu {
                            Button(action: { self.activeSheet = .first}, label: {
                                Text("First Floor")
                            })
                            Button(action: { self.activeSheet = .second}, label: {
                                Text("Second Floor")
                            })
                            Button(action: { self.activeSheet = .third}, label: {
                                Text("Third Floor")
                            })
                            
                            Menu {
                                Button(action: {self.activeSheet = .one}, label: {
                                    Text("LS5")
                                })
                                
                                Button(action: {self.activeSheet = .two}, label: {
                                    Text("LS6")
                                    
                                })
                                Button(action: {self.activeSheet = .three}, label: {
                                    Text("LS8")
                                    
                                })
                                
                                Button(action: {self.activeSheet = .four}, label: {
                                    Text("LS11")
                                    
                                })
                                Button(action: {self.activeSheet = .five}, label: {
                                    Text("LS12")
                                    
                                })
                                Button(action: {self.activeSheet = .six}, label: {
                                    Text("LS14-LS16")
                                    
                                    
                                })
                                Button(action: {self.activeSheet = .seven}, label: {
                                    Text("LS17 & 18")
                                    
                                })
                                Button(action: {self.activeSheet = .eight}, label: {
                                    Text("LS19")
                                    
                                })
                                Button(action: {self.activeSheet = .nine}, label: {
                                    Text("LS20")
                                    
                                })
                                Button(action: {self.activeSheet = .ten}, label: {
                                    Text("LS21")
                                    
                                })
                            } label: {
                                Text("Learning Spaces")
                                
                            }
                            Menu {
                                Button(action: {self.activeSheet = .eleven}, label: {
                                    Text("Second Floor 1")
                                })
                                Button(action: {self.activeSheet = .twelve}, label: {
                                    Text("Second Floor 2")
                                    
                                })
                                Button(action: {self.activeSheet = .thirteen}, label: {
                                    Text("Second Floor 3")
                                    
                                })
                                Button(action: {self.activeSheet = .fourteen}, label: {
                                    Text("Second Floor 4")
                                    
                                })
                                Button(action: {self.activeSheet = .fifteen}, label: {
                                    Text("Third Floor 1")
                                    
                                })
                                Button(action: {self.activeSheet = .sixteen}, label: {
                                    Text("Third Floor 2")
                                    
                                })
                                Button(action: {self.activeSheet = .seventeen}, label: {
                                    Text("Third Floor 3")
                                    
                                })
                            } label: {
                                Text("Idea Rooms")
                                
                            }
                            Menu {
                                
                                Button(action: {self.activeSheet = .eighteen}, label: {
                                    Text("Cafe")
                                    
                                })
                                Button(action: {self.activeSheet = .nineteen}, label: {
                                    Text("Gym")
                                    
                                })
                                Button(action: {self.activeSheet = .twenty}, label: {
                                    Text("Library")
                                    
                                })
                                Button(action: {self.activeSheet = .twentyone}, label: {
                                    Text("The Dome")
                                    
                                })
                                Button(action: {self.activeSheet = .twentytwo}, label: {
                                    Text("The Bubble")
                                    
                                })
                                Button(action: {self.activeSheet = .twentythree}, label: {
                                    Text("The Cube")
                                    
                                })
                                Button(action: {self.activeSheet = .twentyfour}, label: {
                                    Text("Music Room")
                                    
                                })
                                Button(action: {self.activeSheet = .twentyfive}, label: {
                                    Text("The Commons")
                                    
                                })
                                Button(action: {self.activeSheet = .twentysix}, label: {
                                    Text("War Room")
                                    
                                })
                                Button(action: {self.activeSheet = .twentyseven}, label: {
                                    Text("La Plaza")
                                    
                                })
                                
                            } label: {
                                Text("Common Areas")
                                
                            }
                            Menu {
                                
                                Button(action: {self.activeSheet = .twentyeight}, label: {
                                    Text("Nurse's Office")
                                    
                                })
                                Button(action: {self.activeSheet = .twentynine}, label: {
                                    Text("Admin Suite")
                                })
                                Button(action: {self.activeSheet = .thirty}, label: {
                                    Text("Foyer")
                                    
                                })
                                Button(action: {self.activeSheet = .thirtyone
                                }, label: {
                                    Text("Counselors")
                                    
                                })
                                Button(action: {self.activeSheet = .thirtythree}, label: {
                                    Text("1st Year Teachers")
                                    
                                })
                                Button(action: {self.activeSheet = .thirtyfour}, label: {
                                    Text("2nd Year Teachers")
                                    
                                })
                                Button(action: {self.activeSheet = .thirtyfive}, label: {
                                    Text("3rd Year Teachers")
                                    
                                })
                                Button(action: {self.activeSheet = .thirtysix}, label: {
                                    Text("4th Year Teachers")
                                    
                                })
                            } label: {
                                Text("Facilitators and Admin")}
                                
                                Menu {
                                    Button(action: {self.activeSheet = .thirtyseven}, label: {
                                        Text("Lab 1")
                                    })
                                    Button(action: {self.activeSheet = .thirtyeight
                                        
                                    }, label: {
                                        Text("Lab 2")
                                        
                                    })
                                    Button(action: {self.activeSheet = .thirtynine}, label: {
                                        Text("Lab 3")
                                        
                                    })
                                } label: {
                                    Text("Science Labs")}
                                    
                                    
                                    Menu {
                                        Button(action: {self.activeSheet = .fourty}, label: {
                                            Text("Fab Lab")
                                        })
                                        Button(action: {self.activeSheet = .fourtyone}, label: {
                                            Text("Maker Space")
                                            
                                        })
                                        Button(action: {self.activeSheet = .fourtytwo}, label: {
                                            Text("Engineering Studio")
                                            
                                        })
                                        Button(action: {self.activeSheet = .fourtythree}, label: {
                                            Text("PA1")
                                            
                                        })
                                        Button(action: {self.activeSheet = .fourtyfour}, label: {
                                            Text("PA2")
                                            
                                        })
                                        Button(action: {self.activeSheet = .fourtyfive}, label: {
                                            Text("Robotics Field")
                                            
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


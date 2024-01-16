//
//  IntroSequence.swift
//  RealityApp
//
//  Created by Spencer Dearman on 1/16/24.
//

import SwiftUI

struct IntroSequence: View {
    @Namespace var namespace

    //State Variables
    @State var selection = 0
    @State var username: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        switch selection {
        case 0:
            VStack {
                Text("Welcome to RealityApp")
                    .font(.title).fontWeight(.semibold)
                    .matchedGeometryEffect(id: "title", in: namespace)
                Button(action: {
                    withAnimation(.easeInOut, {
                        selection += 1
                    })
                }, label: {
                    Text("Continue")
                })
                .matchedGeometryEffect(id: "continue", in: namespace)
            }
        case 1:
            VStack {
                Text("Please Enter Credentials")
                    .font(.title).fontWeight(.semibold)
                    .matchedGeometryEffect(id: "title", in: namespace)
                
                VStack {
                    TextField("Username", text: $username)
                    TextField("Password", text: $password)
                }
                .frame(width: 300, height: 300)
                
                HStack {
                    Button(action: {
                        withAnimation(.easeInOut, {
                            selection -= 1
                        })
                    }, label: {
                        Text("Previous")
                    })
                    Button(action: {
                        withAnimation(.easeInOut, {
                            selection += 1
                        })
                    }, label: {
                        Text("Continue")
                    })
                    .matchedGeometryEffect(id: "continue", in: namespace)
                }
            }
        default:
            VStack {
                Text("Welcome to RealityApp")
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                })
            }
        }
    }
}

#Preview {
    IntroSequence()
}

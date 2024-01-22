//
//  ContentView.swift
//  trying-native-ios
//
//  Created by Munyyb on 22/01/2024.
//

import SwiftUI

struct HelloWorld: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack(content: {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            })
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle().strokeBorder(lineWidth: 10)
            HStack(content: {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill")
                }).accessibilityLabel("Next speaker")
            })
        }.padding()
    }
}

#Preview {
    HelloWorld()
}

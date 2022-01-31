//
//  ScheduleView.swift
//  Fitness+
//
//  Created by Lam Perth on 14/11/2021.
//

import SwiftUI

struct ScheduleView: View {
    let colors = ["Red", "Yellow", "Green", "Gray", "Black", "Purple", "White", "Brown", "Pink", "Blue"]
        @State private var color = "Red"
        var body: some View {
            Picker(selection: $color, label: Text("")) {
                ForEach(self.colors, id: \.self) { color in
                    HStack {
                        Text(color)
                            .font(.title)
                            .padding()
                        Spacer()
                    }
                }
            }
            .pickerStyle(WheelPickerStyle())
            .labelsHidden()
        }
}


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}

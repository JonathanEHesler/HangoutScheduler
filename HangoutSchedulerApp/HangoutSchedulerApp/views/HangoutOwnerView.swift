//
//  HangoutOwnerView.swift
//  HangoutSchedulerApp
//
//  Created by Jonathan Hesler on 7/21/25.
//

import SwiftUI

struct HangoutOwnerView: View {
    
    @State var hangout: Hangout
    
    var body: some View {
        NavigationView {
            Form {
                Section("Hangout Name", content: {
                    TextField(text: $hangout.name, prompt: Text("Hangout Name - Required")) {
                        Text("Hangout Name")
                    }
                })
                Section("Hangout Details", content: {
                    TextField(text: $hangout.location, prompt: Text("Hangout Location - Required")) {
                        Text("Hangout Location")
                    }
                    TextField(text: $hangout.description, prompt: Text("Hangout Description - Optional")) {
                        Text("Hangout Description")
                    }
                })
                Section("Hangout Date(s)", content: {
                    Toggle(isOn: $hangout.multipleDatesSelected, label: {
                        Text("Date Set")
                    })
                    .onChange(of: hangout.multipleDatesSelected, {
                        hangout.toggleMultipleDatesSelected()
                    })
                    if (!hangout.multipleDatesSelected) {
                        DatePicker("Start Date", selection: $hangout.firstDate)
                        DatePicker("End Date", selection: $hangout.secondDate)
                    } else {
                        DatePicker("Date", selection: $hangout.firstDate)
                    }
                })
            }
            .navigationTitle("Edit Your Hangout")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                                            
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                                            
                    }
                }
            }
        }
    }
}

#Preview {
    HangoutOwnerView(hangout: Hangout.sampleHangout)
}

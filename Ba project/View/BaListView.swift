//
//  ContentView.swift
//  Ba project
//
//  Created by JAESOON on 2021/02/27.
//

import SwiftUI

struct BaListView: View {
    @ObservedObject var model = BaModel()
    
    var body: some View {
        NavigationView {
            List(model.Baconstructions) { r in
                
                NavigationLink(
                    destination: BaDetailView(baconstruction: r),
                    label: {
                        // MARK: Row item
                       
                        HStack (spacing:20.0){
                            Image(r.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height:50, alignment:.center)
                                .cornerRadius(5)
                                .clipped()
                            
                            Text(r.construction)
                        }
                        
                        })
                
            }
            .navigationTitle("Ba construction")
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BaListView()
    }
}

//
//  BaDetailView.swift
//  Ba project
//
//  Created by JAESOON on 2021/02/27.
//

import SwiftUI

struct BaDetailView: View {
    var baconstruction: BaConstruction
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Spacer()
                // MARK: Ba Image
                Image(baconstruction.image)
                    .resizable()
                    .scaledToFit()
                    .padding([.top, .bottom, .trailing])
               Spacer()
                Text(baconstruction.construction)
                    .font(.headline)
                    .padding()
                
                Text(baconstruction.translation)
                    .font(.body)
                    .padding()
                Spacer()
                // MARK: Ba Image
                VStack(alignment: .leading) {
                    Text( baconstruction.description)
                        .padding([.bottom, .top],5)
                    
                  Spacer()
                    
                    Text("Examples")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                
                
                ForEach (baconstruction.example, id:\.self) { item in
                    Text("·" + item)
                        .padding([.bottom, .top], 5)
                }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct BaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy baconstruction and pass it into the detail view so that we can see a preview
        
        let model = BaModel()
        
        BaDetailView(baconstruction: model.Baconstructions[0])
    }
}

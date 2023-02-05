//
//  LandmarkList.swift
//  LandmarksLow
//
//  Created by blueskygroup on 2023/2/1.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks){ landmark in
//                NavigationLink {
//                    LandmarkDetail()
//                } destination:{
//                    LandmarkRow(landmark: landmark)
//                }
                
                NavigationLink(destination:LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iphone SE (2nd generation)"))
    }
}

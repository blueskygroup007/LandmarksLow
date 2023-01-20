//
//  Landmark.swift
//  LandmarksLow
//
//  Created by s55t on 2023/1/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark:Hashable,Codable {
    var id:Int
    var name:String
    var park:String
    var state:String
    var description:String
    
    private var imageName:String
    var image:Image{
        Image(imageName)
    }
    
    private var coordinaes:Coordinates
    
    var locationCoordinate:CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude:coordinaes.latitude,
            longitude:coordinaes.longitude)
    }
    
    struct Coordinates:Hashable,Codable {
        var latitude:Double
        var longitude:Double
    }
    
    
}

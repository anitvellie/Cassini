//
//  DemoURL.swift
//  CassiniAgain
//
//  Created by Alevtina on 19/04/2019.
//  Copyright © 2019 Alevtina. All rights reserved.
//

import Foundation

struct DemoURLs {
    
    static let stanford = Bundle.main.url(forResource: "oval", withExtension: "jpg")
    
    static var NASA: Dictionary<String, URL> = {
        let NASAURLString = [
            "Cassini": "https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth": "https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn": "https://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String, URL>()
        for (key, value) in NASAURLString {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}

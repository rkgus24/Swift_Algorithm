//
//  Cache.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/17/25.
//

func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    var cache: [String] = []
    var totalTime = 0

    for city in cities {
        let city = city.lowercased()
        
        if let index = cache.firstIndex(of: city) {
            cache.remove(at: index)
            cache.append(city)
            totalTime += 1
        } else {
            if cacheSize > 0 && cache.count >= cacheSize {
                cache.removeFirst()
            }
            if cacheSize > 0 {
                cache.append(city)
            }
            totalTime += 5
        }
    }

    return totalTime
}

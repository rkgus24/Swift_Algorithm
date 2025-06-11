//
//  main.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/11/25.
//

import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var clothesDict: [String: Int] = [:]
    
    // 의상 종류별 개수 세기
    for cloth in clothes {
        let type = cloth[1]
        clothesDict[type, default: 0] += 1
    }
    
    // 각 종류별로 (입는 경우 + 안 입는 경우)를 곱함
    // 하루에 최소 한 개의 의상을 입어야 하니까 최종 결과에서 -1
    var combinations = 1
    for count in clothesDict.values {
        combinations *= (count + 1)
    }
    
    return combinations - 1
}

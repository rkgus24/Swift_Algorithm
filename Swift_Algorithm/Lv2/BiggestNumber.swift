//
//  main.swift
//  BiggestNumber
//
//  Created by 노가현 on 6/9/25.
//

import Foundation

func solution(_ numbers: [Int]) -> String {
    let result = numbers
        .map(String.init)
        .sorted { $0 + $1 > $1 + $0 }
        .joined()
    
    return result.hasPrefix("0") ? "0" : result
}

let input = [3, 30, 34, 5, 9]
let answer = solution(input)

// print(answer)

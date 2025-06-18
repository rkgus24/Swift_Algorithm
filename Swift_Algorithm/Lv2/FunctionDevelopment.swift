//
//  FunctionDevelopment.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/16/25.
//

import Foundation

func solution(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    let days = zip(progresses, speeds).map {
        Int(ceil(Double(100 - $0) / Double($1)))
    }

    var result: [Int] = []
    var lead = days.first!
    var count = 0

    for day in days {
        if day <= lead {
            count += 1
        } else {
            result.append(count)
            lead = day
            count = 1
        }
    }

    result.append(count)
    return result
}

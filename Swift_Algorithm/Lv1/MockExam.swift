//
//  MockExam.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/18/25.
//

func solution(_ answers: [Int]) -> [Int] {
    let patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]

    let scores = patterns.map { pattern in
        zip(answers.indices, answers).reduce(0) { count, item in
            let (i, answer) = item
            return count + (pattern[i % pattern.count] == answer ? 1 : 0)
        }
    }

    let maxScore = scores.max() ?? 0

    return scores.enumerated()
                 .filter { $0.element == maxScore }
                 .map { $0.offset + 1 }
}

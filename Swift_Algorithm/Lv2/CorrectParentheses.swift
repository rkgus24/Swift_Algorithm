//
//  CorrectParentheses.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/13/25.
//

func solution(_ s: String) -> Bool {
    var count = 0
    
    for char in s {
        if char == "(" {
            count += 1
        } else {
            count -= 1
        }
        
        // 닫는 괄호가 더 많아지는 순간 false
        if count < 0 {
            return false
        }
    }
    
    // 모든 괄호가 짝지어진 경우 count는 0
    return count == 0
}

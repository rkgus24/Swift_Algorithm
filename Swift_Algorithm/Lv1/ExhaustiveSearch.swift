//
//  main.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/11/25.
//

func solution(_ sizes: [[Int]]) -> Int {
    // 가로 중 긴 값을 저장
    var maxWidth = 0
    // 세로 중 긴 값을 저장
    var maxHeight = 0

    // 명함 하나씩 확인
    for size in sizes {
        let w = size[0] // 가로 길이
        let h = size[1] // 세로 길이

        // 명함은 회전할 수 있으니까 큰 쪽을 가로, 작은 쪽을 세로로
        let width = max(w, h)   // 둘 중 큰 값 → 가로
        let height = min(w, h)  // 둘 중 작은 값 → 세로

        // 지금까지 본 가로 중 큰 값을 저장
        maxWidth = max(maxWidth, width)
        // 지금까지 본 세로 중 큰 값을 저장
        maxHeight = max(maxHeight, height)
    }

    // 최소 지갑 크기 = 큰 가로 * 큰 세로
    return maxWidth * maxHeight
}

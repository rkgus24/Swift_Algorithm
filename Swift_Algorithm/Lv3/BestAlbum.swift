//
//  BestAlbum.swift
//  Swift_Algorithm
//
//  Created by 노가현 on 6/13/25.
//

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    // 장르별 총 재생 수 딕셔너리
    var genrePlayCount: [String: Int] = [:]
    // 장르별 노래 목록 딕셔너리 (고유 번호와 재생 수를 저장)
    var genreSongs: [String: [(index: Int, plays: Int)]] = [:]
    
    // 데이터 정리
    for (index, genre) in genres.enumerated() {
        let play = plays[index]
        genrePlayCount[genre, default: 0] += play
        genreSongs[genre, default: []].append((index, play))
    }
    
    // 장르를 총 재생 수 기준으로 정렬
    let sortedGenres = genrePlayCount.sorted { $0.value > $1.value }.map { $0.key }
    
    var result: [Int] = []
    
    for genre in sortedGenres {
        // 장르 내 노래를 재생 수 내림차순, 고유번호 오름차순으로 정렬
        let songs = genreSongs[genre]!.sorted {
            if $0.plays == $1.plays {
                return $0.index < $1.index
            } else {
                return $0.plays > $1.plays
            }
        }
        
        // 상위 2개 노래만 추가 (최대 2개)
        for i in 0..<min(2, songs.count) {
            result.append(songs[i].index)
        }
    }
    
    return result
}


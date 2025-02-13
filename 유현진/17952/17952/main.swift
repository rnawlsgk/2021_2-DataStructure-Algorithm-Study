//
//  main.swift
//  17952
//
//  Created by 유현진 on 2021/09/17.
//

import Foundation

var N = Int(readLine()!)!
var stack = [[Int]]()
var result = 0

for _ in 0..<N{
    let input = readLine()!.components(separatedBy: " ").map() {Int($0)}
    
    if input[0] == 1{
        solution(input[1]!, input[2]!) //point, time
    }
    if stack.count > 0{
        subSolution()
    }
}

func solution(_ A: Int, _ T: Int){
    stack.append([A,T])
}

func subSolution(){
    stack[stack.count-1][1] -= 1
    if stack[stack.count-1][1] == 0{
        if let r = stack.popLast(){
            result += r[0]
        }
    }
}

print(result)

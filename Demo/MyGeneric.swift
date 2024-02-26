//
//  MyGeneric.swift
//  Demo
//
//  Created by 김예지 on 2/27/24.
// 제네릭은 타입을 타지않는 범용코드를 만들 때 사용한다.
// Tip. 제네릭으로 타입을 묶을 때, 프로토콜로 제약을 줄 수도 있음.

import SwiftUI

struct MyGeneric: View {
    @State var input = ""
    @State var myStack = MyStack<Any>()
   // @State var myFloatStack = MyFloatStack()
    
    
    var body: some View {
        VStack{
            TextField("숫자를 입력해주세요.", text: $input)
                .frame(width: 200, height: 40) // TextField를 원하는 크기로 지정
                .multilineTextAlignment(.center) // 가운데 정렬
                .padding() // 간격 추가
            Button{
                // myStack.insertValue(input: Int(input) ?? 0)
                myStack.insertValue(input: input)
            } label: {
                Text("저장")
            }
            Button{
                myStack.showData()
            } label: {
                Text("출력")
            }
            Button{
                myStack.data.removeAll()
            } label: {
                Text("초기화")
            }
        }
    }
}

struct MyStack<T> {
    var data: [T] = []
    
    mutating func insertValue(input: T){
        data.append(input)
    
    }
    func showData() {
        data.forEach{item in
            print(item)}
    }
}

struct MyFloatStack {
    var data: [Float] = []
    
    mutating func insertValue(input: Float){
        data.append(input)
    
    }
    func showData() {
        data.forEach{item in
            print(item)}
    }
}

#Preview {
    MyGeneric()
}

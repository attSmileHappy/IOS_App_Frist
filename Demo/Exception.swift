//
//  Exception.swift
//  Demo
//
//  Created by 김예지 on 2/25/24.
//

import SwiftUI

struct Exception: View {
    
    @State var inputNumber = ""
    @State var resultNumber : Float = 0
    
    var body: some View {
        VStack {
            TextField("나눌 숫자를 입력해주세요.", text: $inputNumber)            
                .frame(width: 200, height: 40) // TextField를 원하는 크기로 지정
                .multilineTextAlignment(.center) // 가운데 정렬
                .padding() // 간격 추가 
                .foregroundColor(inputNumber == "잘못된 입력입니다." ? .red : .black) // 예외 발생 시 빨간색으로 변경
            
            Text("나눈 결과는 다음과 같아요.")
            Text("\(resultNumber)")
            Button {
                do {
                   try resultNumber = devideTen(wiht: (Float(inputNumber) ?? 1.0))
                } catch DivideError.dividedByZero {
                    inputNumber = "잘못된 입력입니다."
                    print("0으로 나누어 에러 발생함. ")
                }
                catch DivideError.divideByAngle {
                       print("My Angle <3 ")
                    resultNumber = 1004
                }
                catch {
                    print(error.localizedDescription)
                }
            }
            label: {
                Text("나누기")
            }
        }
    }
    func devideTen(wiht inputNumber: Float) throws -> Float {
        var result: Float = 0
        if inputNumber == 0 {
          throw  DivideError.dividedByZero
        }
        else if Int(inputNumber) == 1004 {
            throw DivideError.divideByAngle
        }
        else {
            result = 10 / inputNumber
        }
        
        return result
        /*
         실제 예외처리 해야할 기본적인 상황 : 데이터 끊김, 보안 취약, 와이파이 변경, 너무 느린 로딩 속도 등
         */
        
    }
    
}
enum DivideError : Error {
    case dividedByZero
    case divideByAngle
}

#Preview {
    Exception()
}

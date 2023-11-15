//
//  Function.swift
//  Demo
//
//  Created by 김예지 on 11/15/23.
//

import SwiftUI

struct Function: View {
    var initNumber: Int = 0
   @State var inputNumber: Int = 0
    var body: some View {
        VStack{
            Text("입력된 값은 \(inputNumber)")
            
            Button{
                inputNumber = plusFive(with: inputNumber)
            }label: {
                Text("+5")
            }
            Button{
                inputNumber = initNumber
            }label: {
                Text("초기화")
            }
        }
    }
    /** 함수는 body 변수 밖에 선언
     whit은 함수 바깥에서 입력값 받을 때 사용하며 코드의 가독성이 좋아짐. input은 함수 안에서의 입력 데이터 호출 **/
    func plusFive(with input: Int) -> Int {
        return input + 5
    }
}

#Preview {
    Function()
}

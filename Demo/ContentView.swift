//
//  ContentView.swift
//  Demo
//
//  Created by 김예지 on 10/31/23.
//

import SwiftUI

struct ContentView: View {
    
    var place: String = "Korea"
    var name: String = "예지"
    
    // 02. Variable Type
    var age: Int = 20 // int는 안되며, Int만 됨. Swift는 대소문자 구분
    var height: Float = 183.6
    var weight: Double = 61.23452
    var havePet: Bool = false
    
    // 03.Collection
    /** 변수 선언 let 과 var의 차이점 :
     let은 한번 값이 들어가면, 바꿀 수 없음 (변수 재사용 불가능함, 상수)
     var는 변수 값을 바꿀 수 있음 (변수 재사용이 가능함, 변수)
     앞선 예시 코드에서는 변수 선언을 let으로 진행하였는데, 실습 코드에서는 var로 선언
     어차피 변수값을 변경하거나 조작할 일이 해당 실습에서는 없으므로, 친숙한 var을 사용하는 것으로 보임 **/
    let names: String = "Kim"
        var name2: String = "Kim"
        var foods: [String] = ["Apple", "Banana", "Bear"] // Array
        var abc: Set<String> = ["A", "B", "C"] // Set
        var cdf: Set<String> = ["C","D","F"] // Set
    var koEngDict: [String:String]  = ["사과":"Apple", "바나나":"banana"] //Dictionary
    
    var body: some View {
        VStack { // 스택이 쌓여있는 것 V는 버티칼 (세로)로 쌓여있는 것
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, My world!")
            Text(place)
            // Text(100)- error : No exact matches in call to initializer. Text 함수는 오직 문자열 타입만 들어갈 수 있음. 그래서 아래처럼 숫자를 아예 문자 형식으로 바꿔주어야 함.
            Text("100")
            Text(place + " Hello, My world!")
            Text("\(name)님 안녕하세요!")
            // Swift의 문장 속 변수는 \() 원표시 괄호 조합인 듯
            Text("\(name)님 안녕히가세요!")
            Text(name)
            
            // 02. Variable Type
            Text("\(age)")
            Text("\(havePet.description)") // 변수명.description은 문자열 타입의 설명을 다는 것
            
            // 03.Collection
            Text(foods[0])
            Text(foods[1])
            Text(foods[2])
            Text(abc.intersection(cdf).description) // 교집합 화면에 보여주기
            Text(abc.description) // Set 변수의 내용을 화면에 출력
            //Text(fodds[3]) - No exact matches in call to initializer. 인덱스 이상의 정보를 요구하는 것이므로 에러가 뜸
            /** .intersection는 교집합 함수.
             Text("\(abc.intersection(ott))") - error : Instance method 'appendInterpolation(_:formatter:)' requires that 'Set<String>' inherit from 'NSObject'
             String.StringInterpolation 구조에서 사용 가능한 함수이므로, Set 호출 시 에러 발생 **/
            Button{
                var abcdef = abc.intersection(cdf)
                abcdef.description
            } label:{
                Text("hit")
            }
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
            // Text(koEngDict["사과"]) - error : Value of optional type 'String?' must be unwrapped to a value of type 'String'
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

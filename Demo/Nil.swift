//
//  Nil.swift
//  Demo
//
//  Created by 김예지 on 2/23/24.
//

import SwiftUI

struct Nil: View {
    var name : String = "Yezi"
    var petName : String?
    
    var name2 : String = "Happy"
    var petName2 : String = "Coco"
    
    var body: some View {
        VStack{
            Text("이름은 \(name)입니다. 저의 애완동물 이름은 \(petName2)입니다.")
            Text("이름은 \(name2)입니다. 저의 애완동물 이름은 \(petName2)입니다.")        
            
            /*  Text("저의 애완동물 이름은 \(petName)입니다.")
            error case :  No exact matches in call to instance method 'appendInterpolation'
            solve : 변수로 사용되는 petName이 옵셔널 값이라,선택적 문자열이 포함되어 있으면 일반 변수처럼 사용할 수 없어 발생한 문제.
             Text 함수에는 옵셔널 값이 포함될 수 없음.
             */
            
        }
        .onAppear{
            print("이름은 \(name)입니다. 저의 애완동물 이름은 \(petName)입니다.")
        }
    }
}

#Preview {
    Nil()
}

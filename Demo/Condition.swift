//
//  Condition.swift
//  Demo
//
//  Created by 김예지 on 11/14/23.
//

// 04.Condition
import SwiftUI

struct Condition: View {
    var count = 1
    
    var hasLoggedIn = false
    
    
    var body: some View {
        if count > 4 {
            Text("입력된 숫자의 값: \(count) \n4보다 큽니다.")
                .multilineTextAlignment(.center)
        } else {
            Text("""
입력된 숫자의 값: \(count)
4와 같거나 작습니다.
""")
            .multilineTextAlignment(.center)
        }
        
        if hasLoggedIn {
            Text("로그아웃 하시겠습니까?")
        } else {
            Text("로그인 하시겠습니까?")
        }
        
      /**  guard hasLoggedIn else {
            Text("로그인 하시겠습니까?")
        }
        Text("로그아웃 하시겠습니까?")
       - error : Closure containing control flow statement cannot be used with result builder 'ViewBuilder'
       SwiftUI에서는 직접적으로 제어 흐름 문을 뷰 빌더 내에서 사용할 수 없기 때문에 발생하는 오류
       **/
    }
}

#Preview {
    Condition()
}

//
//  Option.swift
//  Demo
//
//  Created by 김예지 on 2/23/24.
//

import SwiftUI

struct Option: View {
    
    var yezi:People? = People(name: "Yezi", mbti: MBTI(name: "ENFP"))
    var jun = People(name: "Jun", petName: "Happy")
    var suho = People(name: "Suho", petName: "Coco", mbti: MBTI(name: "ENTP"))
    var kai = People(name: "Kai")

    var body: some View {
        VStack{
            
            //01. 옵셔널 바인딩
            
            // (1) 옵셔널 바인딩을 하지 않을 경우 :
            if suho.petName != nil && !suho.petName!.isEmpty {
                Text("이름은 \(suho.name) 애완동물 이름은 \(suho.petName!)입니다.")
            } else {
                Text("이름은 \(suho.name) 애완동물은 없습니다.")
            }
            
            // (2) 옵셔널 바인딩을 할 경우 :
            
            if let petName = suho.petName {
                        Text("이름은 \(suho.name) 애완동물 이름은 \(petName)입니다.")
                    }
                    else {
                       Text("이름은 \(suho.name) 애완동물은 없습니다.")
                     }
                     
            // 2. 옵셔널 체이닝
            // (1) 옵셔널 체이닝을 하지 않을 경우 :
            if let yezi = yezi {
                if let mbti = yezi.mbti {
                  if let name = mbti.name {
                    }
                }
            }
            
            // (2) 옵셔널 체이닝을 할 경우 :
            if let yeziMbti  = yezi?.mbti?.name {
                Text(yeziMbti)
            }            else {
                Text("MBTI가 없습니다.")
                
            }
            
        }
    }
}

struct People {
    let name : String
    var petName : String?
    var mbti : MBTI?
}
struct MBTI {
    let name : String?
}
#Preview {
    Option()
}

//
//  setting.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Setting: View {
    var body: some View {
     listCan()
    }
}


struct listCan: View {
    
    let data: [[SettingInfo]] = [[SettingInfo(title: "스크린 타임", systemName: "hourglass", backgroundColor: .purple)],
                                 [SettingInfo(title: "일반", systemName: "gear", backgroundColor: .gray),
    SettingInfo(title: "손쉬운 사용", systemName: "accessibility", backgroundColor: .blue),
                                 SettingInfo(title: "개인정보 보호 및 보안", systemName: "hand.app.fill", backgroundColor: .blue)],
                                 [SettingInfo(title: "암호", systemName: "key.fill", backgroundColor: .gray)]
    ]
    
    var body: some View {
        NavigationStack{
            List{
                Section{
                    VStack{
                        HStack{
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .foregroundColor(.gray)
                            VStack(alignment: .leading){
                                Text("iPhone에 로그인")
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .bold()
                                    .font(.headline)
                                Text("iCloud, App Store 등 설정")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                ForEach(data, id: \.self){ section in
                    Section{
                        ForEach(section, id: \.self){ item in
                            Label(
                                title: { Text(item.title) },
                                icon: { Image(systemName: item.systemName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(.all, 7)
                                        .background(item.backgroundColor)
                                        .foregroundColor(item.forgroundColor)
                                        .cornerRadius(10)
                                }
                            )
                        }
                    }
                }
    
            }
            .navigationTitle("설정")
        }
    }
}

struct SettingInfo: Hashable{
    let title: String
    let systemName: String
    let backgroundColor: Color
    let forgroundColor: Color = .white
}


#Preview {
    Setting()
}

//
//  OnBoarding.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        VStack{
            Text("Embracing Life's Challenges")
                .font(.title)
                .bold()
                .padding(.top, 50)
            
            Spacer()
            
            VStack(alignment: .leading){
                MyCan(imageNames: "flame.fill", text1: "Success and Courage", text2: "Success is not final, failure is not fatal: It is the courage to continue that counts.")
                MyCan(imageNames: "heart.rectangle", text1: "Authenticity and Achievement", text2: "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment")
                MyCan(imageNames: "smiley.fill", text1: "Life and Plans", text2: "Life is what happens when you're busy making other plans.")
            }
           
            Spacer()
            
            Button{
                
            } label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
               //     .frame(maxWidth:.infinity) 화면에 꽉차게
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 50)
        }
    }
}

struct MyCan: View {
    var imageNames: String
    var text1: String
    var text2: String
    
    var body: some View {
        HStack{
            Image(systemName: "\(imageNames)")
                .resizable()
                .scaledToFit()
                .frame(width: 35)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding()
            VStack(alignment: .leading){
                Text("\(text1)")
                    .font(.headline)
                    .bold()
                Text("\(text2)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
        }
        .padding()
    }
}


#Preview {
    OnBoarding()
}

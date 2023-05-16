//
//  PopUpCard.swift
//  About Protein
//
//  Created by Radya Amirur Rahman on 20/04/23.
//

import SwiftUI

struct PopUpCard: View {
    @State var proteinType: Int = 0
    
    var body: some View {
        ZStack(){

            Image(proteinType == 0 ? "PopUpLow" : proteinType == 1 ? "PopUpNormal" : "PopUpHigh")
            VStack{
                HStack {
                    Spacer()
                    Text(proteinType == 0 ?  "Lack of Awareness, Lets Change!" :  proteinType == 1 ? "High Intense Focussss!" :  "At the edge of the Cliff, Lets Change!" )
                        .font(Font(CustomFonts2.custom2.font2(size: 28)))
                        .multilineTextAlignment(.trailing)
                    .foregroundColor(Color(hex: "FFFFFF"))
                }
                .frame(width: 765)
                .padding(.bottom,90)
                
                Text(proteinType == 0 ? "he looks so ignorant with the environment around him! Protein is important for staying focused, and many Indonesians don't get enough. ***Up to 30%*** of the population may suffer from protein deficiency, which can affect mood, attention, and memory. Don’t be like that la!" :  proteinType == 1 ? "Look how focussed he was! Studies show that increasing protein intake can improve cognitive performance ***by up to 10%***. So make sure to ***include protein*** in your diet to stay alert and focused throughout the day!" : "A man became obsessed with ***eating protein*** and took ***supplements*** to get stronger. But he ended up damaging his kidneys and died prematurely. Excessive protein intake can cause health problems like ***cancer*** and ***osteoporosis***, so it's important to prioritize a balanced diet and avoid the dangers of too much protein" )
                    .font(Font(CustomFonts.custom1.font1(size: 28)))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hex: "454545"))
                    .frame(width: 765, height: 312)
            }
        }
    }
}

struct PopUpCard_Previews: PreviewProvider {
    static var previews: some View {
        PopUpCard(proteinType:1)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

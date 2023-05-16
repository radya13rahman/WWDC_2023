//
//  OnboardPage.swift
//  About Protein
//
//  Created by Radya Amirur Rahman on 20/04/23.
//

import SwiftUI

struct OnboardPage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("OnBoard")
                HStack{
                    VStack {
                        Spacer()
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                            
                            Image("StartTheJourney")
                        }
                    }.padding(.bottom,139)
                    Spacer()
                    VStack{
                        Text("Behind The Project")
                            .font(Font(CustomFonts2.custom2.font2(size: 50)))
                            .foregroundColor(Color(hex: "454545"))
                        Text("\n***Have you ever felt tired or sluggish***, especially during the day? It could be because you're not getting enough protein in your diet. Protein is essential for building and repairing tissues, making enzymes and hormones, and even keeping our immune system strong.\n")
                            .font(Font(CustomFonts.custom1.font1(size: 27)))
                            .foregroundColor(Color(hex: "454545"))
                            .multilineTextAlignment(.center)
                        Text("Unfortunately, many Indonesians don't consume enough protein, which can lead to a host of health problems. ***In fact, up to 30% of Indonesians suffer from protein deficiency***, according to the Indonesian National Nutrition Survey.\n")
                            .font(Font(CustomFonts.custom1.font1(size: 27)))
                            .foregroundColor(Color(hex: "454545"))
                            .multilineTextAlignment(.center)
                        Text("To make sure you're getting enough protein, try incorporating protein-rich foods into your diet such as eggs, chicken, fish, tofu, and tempeh. Eating a balanced diet with adequate protein can help you stay energized, focused, and healthy. ***So let's make sure we're getting the protein we need to live our best lives!***")
                            .font(Font(CustomFonts.custom1.font1(size: 27)))
                            .foregroundColor(Color(hex: "454545"))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 676,height: 783)
                }
                .padding(.horizontal,67)
            }
        }
        .navigationViewStyle(.stack)

    }
}

struct OnboardPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardPage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

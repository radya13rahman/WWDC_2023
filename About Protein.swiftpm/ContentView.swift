import SwiftUI


struct ContentView: View {
    
    //MARK: Properties
    @State var weightValue: Double = 0.0
    @State private var standardProtein: Float = 0.8
    @State var showProtein: Bool = false
    @State var normalCase: Bool = false
    @State private var durAnimation: Double = 5.0
    @State private var characterImage: String = "ProteinPerson"
    @State private var xOffsetAnimated: Double = 0
    @State private var blurRadius: Double = 0
    @State private var opacityCard: Double = 0
    @State private var isCardShowed: Bool = false
    @State private var proteinType: Int = 0
    @State private var isAnimating: Bool = false
    
    //MARK: Define Output value for Protein Needs
    var outputValue: Double {
            weightValue * 0.8
        }
    
    
    var body: some View {
        ZStack {
            ZStack {
                //MARK: Base Background Location
                Image("Background_Base")
                    .resizable()
                    .ignoresSafeArea()
                
                //MARK: Verticall View
                VStack{
                    //MARK: Horizontal View
                    HStack(alignment: .top){
                        //MARK: Left Content (1)
                        VStack(alignment:.leading,spacing: 8){
                            Text("About")
                                .font(Font(CustomFonts.custom1.font1(size: 50)))
                                .foregroundColor(Color(hex: "454545"))
                            Text("Protein")
                                .fontWeight(.semibold)
                                .font(Font(CustomFonts2.custom2.font2(size: 110)))
                                .foregroundColor(Color(hex: "454545"))
                            HStack(spacing:16){
                                Image("PlayTogether")
                                Image("LearnTogether")
                            }
                        }
                        
                        Spacer()
                        
                        //MARK: Middle Content (2)
                        VStack(alignment: .leading,spacing: 29){
                            Text("Check your \nProtein Needs.")
                                .font(Font(CustomFonts.custom1.font1(size: 32)))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(hex: "002B5B"))
                            
                            VStack(spacing:16){
                                HStack{
                                    Image("Weight")
                                        .resizable()
                                        .frame(width: 24,height: 24)
                                    TextField("Put Your Weight (Kg)", value: $weightValue, formatter: NumberFormatter())
                                }
                                .padding()
                                .frame(width: 300, height: 45)
                                .background(Color(hex: "FFFFFF"))
                                .cornerRadius(8)
                                
                                Button{
                                    showProtein.toggle()
                                }label: {
                                    Text(showProtein ? "Hide" : "Calculate")
                                        .font(Font(CustomFonts.custom1.font1(size: 18)))
                                        .foregroundColor(.white)
                                        .frame(width:300, height:45)
                                        .background(Color(hex: "002B5B")).cornerRadius(8)
                                }
                            }
                            VStack(alignment:.leading,spacing:16){
                                Text("Your Protein needs is \(outputValue, specifier: "%.2f") g")
                                    .font(Font(CustomFonts2.custom2.font2(size: 24)))
                                    .foregroundColor(Color(hex: "002B5B"))
                                Text("According to the Dietary Reference\nIntake report for macronutrients, \na sedentary adult should consume\n***0.8*** grams of protein per ***Kg*** of bodyweight")
                                    .font(Font(CustomFonts.custom1.font1(size: 16)))
                                    .foregroundColor(Color(hex: "454545"))
                            }.opacity(showProtein ? 1 : 0)
                                .frame(width: 300)
                            
                        }
                        
                        Spacer()
                        
                        //MARK: Right Content (3)
                        VStack(alignment: .trailing,spacing: 29){
                            Text("Let's Play \nwith Protein.")
                                .font(Font(CustomFonts.custom1.font1(size: 32)))
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color(hex: "435B00"))
                            
                            Text("Choose one scenario below\n to change the chacaracter")
                                .font(Font(CustomFonts.custom1.font1(size: 16)))
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color(hex: "435B00"))
                            
                            VStack{
                                Button{
                                    self.proteinType = 2
                                    DispatchQueue.main.asyncAfter(deadline: .now()){
                                        isAnimating = true
                                        xOffsetAnimated = 600
                                        durAnimation = 3.0
                                        normalCase = true
                                        playSound(sound: "BallTouch")
                                        DispatchQueue.main.asyncAfter(deadline: .now() + durAnimation){
                                            characterImage = "NonNormalCaseCharacter"
                                            playSound(sound: "MuchProtein")
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                                isCardShowed = true
                                                blurRadius = 10
                                                opacityCard = 1
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                                                    durAnimation = 0
                                                    normalCase = false
                                                    characterImage = "ProteinPerson"
                                                    isAnimating = false
//                                                    blurRadius = 0
//                                                    opacityCard = 0
                                                }
                                            }
                                            

                                            
                                        }
                                    }
                                }label: {
                                    Image("MuchProtein")
                                }
                                .allowsHitTesting(!isAnimating)
                                Button{
                                    self.proteinType = 1
                                    DispatchQueue.main.asyncAfter(deadline: .now()){
                                        isAnimating = true
                                        xOffsetAnimated = 1000
                                        durAnimation = 5.0
                                        normalCase = true
                                        playSound(sound: "BallTouch")
                                        DispatchQueue.main.asyncAfter(deadline: .now() + durAnimation){
                                            characterImage = "NormalCaseCharacter"
                                            playSound(sound: "NormalProtein")
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                                isCardShowed = true
                                                blurRadius = 10
                                                opacityCard = 1
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                                                    durAnimation = 0
                                                    normalCase = false
                                                    characterImage = "ProteinPerson"
                                                    isAnimating = false
//                                                    blurRadius = 0
//                                                    opacityCard = 0
                                                }
                                            }
                                            

                                            
                                        }
                                    }
                                    
                                }label: {
                                    Image("NormalProtein")
                                }
                                .allowsHitTesting(!isAnimating)
                                
                                Button{
                                    self.proteinType = 0
                                    DispatchQueue.main.asyncAfter(deadline: .now()){
                                        isAnimating = true
                                        xOffsetAnimated = 1050
                                        durAnimation = 5.0
                                        normalCase = true
                                        playSound(sound: "BallTouch")
                                        DispatchQueue.main.asyncAfter(deadline: .now() + durAnimation){
                                            characterImage = "NonNormalCaseCharacter"
                                            playSound(sound: "LessProtein")
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                                isCardShowed = true
                                                blurRadius = 10
                                                opacityCard = 1
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                                                    durAnimation = 0
                                                    normalCase = false
                                                    characterImage = "ProteinPerson"
                                                    isAnimating = false
//                                                    blurRadius = 0
//                                                    opacityCard = 0
                                                }
                                            }
                                            

                                            
                                        }
                                    }
                                }label: {
                                    Image("LessProtein")
                                }
                                .allowsHitTesting(!isAnimating)
                                                        }
                            
                            Text("Now, Touch the ball,\nand See The Magic")
                                .font(Font(CustomFonts.custom1.font1(size: 16)))
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color(hex: "435B00"))

                        }
                    }
                    .padding(46)
                    Spacer()
                }
            
            Image("Character7")
                    .position(x:175, y:780)
            Image("Character0")
                    .position(x:600, y:780)
            Image("Ball")
                    .position(x: normalCase ? xOffsetAnimated : 245, y:760)
                    .animation(.linear(duration: durAnimation), value: normalCase)
            Image(characterImage)
                    .position(x:1150, y:810)
            }
            .blur(radius: blurRadius)
            .onTapGesture {
                if isCardShowed {
                    blurRadius = 0
                    opacityCard = 0
                    isCardShowed = false
                }
            }
            if proteinType == 0{
                PopUpCard(proteinType: 0)
                    .opacity(opacityCard)
                    .allowsHitTesting(false)
            } else if proteinType == 1{
                PopUpCard(proteinType: 1)
                    .opacity(opacityCard)
                    .allowsHitTesting(false)
                
            } else {
                PopUpCard(proteinType: 2)
                    .opacity(opacityCard)
                    .allowsHitTesting(false)
                
            }

        }
        .onChange(of: isCardShowed){ newValue in
            if !isCardShowed {
                playSound(sound: "Backsound")
                
            }
        }
        .onAppear{
            playSound(sound: "Backsound")
        }
    }
}


//MARK: Extension Color Hex
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0

        scanner.scanHexInt64(&rgbValue)

        self.init(red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: Double(rgbValue & 0x0000FF) / 255.0)
    }
}

//MARK: Preview App in IPad with Lock Orientation
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}



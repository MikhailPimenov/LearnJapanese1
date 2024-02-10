//
//  ContentView.swift
//  LearnJapanese1
//
//  Created by Elvia Attack on 1/27/24.
//



import SwiftUI

let hiraganaToRomajiMap = [
    "あ"  : "a",
    "1"  : "one",
    "2"  : "two",
    "3"  : "three",
    "4"  : "four",
    "5"  : "five",
]

//let hiraganaToRomajiMap = [
//    "あ" : "a",
//    "い" : "i",
//    "う" : "u",
//    "え" : "e",
//    "お" : "o",
//    "か" : "ka",
//    "き" : "ki",
//    "く" : "ku",
//    "け" : "ke",
//    "こ" : "ko",
//    "さ" : "sa",
//    "し" : "shi",
//    "す" : "su",
//    "せ" : "se",
//    "そ" : "so",
//    "た" : "ta",
//    "ち" : "chi",
//    "つ" : "tsu",
//    "て" : "te",
//    "と" : "to",
//    "な" : "na",
//    "に" : "ni",
//    "ぬ" : "nu",
//    "ね" : "ne",
//    "の" : "no",
//    "は" : "ha",
//    "ひ" : "hi",
//    "ふ" : "fu",
//    "へ" : "he",
//    "ほ" : "ho",
//    "ま" : "ma",
//    "み" : "mi",
//    "む" : "mu",
//    "め" : "me",
//    "も" : "mo",
//    "や" : "ya",
//    "ゆ" : "yu",
//    "よ" : "yo",
//    "ら" : "ra",
//    "り" : "ri",
//    "る" : "ru",
//    "れ" : "re",
//    "ろ" : "ro",
//    "わ" : "wa",
//    "を" : "wo",
//    "ん" : "n" ,
//]

struct ContentView: View {
    @State private var currentHiragana: String = "あ"
    @State private var usersRomaji: String = ""
    @State private var result: String = ""
    @State private var index: Int = 1
    @State private var color = Color.white
//    @FocusState private var emailFieldIsFocused: Bool = false
  
     



    var body: some View {
//        VStack {
//            Text("three").font(.system(size: 100))
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(.teal)
                        Text(currentHiragana).font((Font.system(size:150, design: .default)))
            
                        TextField(
                            "Enter romaji",
                            text: $usersRomaji
                        ).multilineTextAlignment(.center)
                            .padding(.horizontal, 20.0)
                            .onSubmit {
//                                print("Check if correct")
//                                print("Befoe ", usersRomaji, usersRomaji)
                                let checkresult = usersRomaji.trimmingCharacters(in: .whitespaces)
//                                print("After ", usersRomaji, usersRomaji)
                                if(checkresult.caseInsensitiveCompare(hiraganaToRomajiMap[currentHiragana]! ) == .orderedSame) {
                                    
                                    index = index + 1
                                    currentHiragana = Array(hiraganaToRomajiMap)[index%hiraganaToRomajiMap.count].key
                                    result = "Correct"
                                    usersRomaji = ""
                                } else {
                                    result = "Wrong, try again!"
                                }
                            }
        
                        Text(result).padding(.vertical, 40.0).foregroundColor(result == "Correct" ? .green : .purple)
        
                        Button("Tap me") {
                            print("Button tapped")
                            color = Color.purple
                        }
                        .buttonStyle(.bordered)
                        .tint(.green)
            
        }
    }
        
//        .background(.pink)



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()
    }
}

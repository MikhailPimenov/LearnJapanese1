//
//  ContentView.swift
//  LearnJapanese1
//
//  Created by Elvia Attack on 1/27/24.
//



import SwiftUI



struct ContentView: View {
    @State private var currentHiragana: String = "あ"
    @State private var usersRomaji: String = ""
    @State private var result: String = ""
    @State private var index: Int = 0
//    @FocusState private var emailFieldIsFocused: Bool = false
  
     
    let hiraganaToRomajiMap = [
        "あ" : "a",
        "い" : "i",
        "う" : "u",
        "え" : "e",
        "お" : "o",
        "か" : "ka",
        "き" : "ki",
        "く" : "ku",
        "け" : "ke",
        "こ" : "ko",
        "さ" : "sa",
        "し" : "shi",
        "す" : "su",
        "せ" : "se",
        "そ" : "so",
        "た" : "ta",
        "ち" : "chi",
        "つ" : "tsu",
        "て" : "te",
        "と" : "to",
        "な" : "na",
        "に" : "ni",
        "ぬ" : "nu",
        "ね" : "ne",
        "の" : "no",
        "は" : "ha",
        "ひ" : "hi",
        "ふ" : "fu",
        "へ" : "he",
        "ほ" : "ho",
        "ま" : "ma",
        "み" : "mi",
        "む" : "mu",
        "め" : "me",
        "も" : "mo",
        "や" : "ya",
        "ゆ" : "yu",
        "よ" : "yo",
        "ら" : "ra",
        "り" : "ri",
        "る" : "ru",
        "れ" : "re",
        "ろ" : "ro",
        "わ" : "wa",
        "を" : "wo",
        "ん" : "n" ,
    ]


        var body: some View {
            Text(currentHiragana).font((Font.system(size:100, design: .default)))
            
            TextField(
                "Enter romaji",
                text: $usersRomaji
            ).multilineTextAlignment(.center)
            .padding(.horizontal, 20.0)
            .onSubmit {
                print("Check if correct")
                print("Befoe ", usersRomaji, usersRomaji)
                let checkresult = usersRomaji.trimmingCharacters(in: .whitespaces)
                print("After ", usersRomaji, usersRomaji)
                if(checkresult.caseInsensitiveCompare(hiraganaToRomajiMap[currentHiragana]! ) == .orderedSame) {
                    currentHiragana = Array(hiraganaToRomajiMap)[index].key
                    result = "correct"
                    index += 1
                } else {
                    result = "fail try again"
                }
            }
            Text(result).padding(.vertical, 40.0)
            Button("Tap me") {
                print("Button tapped")
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()
    }
}

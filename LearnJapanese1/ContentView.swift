//
//  ContentView.swift
//  LearnJapanese1
//
//  Created by Elvia Attack on 1/27/24.
//



import SwiftUI



struct ContentView: View {
    @State private var currentHiragana: String = ""
    @State private var usersRomaji: String = ""
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
//    var body: some View {
//        let keys = hiraganaToRomajiMap.map{$0.key}
//        let values = hiraganaToRomajiMap.map{$0.value}
////
////
////        return List {
////            ForEach(keys.indices) { index in
////                HStack {
////                    Text(keys[index])
//////                    Text("\(values[index])")
//////                    TextField(
//////                        keys[index],
//////                        text: $usersRomaji
////            //        ).onSubmit {
////            //            validate(name: username)
////            //            print("fuck")
////            //        }
////
////                }
////            }
////        }
//
////        Text("End")
//
////        TextField(
////            "User name (email address)",
////            text: $username
////        ).onSubmit {
////            validate(name: username)
////            print("fuck")
////        }
//
//    }
    
//    var body: some View {
//            TabView {
//                Button("Tap me") {
//                    print("Button tapped")
//                }
//                .tabItem {
//                    Text("One")
//                }
//                List {
//                    Text("Hello")
//                    Text("World")
//                }
//                .tabItem {
//                    Text("Two")
//                }
//            }
//        }
    
    
//    var body: some View {
//
//                Button("Tap me") {
//                    print("Button tapped")
//                }
//
//
//        }

        var body: some View {
            Text
            TextField(
                "Enter romaji",
                text: $usersRomaji
            )
            .padding(.horizontal, 20.0)
            .onSubmit {
                // TODO
                print("Check if correct")
//                if (correct)
//                    updateCurrentHiragana()
            }
            Button("Tap me") {
                print("Button tapped")
            }
//
//
        }
    
//    var hiraganaIterator = hiraganaToRomajiMap.makeIterator()
//
//    mutating func updateCurrentHiragana() -> (index: Int, romaji: String?) {
//        hiraganaIndex += 1
//        return (hiraganaIndex, hiraganaToRomajiMap[hiraganaIndex])
//    }
    
    
}

//struct Test : View {
//let dict: [String: Int] = ["test1": 1, "test2": 2, "test3": 3]
//var body: some View {
//    let keys = dict.map{$0.key}
//    let values = dict.map {$0.value}
//
//    return List {
//        ForEach(keys.indices) {index in
//            HStack {
//                Text(keys[index])
//                Text("\(values[index])")
//            }
//        }
//    }
//}
//}

//var body: some View {
//    TextField(
//        "User name (email address)",
//        text: $username
//    )
//    .focused($emailFieldIsFocused)
//    .onSubmit {
//        validate(name: username)
//    }
//    .textInputAutocapitalization(.never)
//    .disableAutocorrection(true)
//    .border(.secondary)
//
//
//    Text(username)
//        .foregroundColor(emailFieldIsFocused ? .red : .blue)
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()
    }
}

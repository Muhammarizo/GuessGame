//
//  ContentView.swift
//  GuessGame
//
//  Created by MacBookPro on 12.04.2025.
//

import SwiftUI

struct ContentView: View {

    @State var correctAnswer = 0
    @State var score = 0
    @State var gameTitle = "?"
    @State var gameSubtitle = ""

    var body: some View {
        VStack {
            Text(gameTitle)
                .font(.system(size: 40, weight: .semibold))
                .padding(.top, 100)

            Text(gameSubtitle)
                .font(.system(size: 20))
                .padding(.bottom, 100)

            HStack {
                Spacer()
                Text("Score: \(score)")
                    .font(.system(size: 15, weight: .semibold))

            }
            Button(
                action: {
                    check(answer: 0)
                },
                label: {
                    Image("dog")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }

            )
            Button(
                action: {
                    check(answer: 1)
                },
                label: {
                    Image("cat")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            )
            Button(
                action: {
                    check(answer: 2)
                },
                label: {
                    Image("fox")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            )
            Spacer()
        }
        .padding()
    }

    func check(answer: Int) {
        if answer == correctAnswer {
            score += 1
            gameTitle = "Success!"
        } else {
            if score > 0 {
                score -= 1
            }
            gameTitle = "Failed!"
        }
        if correctAnswer == 0 {
            gameSubtitle = "Correct answer is Dog"
        } else if correctAnswer == 1 {
            gameSubtitle = "Correct answer is Cat"
        } else if correctAnswer == 2 {
            gameSubtitle = "Correct answer is Fox"
        }
        randomizeCorrectAnswer()
    }

    func randomizeCorrectAnswer() {
        let randomCorrectAnswer = Int.random(in: 0..<3)
        correctAnswer = randomCorrectAnswer
    }
}

#Preview {
    ContentView()
}

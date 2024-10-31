//
//  ContentView.swift
//  IronTimer
//
//  Created by Kaneis Zontanos on 8/30/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var exerciseVM = ExerciseViewModel()
    @State private var exercise = ExerciseNames.deadlift.rawValue
    @State private var delExercise: String?

    var expectedTime: (Int, Int) {
        let setTime = 45
        let restMinTime = 60
        let restMaxTime = 180
        var minTime = 0
        var maxTime = 0

        for element in exerciseVM.exercises {
            minTime += element.sets * (setTime + restMinTime)
            maxTime += element.sets * (setTime + restMaxTime)
        }

        return (minTime / 60, maxTime / 60)
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                Section {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(ExerciseNames.allCases, id: \.rawValue) { exercise in
                                ExerciseWidget(exerciseVM: exerciseVM, exercise: Exercise(name: exercise.rawValue))
                            }
                        }
                        .padding(.horizontal)
                    }
                } header: {
                    Text("Exercises")
                        .font(.system(size: 25, weight: .semibold, design: .serif))
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.horizontal, .top])
                }

                Spacer()

                Section {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(Array(exerciseVM.exercises), id: \.self) { exercise in
                                ExerciseWidget(exerciseVM: exerciseVM, exercise: exercise, isAdd: false)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: exerciseVM.exercises.isEmpty ? 200 : nil)
                } header: {
                    Text("Your Exercises")
                        .font(.system(size: 25, weight: .semibold, design: .serif))
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.horizontal, .top])
                }

                Spacer()

                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 100)
                    .shadow(radius: 5)
                    .overlay {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Minimum Time")
                                    .font(.subheadline)
                                    .foregroundColor(.primary)
                                Text("\(expectedTime.0) Mins")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }

                            Spacer()

                            VStack(alignment: .center) {
                                Text("Expected Time")
                                    .font(.subheadline)
                                    .foregroundColor(.primary)
                                Text("\(Int((expectedTime.0 + expectedTime.1) / 2)) Mins")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }

                            Spacer()

                            VStack(alignment: .trailing) {
                                Text("Maximum Time")
                                    .font(.subheadline)
                                    .foregroundColor(.primary)
                                Text("\(expectedTime.1) Mins")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: exerciseVM.exercises.isEmpty ? 50 : nil)
                    .padding(.bottom, 20)
                

            }
            .padding(.vertical)
            .background(Color.black.opacity(0.6))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Iron Timer")
                        .font(.system(size: 25, weight: .semibold, design: .serif))
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}





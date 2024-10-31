//
//  ExerciseWidget.swift
//  IronTimer
//
//  Created by Kaneis Zontanos on 9/7/24.
//

import SwiftUI

struct ExerciseWidget: View {
    @ObservedObject var exerciseVM: ExerciseViewModel

    @State var exercise: Exercise
    @State var isAdd: Bool = true

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.black.opacity(0.6))
            .frame(width: 220, height: 220)
            .overlay {
                VStack(alignment: .center, spacing: 20) {
                    Text("\(exercise.name)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .minimumScaleFactor(0.5)
                        .lineLimit(2)
                    
                    if isAdd {
                        Stepper("Sets: \(exercise.sets)", value: $exercise.sets, in: 1...10)
                            .padding()
                            .frame(width: 200)
                            .background(Color.gray.opacity(0.5))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                    } else {
                        HStack {
                            Text("Sets:")
                            Spacer()
                            Text("\(exercise.sets)")
                        }
                        .padding()
                        .frame(width: 200)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    }
                    
                    HStack(alignment: .center) {
                        Button {
                            isAdd ? exerciseVM.addExercise(exercise: Exercise(name: exercise.name, sets: exercise.sets)) : exerciseVM.deleteExercise(exercise: Exercise(name: exercise.name, sets: exercise.sets))
                        } label: {
                            Image(systemName: isAdd ? "plus": "minus")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding()
                        }
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    }
                }
                .padding()
            }
            .shadow(radius: 10)
    }
}




//
//  ExerciseViewModel.swift
//  IronTimer
//
//  Created by Kaneis Zontanos on 9/8/24.
//

import Foundation

class ExerciseViewModel: ObservableObject {
    @Published var exercises: Set<Exercise> = []
    
    func addExercise(exercise: Exercise) {exercises.insert(exercise)}
    func deleteExercise(exercise: Exercise) {exercises.remove(exercise)}

}

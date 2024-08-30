//
//  Exercises.swift
//  IronTimer
//
//  Created by Kaneis Zontanos on 8/30/24.

import Foundation

enum ExerciseNames: String, CaseIterable {
    // Chest
    case benchPress = "Bench Press"
    case inclineBenchPress = "Incline Bench Press"
    case declineBenchPress = "Decline Bench Press"
    case chestFly = "Chest Fly"
    case cableCrossover = "Cable Crossover"
    case pushUp = "Push-Up"
    case dumbbellPullover = "Dumbbell Pullover"

    // Back
    case pullUp = "Pull-Up"
    case chinUp = "Chin-Up"
    case bentOverRow = "Bent-Over Row"
    case tBarRow = "T-Bar Row"
    case latPulldown = "Lat Pulldown"
    case deadlift = "Deadlift"
    case seatedCableRow = "Seated Cable Row"
    case singleArmDumbbellRow = "Single-Arm Dumbbell Row"

    // Shoulders
    case overheadPress = "Overhead Press"
    case dumbbellShoulderPress = "Dumbbell Shoulder Press"
    case arnoldPress = "Arnold Press"
    case lateralRaise = "Lateral Raise"
    case frontRaise = "Front Raise"
    case reverseFly = "Reverse Fly"
    case facePull = "Face Pull"

    // Legs
    case squat = "Squat"
    case frontSquat = "Front Squat"
    case legPress = "Leg Press"
    case lunges = "Lunges"
    case legExtension = "Leg Extension"
    case splitSquat = "Split Squat"
    case hackSquat = "Hack Squat"
    case bulgarianSplitSquat = "Bulgarian Split Squat"
    case romanianDeadlift = "Romanian Deadlift"
    case hamstringCurl = "Hamstring Curl"

    // Arms - Biceps
    case barbellCurl = "Barbell Curl"
    case dumbbellCurl = "Dumbbell Curl"
    case hammerCurl = "Hammer Curl"
    case concentrationCurl = "Concentration Curl"
    case preacherCurl = "Preacher Curl"
    case cableCurl = "Cable Curl"

    // Arms - Triceps
    case tricepDips = "Tricep Dips"
    case skullCrushers = "Skull Crushers"
    case tricepPushdown = "Tricep Pushdown"
    case overheadTricepExtension = "Overhead Tricep Extension"
    case closeGripBenchPress = "Close-Grip Bench Press"
    case benchDips = "Bench Dips"

    // Core
    case plank = "Plank"
    case crunches = "Crunches"
    case legRaise = "Leg Raise"
    case russianTwist = "Russian Twist"
    case bicycleCrunch = "Bicycle Crunch"
    case hangingLegRaise = "Hanging Leg Raise"
    case vUp = "V-Up"
    case mountainClimber = "Mountain Climber"
    case sidePlank = "Side Plank"
    case hollowBodyHold = "Hollow Body Hold"

    // Glutes
    case hipThrust = "Hip Thrust"
    case gluteBridge = "Glute Bridge"

    // Calves
    case standingCalfRaise = "Standing Calf Raise"
    case seatedCalfRaise = "Seated Calf Raise"

    // Traps
    case barbellShrug = "Barbell Shrug"
    case dumbbellShrug = "Dumbbell Shrug"

}

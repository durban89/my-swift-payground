//: Playground - noun: a place where people can play

import UIKit

enum PrinterError: Error{
    case outOfPaper
    case noToner
    case onFire
}

// throw to throw error and throws mark function that throw an error

func send(job: Int, toPrinter printerName: String) throws -> String {
    if(printerName == "Never Has Toner") {
        throw PrinterError.noToner
    }
    
    return "Job sent"
}

// do-catch handle errors.
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

// multiple catch
do {
    let printerResponse = try send(job: 1440, toPrinter: "GutenBerg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError)")
} catch {
    print(error)
}

// ahother handle error try?
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
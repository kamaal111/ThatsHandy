//
//  ThatsHandy.swift
//  
//
//  Created by Kamaal M Farah on 21/03/2021.
//

import Foundation

public struct ThatsHandy {
    internal init () { }

    static public func getUniqueName(givenName: String, allNames: [String]) -> String {
        let namesSameAsGivenName = allNames.filter { $0 == givenName }
        guard !namesSameAsGivenName.isEmpty else { return givenName }
        let splittedGivenName = givenName.split(separator: "-")
        if let givenNameLastPart = splittedGivenName.last, let numberOfGivenNamesInSequence = Int(givenNameLastPart) {
            let newNameWithoutNumber = splittedGivenName.dropLast().joined()
            let tryOnUniqueName = "\(newNameWithoutNumber)-\(numberOfGivenNamesInSequence + 1)"
            return getUniqueName(givenName: tryOnUniqueName, allNames: allNames)
        }
        let tryOnUniqueName = "\(givenName)-\(namesSameAsGivenName.count + 1)"
        let nameWithSameNameAsTryUniqueName = allNames.filter { $0 == tryOnUniqueName }
        guard !nameWithSameNameAsTryUniqueName.isEmpty else { return tryOnUniqueName }
        return getUniqueName(givenName: tryOnUniqueName, allNames: allNames)
    }
}

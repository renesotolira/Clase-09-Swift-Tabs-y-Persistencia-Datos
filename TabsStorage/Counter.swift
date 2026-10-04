//
//  Counter.swift
//  TabsStorage
//
//  Created by Rene Soto Lira on 04/10/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class Counter {
    var number = 0

    private var task: Task<Void, Never>?

    func start() {
        // evita arrancar dos contadores a la vez
        guard task == nil else { return }

        task = Task {
            // cada 2 segundos aumentará en 1
            while !Task.isCancelled {
                try? await Task.sleep(for: .seconds(2))
                guard !Task.isCancelled else { break }
                number += 1
            }
        }
    }

    func stop() {
        task?.cancel()
        task = nil
    }
}

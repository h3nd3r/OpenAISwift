//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

class Command: Encodable {
    var prompt: String
    var model: String
    var maxTokens: Int
    var n: Int
    let presencePenalty = 2.0
    let frequencyPenalty = 2.0

    init(prompt: String, model: String, maxTokens: Int, n: Int) {
        self.prompt = prompt
        self.model = model
        self.maxTokens = maxTokens
        self.n = n
    }
    
    enum CodingKeys: String, CodingKey {
        case prompt
        case model
        case maxTokens = "max_tokens"
        case presencePenalty = "presence_penalty"
        case frequencyPenalty = "frequency_penalty"
    }
}

//
// TBAMatchSimpleAlliances.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A list of alliances, the teams on the alliances, and their score. */

open class TBAMatchSimpleAlliances: Codable {

    public var blue: TBAMatchAlliance?
    public var red: TBAMatchAlliance?


    
    public init(blue: TBAMatchAlliance?, red: TBAMatchAlliance?) {
        self.blue = blue
        self.red = red
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(blue, forKey: "blue")
        try container.encodeIfPresent(red, forKey: "red")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        blue = try container.decodeIfPresent(TBAMatchAlliance.self, forKey: "blue")
        red = try container.decodeIfPresent(TBAMatchAlliance.self, forKey: "red")
    }
}

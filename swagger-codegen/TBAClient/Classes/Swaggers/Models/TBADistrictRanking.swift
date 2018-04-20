//
// TBADistrictRanking.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Rank of a team in a district. */

open class TBADistrictRanking: Codable {

    /** TBA team key for the team. */
    public var teamKey: String
    /** Numerical rank of the team, 1 being top rank. */
    public var rank: Int
    /** Any points added to a team as a result of the rookie bonus. */
    public var rookieBonus: Int?
    /** Total district points for the team. */
    public var pointTotal: Int
    /** List of events that contributed to the point total for the team. */
    public var eventPoints: [TBADistrictRankingEventPoints]?


    
    public init(teamKey: String, rank: Int, rookieBonus: Int?, pointTotal: Int, eventPoints: [TBADistrictRankingEventPoints]?) {
        self.teamKey = teamKey
        self.rank = rank
        self.rookieBonus = rookieBonus
        self.pointTotal = pointTotal
        self.eventPoints = eventPoints
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(teamKey, forKey: "team_key")
        try container.encode(rank, forKey: "rank")
        try container.encodeIfPresent(rookieBonus, forKey: "rookie_bonus")
        try container.encode(pointTotal, forKey: "point_total")
        try container.encodeIfPresent(eventPoints, forKey: "event_points")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        teamKey = try container.decode(String.self, forKey: "team_key")
        rank = try container.decode(Int.self, forKey: "rank")
        rookieBonus = try container.decodeIfPresent(Int.self, forKey: "rookie_bonus")
        pointTotal = try container.decode(Int.self, forKey: "point_total")
        eventPoints = try container.decodeIfPresent([TBADistrictRankingEventPoints].self, forKey: "event_points")
    }
}

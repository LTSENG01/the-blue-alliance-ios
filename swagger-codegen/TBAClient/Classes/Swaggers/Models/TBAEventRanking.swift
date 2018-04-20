//
// TBAEventRanking.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TBAEventRanking: Codable {

    /** List of rankings at the event. */
    public var rankings: [TBAEventRankingRankings]
    /** List of special TBA-generated values provided in the &#x60;extra_stats&#x60; array for each item. */
    public var extraStatsInfo: [TBAEventRankingExtraStatsInfo]?
    /** List of year-specific values provided in the &#x60;sort_orders&#x60; array for each team. */
    public var sortOrderInfo: [TBAEventRankingSortOrderInfo]


    
    public init(rankings: [TBAEventRankingRankings], extraStatsInfo: [TBAEventRankingExtraStatsInfo]?, sortOrderInfo: [TBAEventRankingSortOrderInfo]) {
        self.rankings = rankings
        self.extraStatsInfo = extraStatsInfo
        self.sortOrderInfo = sortOrderInfo
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(rankings, forKey: "rankings")
        try container.encodeIfPresent(extraStatsInfo, forKey: "extra_stats_info")
        try container.encode(sortOrderInfo, forKey: "sort_order_info")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        rankings = try container.decode([TBAEventRankingRankings].self, forKey: "rankings")
        extraStatsInfo = try container.decodeIfPresent([TBAEventRankingExtraStatsInfo].self, forKey: "extra_stats_info")
        sortOrderInfo = try container.decode([TBAEventRankingSortOrderInfo].self, forKey: "sort_order_info")
    }
}

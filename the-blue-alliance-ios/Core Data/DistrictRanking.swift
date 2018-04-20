//
//  DistrictRanking.swift
//  the-blue-alliance-ios
//
//  Created by Zach Orr on 5/14/17.
//  Copyright © 2017 The Blue Alliance. All rights reserved.
//

import Foundation
import CoreData

extension DistrictRanking: Managed {
    
    static func insert(with model: TBADistrictRanking, for district: District, for team: Team, in context: NSManagedObjectContext) -> DistrictRanking {
        let predicate = NSPredicate(format: "district == %@ AND team == %@", district, team)
        return findOrCreate(in: context, matching: predicate, configure: { (ranking) in
            ranking.district = district
            ranking.team = team
            
            ranking.pointTotal = Int16(model.pointTotal)
            ranking.rank = Int16(model.rank)
            
            if let rookieBonus = model.rookieBonus {
                ranking.rookieBonus = Int16(rookieBonus)
            }
            
            ranking.eventPoints = Set(model.eventPoints.flatMap({ (modelPoints) -> EventPoints? in
                // TODO: Find or create here... instead of fetching then inserting
                guard let eventKey = modelPoints.eventKey else {
                    return nil
                }
                
                guard let event = Event.findOrFetch(in: context, with: eventKey) else {
                    return nil
                }

                return EventPoints.insert(with: modelPoints, for: event, and: team, in: context)
            })) as NSSet
        })
    }
    
}

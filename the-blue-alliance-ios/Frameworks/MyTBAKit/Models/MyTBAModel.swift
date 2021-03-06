import Foundation

// https://github.com/the-blue-alliance/the-blue-alliance/blob/364d6da2f3fc464deef5ba580ea37b6cd2816c4a/consts/model_type.py
enum MyTBAModelType: String, Codable {
    case event = "0"
    case team = "1"
    case match = "2"
}

protocol MyTBAResponse: Codable {}

// Models for Favorite/Subscription
protocol MyTBAModel: Codable {

    static var arrayKey: String { get }

    var modelKey: String { get set }
    var modelType: MyTBAModelType { get set }

    static var fetch: ((@escaping ([MyTBAModel]?, Error?) -> Void) -> URLSessionDataTask) { get }
}

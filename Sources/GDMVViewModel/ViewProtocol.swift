import Foundation

public protocol ViewProtocol where Self: AnyObject {
    
    associatedtype Mediator: MediatorViewModelProtocol
    
    var mediator      : Mediator? { get set }
    var viewProperties: Mediator.ViewProperties? { get set }
    
    func create(with viewProperties: Mediator.ViewProperties)
    func update(with viewProperties: Mediator.ViewProperties)
}

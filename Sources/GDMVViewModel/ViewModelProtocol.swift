import Foundation

public protocol ViewModelProtocol where Self: AnyObject {
    
    associatedtype Mediator: MediatorViewModelProtocol
    
    var mediator      : Mediator?                { get set }
    var viewProperties: Mediator.ViewProperties? { get set }
    
    func stateModel(with state: Mediator.ViewModelState)
}

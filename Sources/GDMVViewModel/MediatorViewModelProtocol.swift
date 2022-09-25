import Foundation

public protocol MediatorViewModelProtocol where Self: AnyObject {
    
    // MARK: - View
    associatedtype View           : ViewProtocol
    associatedtype ViewProperties
    // MARK: - ViewModel
    associatedtype ViewModel      : ViewModelProtocol
    associatedtype ViewModelState
    
    var view          : View      { get }
    var viewModel     : ViewModel { get }
    
    static func create(view: View, viewModel: ViewModel)
}
public extension MediatorViewModelProtocol {
    
    func update(with viewProperties: View.Mediator.ViewProperties?) {
        guard let viewProperties = viewProperties else { return }
        view.update(with: viewProperties)
    }
    
    func create(with viewProperties: View.Mediator.ViewProperties?) {
        guard let viewProperties = viewProperties else { return }
        view.create(with: viewProperties)
    }
    
    func action(with state: ViewModel.Mediator.ViewModelState) {
        self.viewModel.stateModel(with: state)
    }
}


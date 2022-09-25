import Foundation

public protocol BuilderProtocol: AnyObject {
    
    associatedtype ViewModel: ViewModelProtocol
    associatedtype View     : ViewProtocol
    
    var viewModel: ViewModel { get set }
    var view     : View      { get set }
    
}

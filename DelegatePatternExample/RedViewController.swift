import UIKit

protocol RedViewControllerDelegate {
	func updateChoiceWith(text: String)
}

class RedViewController: UIViewController {
	
	var delegate: RedViewControllerDelegate!

	@IBAction func didTapOnFirstChoiceButton() {
		updateChoiceTextAndClose(text: "001")
	}
	
	@IBAction func didTapOnSecondChoiceButton() {
		updateChoiceTextAndClose(text: "002")
	}
	
	@IBAction func didTapOnThirdChoiceButton() {
		updateChoiceTextAndClose(text: "003")
	}
	
	private func updateChoiceTextAndClose(text: String) {
		delegate.updateChoiceWith(text: text)
		dismiss(animated: true)
	}
}


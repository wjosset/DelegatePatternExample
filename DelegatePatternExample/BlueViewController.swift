import UIKit

class BlueViewController: UIViewController {

	@IBOutlet var choiceLabel: UILabel!
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		
		guard let destinationViewController = segue.destination as? RedViewController else { return }
		destinationViewController.delegate = self
	}
}

extension BlueViewController: RedViewControllerDelegate {
	func updateChoiceWith(text: String) {
		choiceLabel.text = text
	}
}


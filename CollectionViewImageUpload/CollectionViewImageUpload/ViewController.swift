import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imagesArray : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        let nib = UINib(nibName: "CustomImageCell", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "CustomImageCell")
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    // DataSource methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count + 1 // Extra cell for "Add Image"
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomImageCell", for: indexPath) as? CustomImageCell else {
            fatalError("Could not dequeue cell with identifier: CustomImageCell")
        }

        if indexPath.row < imagesArray.count {
            cell.config(image: imagesArray[indexPath.row])
            
        } else {
            if let plusImage = UIImage(systemName: "plus.circle") {
                cell.config(image: plusImage)
            } else {
                // Fallback to a default image or leave the imageView empty
                cell.config(image: UIImage(named: "defaultPlaceholderImage"))
                // Replace with your default image
            }
        }

        return cell
    }
    
    
    
    // Delegate method for selecting a cell
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == imagesArray.count {
            presentImageSourceOptions()
        }
    }
    func presentImageSourceOptions() {
        let actionSheet = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            self.presentImagePicker(sourceType: .camera)
        })) 
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { _ in
            self.presentImagePicker(sourceType: .photoLibrary)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    func presentImagePicker(sourceType: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = sourceType
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {
            imagesArray.append(selectedImage)
            collectionView.reloadData()
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

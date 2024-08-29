
# Upload_Image_In_CollectionView

This project demonstrates how to use `UICollectionView` and `UIImagePickerController` in Swift with UIKit for iOS development. The app allows users to upload images from their camera or photo library into a collection view. The initial cell provides an "Add Image" option, and upon selecting an image, it moves to the next cell position.

## Features

- **UICollectionView**: Displays a grid of images with the ability to add new images.
- **UIImagePickerController**: Allows users to select images from the camera or photo library.
- **Dynamic Cell Management**: Moves the "Add Image" cell to the next position after an image is selected.

## Screenshots

![Screenshot]([https://user-images.githubusercontent.com/yourusername/issue_number/screenshot.png](https://github.com/Aqib114/Upload_Image_In_CollectionView/issues/1#issue-2493732691))


## Requirements

- iOS 12.0+
- Xcode 11.0+
- Swift 5.0+

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/Upload_Image_In_CollectionView.git
   ```

2. **Navigate to the Project Directory**

   ```bash
   cd Upload_Image_In_CollectionView
   ```

3. **Install CocoaPods Dependencies**

   If you are using CocoaPods for dependency management, make sure to install the necessary pods. For this project, you might need to configure `Podfile` accordingly.

   ```bash
   pod install
   ```

4. **Open the Project**

   Open the `.xcworkspace` file in Xcode.

   ```bash
   open Upload_Image_In_CollectionView.xcworkspace
   ```

## Usage

1. **Run the App**

   Build and run the app on a simulator or device.

2. **Add an Image**

   - Tap on the cell with the "+" icon.
   - Choose an image source (Camera or Photo Library).
   - Select an image from the chosen source.
   - The selected image will be displayed in the cell, and the "Add Image" cell will move to the next position.

## Code Overview

- **ViewController.swift**: Handles the collection view setup, image picking, and cell management.
- **CustomImageCell.swift**: Custom UICollectionViewCell for displaying images.

## Contact

For any questions or feedback, please contact [maqibmehmood42@example.com](mailto:maqibmehmood42@example.com).
```


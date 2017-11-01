## TabBarBox
the TabBarBox is like tabBar's dropbox

<img src="https://raw.githubusercontent.com/farhad1985/TabBarBox/master/Screenshot/screenshot.png" />


you can use in cocoapods
```swift
pod 'TabBarBox'
```


# How to use

first, you must import TabBarBox and your class inherit of TabBarBoxController

```swift
import TabBarBox
```

```swift
class ViewController: TabBarBoxController {
    ...
    
```

for add button to TabBar :

```swift
let fileButton = UIButton()
fileButton.setImage(UIImage(named: "file"), for: .normal)
        
let ProfileButton = UIButton()
ProfileButton.setImage(UIImage(named: "user"), for: .normal)

// for add to TabBarBox
addButton(buttonBars: fileButton, ProfileButton)
```

you can add any actions to the button.

for example :

```swift
buttonFav.addTarget(self, action: #selector(didTapButtonFav(_:)), for: .touchUpInside)
```

```swift

@objc func didTapButtonFav(_ sender: Any) {
    selectedTab(at: 1)
}
```


for selected tab :

```swift
 selectedTab(at: 1)
```


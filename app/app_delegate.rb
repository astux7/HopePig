class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'HopePig'
    random_img = UIImage.imageNamed("hope_pig.jpg")
    image_view = UIImageView.alloc.initWithImage(random_img)
    rootViewController.view.backgroundColor = UIColor.blackColor
    rootViewController.view = image_view
    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end

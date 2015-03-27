class MainActivity < Android::App::Activity
  attr_reader :webview, :handler

  def onCreate(savedInstanceState)
    super
    @handler = Android::Os::Handler.new

    @webview = Android::Webkit::WebView.new(self)
    settings = @webview.settings
    settings.savePassword = false
    settings.saveFormData = false
    settings.javaScriptEnabled = true
    settings.supportZoom = false

    @webview.loadUrl("file:///android_asset/hopepig.html")

    self.contentView = @webview
  end
end

class MainActivity < Android::App::Activity
  attr_reader :webview

  def onCreate(savedInstanceState)
    super
    @webview = Android::Webkit::WebView.new(self)
    @webview.loadUrl("file:///android_asset/hopepig.html")

    self.contentView = @webview
  end
end

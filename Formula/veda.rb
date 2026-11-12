class Veda < Formula
  desc "Quits a Mac app when you close its last window"
  homepage "https://github.com/AlparslanSemiz/Veda"
  url "https://github.com/AlparslanSemiz/Veda/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0f250e87421af9add79b177262d55b5106a85f0c3e2794941b03cd0d283abb1e"
  license "MIT"

  depends_on :macos

  def install
    system "./build.sh", "--no-install"
    prefix.install "build/Veda.app"
  end

  service do
    run [opt_prefix/"Veda.app/Contents/MacOS/Veda"]
    keep_alive successful_exit: false
    process_type :interactive
    log_path var/"log/veda.log"
    error_log_path var/"log/veda.log"
  end

  def caveats
    <<~EOS
      Start Veda now and at every login:
        brew services start veda

      Then allow it in System Settings → Privacy & Security → Accessibility:
        #{opt_prefix}/Veda.app
    EOS
  end

  test do
    assert_predicate prefix/"Veda.app/Contents/MacOS/Veda", :executable?
  end
end

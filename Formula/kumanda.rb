class Kumanda < Formula
  desc "Use your Mac with a game controller"
  homepage "https://github.com/AlparslanSemiz/Kumanda"
  url "https://github.com/AlparslanSemiz/Kumanda/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cb32dd148abbf1fa6107b82015f4cbc234b859da62c0a35a6f8454f9ad70b29d"
  license "MIT"

  depends_on macos: :ventura

  def install
    system "./build.sh", "--no-install"
    prefix.install "build/Kumanda.app"
  end

  service do
    run [opt_prefix/"Kumanda.app/Contents/MacOS/Kumanda"]
    keep_alive successful_exit: false
    process_type :interactive
    log_path var/"log/kumanda.log"
    error_log_path var/"log/kumanda.log"
  end

  def caveats
    <<~EOS
      Start Kumanda now and at every login (leave the menu's login toggle off):
        brew services start kumanda

      Then add it in System Settings → Privacy & Security → Accessibility:
        #{opt_prefix}/Kumanda.app
      Homebrew builds are signed ad hoc, so macOS asks again after each upgrade.
    EOS
  end

  test do
    assert_predicate prefix/"Kumanda.app/Contents/MacOS/Kumanda", :executable?
  end
end

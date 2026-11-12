class Serit < Formula
  desc "Touch Bar app that stays put: dock, now playing, volume, brightness, weather"
  homepage "https://github.com/AlparslanSemiz/Serit"
  url "https://github.com/AlparslanSemiz/Serit/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "28388a05dde1d21ac7d133dbd387b702f8aae51365171a949a4c90fdea258c5a"
  license "MIT"

  depends_on :macos

  def install
    system "./build.sh", "--no-install"
    prefix.install "build/Serit.app"
  end

  service do
    run [opt_prefix/"Serit.app/Contents/MacOS/Serit"]
    keep_alive successful_exit: false
    process_type :interactive
    log_path var/"log/serit.log"
    error_log_path var/"log/serit.log"
  end

  def caveats
    <<~EOS
      Start Şerit now and at every login:
        brew services start serit

      Then allow it in System Settings → Privacy & Security → Accessibility:
        #{opt_prefix}/Serit.app
    EOS
  end

  test do
    assert_predicate prefix/"Serit.app/Contents/MacOS/Serit", :executable?
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.1/fss-mqtt-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "77059b5dec643c1210b06068c0ab3aa7df41a559d2f0ccc8202fdbc577be3b20"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.1/fss-mqtt-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "9b339d71fdd375930663e4186d67c9af855b29cd2d97ff3a5f2853548ae1ddec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.1/fss-mqtt-0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa07d08c8e985562ae4daae1ad1bad336418b984c624f0b42621e216a32ab887"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.1/fss-mqtt-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa00c23ef6096cfaba357b71f2d7b3948e742a0270c2155c0e4d00b29f169759"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

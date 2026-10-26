class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.14.0/fss-mqtt-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "c283f6568889c9be53e9062bd4d0cce6881536cfe68528b33658700f67365fbc"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.14.0/fss-mqtt-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "58aafde595757ce9d618d8832ff53773d570af7982de7c399a6bddd9535427ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.14.0/fss-mqtt-0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed5acb87535248aef2161d3b127286184751bdbbd6ce610d4c28967598c9858a"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.14.0/fss-mqtt-0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae60bd6eb1832c2f21795cd66e6193cee15c947936c9f19372eba505a8902b11"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.0/fss-mqtt-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "c41a6518a9d7275d4a56d1e7af90a37e5d82f84c68e56ff8b606985b6f1f4656"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.0/fss-mqtt-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "a7de77b0acbfa6655a1b404fc3867bed296286a4b58ae2910be5e9e00c53d82a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.0/fss-mqtt-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "567a551ce3d0148918776608d040ffb53ed566aee42b6ebbe00bb778a230e1ff"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.0/fss-mqtt-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16cf54ccb0934d9b185e205bcd49671f6a672022b49cf1d7b18d9afaaf7a889a"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.1/fss-mqtt-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "c3f21ba873f43f25f004443472309354a5818b9de6aeacddbe56c1789e741cd6"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.1/fss-mqtt-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "44d25d3056643ee4a30542d76dbbfe72a3ca43ff27c6eeb0eda85f25eb5a14e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.1/fss-mqtt-0.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f64c4d2297c9b4e80b1f01ffd69a41fa75527ede4464c8aef9965150438cc98"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.1/fss-mqtt-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a544cc98ef52fe62abdb3d480b886ddb2444853707e9cc2fdad36337c2acfe87"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

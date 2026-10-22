class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.11.0/fss-mqtt-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "b1e5d41f1c4744e029e23294cc2d96271d14a5ba323b9b1166e4454466d97211"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.11.0/fss-mqtt-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "c45b25656f3f338d895c3fc1b0f402e37119e5550512c0ccd5bef9fb6dad30e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.11.0/fss-mqtt-0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cac9ef9eceff9eb1583755fd6cba00da78f525ede5692164190c0b0e4056898b"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.11.0/fss-mqtt-0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d24c66b7fd0314623255bfa22e7bc51dc4ca114e42d54cd2bb26712bb803bd6e"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

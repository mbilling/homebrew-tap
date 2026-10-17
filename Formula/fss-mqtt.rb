class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.6.0/fss-mqtt-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b3c03f204769761de8cda57f05a308b5b90c7f34ea1cabf0f5e79f7f4006b3c"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.6.0/fss-mqtt-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b950c14ca72afe37d8aacbfe2efba79172d60efcfb3851fe74d423ee1a104d09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.6.0/fss-mqtt-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1855982a8efb6a0411a3225c9af88fb530586be69dae3694aa15d52a59ff2fc"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.6.0/fss-mqtt-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce5ff2d1f0912e87f9cbe3b2581f86d30930460bba0b0db326e0a4d48299b8d0"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

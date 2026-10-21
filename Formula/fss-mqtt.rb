class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.0/fss-mqtt-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "f9aa764f95bce3fab1dca39fbee3923e6077b37dd53d93152dc596dbbcb586fb"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.0/fss-mqtt-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8c0ecd4bb752e3ffc9b136af77184b8162081ccbcafd22856357486fec352b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.0/fss-mqtt-0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e725609355ac2fa0b3d27d23b54761a07b417053865f9aacf1095b3e4cf66fd"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.9.0/fss-mqtt-0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9ca28780252c5b2dd547b6e16aba1a7730bc9bcc4a9e0b03c083923b36b4c6b"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

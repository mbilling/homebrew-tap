class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.15.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.15.0/fss-mqtt-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "00db2030d21c6d025bfcc1187afd5b42e3b3824f47cc4d632ea2a5d671aa6c6d"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.15.0/fss-mqtt-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "ab46c76490b189672df5faa1e824c3561526ee1eb4d93b7b40136283e1810226"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.15.0/fss-mqtt-0.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ebd72d333e3a4c3cc1ef6a85716b1019d45fe2d1fa46b17eef146e835669655"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.15.0/fss-mqtt-0.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24f2544c3d696cd6dde3d75acaeedac4623fb4e11fa1e4e8faf9d5f37e55fe5b"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

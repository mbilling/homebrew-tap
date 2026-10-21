class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.7.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.2/fss-mqtt-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "d389a65be94b5c0b0d266e21860dfb5b1b3de9fbc27363b9c75d64053089b004"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.2/fss-mqtt-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "8b490fea939b62f349f3889338a24c56a5324d87a40d7be96f073ed233679544"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.2/fss-mqtt-0.7.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6bfce1b1107d5bbae87afa30f7edc1857cb7d36bf209e5b60142a670e9abaca"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.7.2/fss-mqtt-0.7.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cab39057426ce9a41ac242942bfbae8cf537538d2ebc44d85bfe6727c6e065c"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.0/fss-mqtt-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "56418e3f4e05382468b77db435f347b409435cdae8ecdacfab1e281c69ae9ebe"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.0/fss-mqtt-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca9dfc3f32fa7b7db70fecb0744d8269b9d4ecf46bd6c76bd2324880aa8fd7c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.0/fss-mqtt-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "067ba5101e58c18605131a6d9d077a6d704b889e1053e3c638a0f2bb308f6666"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.0/fss-mqtt-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64a583a929d96b2bd6900333c9b27963f484ac411ce1d451a793bccb459343bd"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

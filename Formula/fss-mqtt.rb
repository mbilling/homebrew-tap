class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.0/fss-mqtt-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f7447b6cfe78a51fd0395acb1be591fa6fd3351b58b440a2a433d63b29b38a73"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.0/fss-mqtt-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "83a4435c9e814db5bd2a1fac1d9916ff357e90c2f2ae767160fdb1144821ab28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.0/fss-mqtt-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "984472dd70dd9b0fd829d6f84446d2decc286ea1fed3fd2f4e6f8d4c6afbd030"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.0/fss-mqtt-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0d3d12b04f103d2f25714481264347427da98952049025a420da660901f9b1c"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

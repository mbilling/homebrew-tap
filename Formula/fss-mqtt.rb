class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "81bc5a5fe6ed81b20632091d24f477e7cbfff3f90d52184160703a93181c7b8d"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "86846aba5e9aac9634f6dd306b6fdafbc992d320371558e4bfd0baaf8399d898"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f453cc20bd75c3973c2fdfd91d664738077a55b0fc9a44f1322a448b88e0c67"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d20377e43fe92390c1e4c5f62043cdff16e949f0819bae6a463413d2590a363c"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

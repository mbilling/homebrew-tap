class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.10.0/fss-mqtt-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "3bd1a460419d625b932bdf506019ef63ed1a0021f05a3e5364b8aeb8c80bc9bd"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.10.0/fss-mqtt-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f19b8458f560242da50e9fe29bff997e4c63d59f01155a867707a3c77a34f4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.10.0/fss-mqtt-0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c6e79fa2c63705cc2c56537f2b9e7f7fa9a9def1fa73eaee09ae8dfadb4a10d"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.10.0/fss-mqtt-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45935bb1354e607f602dd17f30f868e1acdb28b7291ca49aef7f2beb23b32b93"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.1/fss-mqtt-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "3958da56a2157723c7ffecd7a2104994eb7fbbcf74d4233a818810470d1702ce"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.1/fss-mqtt-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "14584d08b338b036c7aef81ab1ae89bf270a964e6e99b33a8af3ee4566732e9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.1/fss-mqtt-0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3dcb51e568f40d972d7e750efe27ea86f1c56d1b656040d3b48e5a89aed98e3"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.4.1/fss-mqtt-0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dadf98bced45a8d3b69e99fd71fdbcbd9ac2c78bac86bd88154cf99b6cfb718e"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

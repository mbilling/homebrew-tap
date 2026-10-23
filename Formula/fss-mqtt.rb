class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.13.0/fss-mqtt-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "1138c4ec90227b8b4a064bf5e64368d02a1afab3c6ab3124a1cf586cecadde93"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.13.0/fss-mqtt-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "05d8a136c50e10608e5ce965ffa084e040329963294a71a0bbe4727f222bd8d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.13.0/fss-mqtt-0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a1ba1f715645355bf7feae9b37b5d1266225217e2cdabf40603f8a5ff53b59e"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.13.0/fss-mqtt-0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5533ecb198de78489aa43348d9e57997a7d9166aaa7d2e1dfdd0e9ee61730864"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

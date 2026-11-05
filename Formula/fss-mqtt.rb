class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.16.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.16.0/fss-mqtt-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "481f1b52e927a0fde9407de4450099cc100d5141488a017c8376d40da3f592fa"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.16.0/fss-mqtt-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "aabb28d266231e2108986ec9244cac12fd3aedc9d9dae42b3466f895ccf1ac6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.16.0/fss-mqtt-0.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d993d767b7f850eae1d90cca594de0eeeb30f2636e5c1925cbfb5c0c951da7ad"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.16.0/fss-mqtt-0.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "072c9210d2719adca111f1e40b886a3976a19637ac403ea93983021eae9a765f"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.5.0/fss-mqtt-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "9d4a3a0e264ab334e218bdde0766080c0fd9b21b85fcdf0c9108b67ce84752a0"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.5.0/fss-mqtt-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "774f1cfdec96ae54132600afa33a978fcd3ca38feaf18e77dbdf827ff0788cfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.5.0/fss-mqtt-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7701dd1d2ed72da70d558871156300bd088a74fb595db5479ab5d0b59fbd5a28"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.5.0/fss-mqtt-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4abd2caca6fed33b71208d665334f6dc1b5f0f7e51b395ea12e53d4b0e767f4f"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

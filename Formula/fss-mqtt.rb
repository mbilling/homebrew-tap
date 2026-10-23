class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.12.0/fss-mqtt-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a3c49cd940340256dd6c352c9902ad0a1c7caaf822b6df3174117401fba3ef9"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.12.0/fss-mqtt-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd4ffef5415f8187c8bb7226fc87fa136940d76abc378c95141e3c48b037c0f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.12.0/fss-mqtt-0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81deab2bee148ffcb24b44ad13467ac76c7718b4a814b2260f0d039e976ac088"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.12.0/fss-mqtt-0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ba821c76ca8330238614cc57ec52175301bc88cd5e6c7cd5a568f9c04ffe9e3"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

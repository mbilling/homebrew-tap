class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "b8350bcd66f82afce1eaa7bb42501ec77f1c011a8c9a2420db9069c29a076a26"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "e9d2b8a4626d77dab0c4a8943e470b721f2eb6bd4a724a152615e89a536a39cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4146e36e1bc7b1383671a27a5a4b72a318bdf28adecc6029d6514ee516a46fe"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.8.0/fss-mqtt-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95cb9a1e8ae69dfd54a83d66a4ce46b8e6c0cfa6120570e028797d453f43078c"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.3.0/fss-mqtt-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "cfd42ede2ae796fee0175e927d844d50019a21ec3eee6f337c3ad02dd4dee9ab"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.3.0/fss-mqtt-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3e5b81fd8f1bcc96685c5c5b2818a9635e2adb973ff866175106ca29c0774630"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.3.0/fss-mqtt-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1bcbdd875462e1430754193413e24e10a6d5c85ac7d0be8f9ba942fdd43d5cf"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.3.0/fss-mqtt-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fad5c53f3f356500ed9f644cef0ba306dd035577b5a4bea98e5ed575eac539c"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

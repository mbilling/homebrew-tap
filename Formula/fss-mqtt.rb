class FssMqtt < Formula
  desc "Fast, keyboard-driven MQTT v5 explorer for the terminal"
  homepage "https://github.com/mbilling/fss-mqtt"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.1/fss-mqtt-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "8b95b47edd32508496075f34b351eaf7fbc9abd61c8f28c0f546d5e0efa4122e"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.1/fss-mqtt-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "2b8d878955b415d89e3361e76b72941e60c34668d32c94b3799e0e219963163e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.1/fss-mqtt-0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e159f5541f2fab61803e7a9a9c8a89cebff9b26d0de604be7c5b3e01410e553"
    end
    on_intel do
      url "https://github.com/mbilling/fss-mqtt/releases/download/v0.2.1/fss-mqtt-0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "045ed548352cddc2da08d642b5c864e657b5af03a593b04e125256ca64da7299"
    end
  end

  def install
    bin.install "fss-mqtt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fss-mqtt --version")
  end
end

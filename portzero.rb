class Portzero < Formula
  desc "Local development reverse proxy, process manager, and traffic inspector"
  homepage "https://goport0.dev"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.0/portzero-darwin-aarch64.tar.gz"
      sha256 "5c618b21d8ef4b68bf446d9bd89b63a0eb88d1e1280dc28d33f549bfe36d82dd"
    end
    on_intel do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.0/portzero-darwin-x86_64.tar.gz"
      sha256 "6a20b25cfe4f718826f0bc23ca3899413e9c7cc3519a3faf4cc71f2f0426060c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.0/portzero-linux-aarch64.tar.gz"
      sha256 "adeeff3ecce11608ddf46751822373fa03461f930511cc89eaa704adc5d32d88"
    end
    on_intel do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.0/portzero-linux-x86_64.tar.gz"
      sha256 "0b6225452be89093fe48c0009899c86e332629c4c6d562ca98a144ac10d913ce"
    end
  end

  def install
    bin.install "portzero"
  end

  test do
    assert_match "portzero #{version}", shell_output("#{bin}/portzero --version")
  end
end

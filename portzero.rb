class Portzero < Formula
  desc "Local development reverse proxy, process manager, and traffic inspector"
  homepage "https://goport0.dev"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.1/portzero-darwin-aarch64.tar.gz"
      sha256 "49e1c9c9bcbc30aa0c023d96178abed5603ae4da6b349c9dc84cb95f680165fe"
    end
    on_intel do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.1/portzero-darwin-x86_64.tar.gz"
      sha256 "2de28cc212124372ff088bc7bab9c6738f7d617b7a330042bb21a3f13a4116ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.1/portzero-linux-aarch64.tar.gz"
      sha256 "6e26a29ae72e5a3e5e7e958b6f6287615c1dd80a398ab2edc7633a42c9a0aba9"
    end
    on_intel do
      url "https://github.com/portzero-dev/portzero/releases/download/cli-v0.2.1/portzero-linux-x86_64.tar.gz"
      sha256 "7aca22af5639652857a9086ec6d4a6fdb3ff733bc45869e4cd052240233f2fe4"
    end
  end

  def install
    bin.install "portzero"
  end

  test do
    assert_match "portzero #{version}", shell_output("#{bin}/portzero --version")
  end
end

class Zero < Formula
  VERSION = "0.3.0".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "4e708dab2a6ae71e011fbc6e8f4d12febc2d6502cfae0a46662f570003418bdc"
  head "https://github.com/zero-sh/zero.sh.git"

  def install
    bin.install "zero"

    zsh_completion.install "complete/_zero"
  end

  test do
    assert_match "Version: #{version}", shell_output("#{bin}/zero --version")
  end
end

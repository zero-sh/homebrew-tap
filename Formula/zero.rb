class Zero < Formula
  VERSION = "0.2.0".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "526261550c914a9f964922cf24ea6389f395bb70b0b5c3c55b4b3ad0f651f0b7"
  head "https://github.com/zero-sh/zero.sh.git"

  def install
    bin.install "zero"

    zsh_completion.install "complete/_zero"
  end

  test do
    assert_match "Version: #{version}", shell_output("#{bin}/zero --version")
  end
end

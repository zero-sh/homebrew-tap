class Zero < Formula
  VERSION = "0.5.0".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "2e7fe800da09db1ff2a2ebae04740f037cfe4c7cc1ce281e408ad22e53e85a50"
  head "https://github.com/zero-sh/zero.sh.git"
  depends_on "apply-user-defaults"
  depends_on "mas"
  depends_on "stow"

  def install
    bin.install "zero"

    zsh_completion.install "complete/_zero"
  end

  test do
    assert_match "Version: #{version}", shell_output("#{bin}/zero --version")
  end
end

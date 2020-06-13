class Zero < Formula
  VERSION = "0.3.1".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "8ce6b05d58ab00df922d0171d752534c3742b3b86cd3714ff892b27ccaffb8b1"
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

class Zero < Formula
  VERSION = "0.4.1".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "74399b2824a3d71b183a71e7fafc46ee45d9fb79da469d6e80613f998f02beed"
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

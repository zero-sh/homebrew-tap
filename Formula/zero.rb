class Zero < Formula
  VERSION = "0.5.1".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "237485517d2dc5c7bd2de5b094d79df3ed11f436a1678f3b612ee81babdcc0d4"
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

class Zero < Formula
  VERSION = "0.5.2".freeze

  desc "Radically simple personal bootstrapping tool for macOS"
  homepage "https://github.com/zero-sh/zero.sh"
  url "https://github.com/zero-sh/zero.sh/releases/download/#{VERSION}/zero-#{VERSION}.tar.gz"
  version VERSION
  sha256 "e7db6631cc2792789ced4c5ade299213518c9e2a30437a73e624cb61e0bc6d8a"
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

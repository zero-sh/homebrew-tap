class ApplyUserDefaults < Formula
  VERSION = "0.1.2".freeze

  desc "Small tool to set macOS user defaults from a YAML file"
  homepage "https://github.com/zero-sh/apply-user-defaults"
  url "https://github.com/zero-sh/apply-user-defaults/releases/download/#{VERSION}/apply-user-defaults-#{VERSION}-x86_64-apple-darwin.tar.gz"
  version VERSION
  sha256 "8329c20f7f4c8cc87372e4077411232224bcb01f87883ddd90786e7b52adc14a"
  head "https://github.com/zero-sh/apply-user-defaults.git"

  def install
    bin.install "apply-user-defaults"

    bash_completion.install "complete/apply-user-defaults.bash"
    fish_completion.install "complete/apply-user-defaults.fish"
    zsh_completion.install "complete/_apply-user-defaults"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apply-user-defaults --version")
  end
end

class ApplyUserDefaults < Formula
  VERSION = "0.2.0".freeze

  desc "Small tool to set macOS user defaults from a YAML file"
  homepage "https://github.com/zero-sh/apply-user-defaults"
  url "https://github.com/zero-sh/apply-user-defaults/releases/download/#{VERSION}/apply-user-defaults-#{VERSION}.tar.gz"
  version VERSION
  sha256 "ce763cab70f6fa72ed767f48cd5b46ca9da5c39fcfe0f1d8e5dc3f5bdc18ba83"
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

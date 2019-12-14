class ApplyUserDefaults < Formula
  VERSION = "0.1.1"

  desc "Small tool to set macOS user defaults from a YAML file"
  homepage "https://github.com/zero-sh/apply-user-defaults"
  url "https://github.com/zero-sh/apply-user-defaults/releases/download/#{VERSION}/apply-user-defaults-#{VERSION}-x86_64-apple-darwin.tar.gz"
  version VERSION
  sha256 "9091f648e344419823af678600376ec40e7c3d2d54df58e6d93d552d80cb9124"
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

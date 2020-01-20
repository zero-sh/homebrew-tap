class ApplyUserDefaults < Formula
  desc "Small tool to set macOS user defaults from a YAML file"
  homepage "https://github.com/zero-sh/apply-user-defaults"
  url "https://github.com/zero-sh/apply-user-defaults/archive/0.1.1.tar.gz"
  sha256 "7c28c8791900fcdf076d2d42f92a1614c7268d5d9b649a34b36197f9ab94b4a8"
  head "https://github.com/zero-sh/apply-user-defaults.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."

    out_dir = Dir["target/release/build/apply-user-defaults-*/out"].first
    bash_completion.install "#{out_dir}/apply-user-defaults.bash"
    fish_completion.install "#{out_dir}/apply-user-defaults.fish"
    zsh_completion.install "#{out_dir}/_apply-user-defaults"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apply-user-defaults --version")
  end
end

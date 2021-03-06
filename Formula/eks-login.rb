# This file was generated by GoReleaser. DO NOT EDIT.
class EksLogin < Formula
  desc "CLI to automate the EKS login process using STS credentials created by vault."
  homepage "https://github.com/luizm/eks-login"
  version "1.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/luizm/eks-login/releases/download/v1.0.1/eks-login_1.0.1_darwin_amd64.tar.gz"
    sha256 "eb4485cb27085a43fa6aee67942b826d3743e166d285766d8d6b7c5ea21ea435"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/luizm/eks-login/releases/download/v1.0.1/eks-login_1.0.1_linux_amd64.tar.gz"
      sha256 "62e069db3067fdf2fa9d635b8808f6b6ae2933a721ef283825ae150ded7469da"
    end
  end

  def install
    bin.install "eks-login"
  end

  test do
    system "#{bin}/eks-login -v"
  end
end

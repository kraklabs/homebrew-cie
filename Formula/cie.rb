# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.1/cie_v0.7.1_darwin_arm64.tar.gz"
      sha256 "43fa928e878e22a6c0066584667f44f0883988b7c23287c7712ded84a901e6ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.1/cie_v0.7.1_linux_amd64.tar.gz"
      sha256 "cb48542a51ea34a8c3a7b1db7146de5f9bd3a69de5bfa550c25965b89d437dc7"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.1/cie_v0.7.1_linux_arm64.tar.gz"
      sha256 "36f0c693c1818427aaea48809360334e0af52ec2a823260b708ca5b5e5405251"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

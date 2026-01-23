# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.7/cie_v0.4.7_darwin_arm64.tar.gz"
      sha256 "49e81b00d09e469c26631b79e859b8b0dcf409d5508c832e15020485082767ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.7/cie_v0.4.7_linux_amd64.tar.gz"
      sha256 "236767a30899dffba2bf9b48a229d57a0652286d055f17259dc1eda209d70235"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.7/cie_v0.4.7_linux_arm64.tar.gz"
      sha256 "2ad90c90fdc02d07b679cfb89b7b1b94c98ef826efb2205cf5f71ae004db8875"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

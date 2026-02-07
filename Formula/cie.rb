# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.2/cie_v0.7.2_darwin_arm64.tar.gz"
      sha256 "ec022770010eae5e1bbfa39448989719d05ce86f8a236084e15f5fa6df29e4f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.2/cie_v0.7.2_linux_amd64.tar.gz"
      sha256 "4b4d1bcf5d7c9600d1384ffd38e9ee708beb4d890971fbdc5d9921d1a3afa7cb"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.2/cie_v0.7.2_linux_arm64.tar.gz"
      sha256 "e43b77e3b3532ef3bb0b01a54b11f5a8608f765a2d4fb3463d699e752bc227e4"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

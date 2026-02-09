# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.17"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.17/cie_v0.7.17_darwin_arm64.tar.gz"
      sha256 "523e8a69041405e7881a816653267c660357f3787be2ac17873e2d83ccac4d87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.17/cie_v0.7.17_linux_amd64.tar.gz"
      sha256 "8a98023d9a649fc9e2cecd33cdcaebc75c105d5a09523bf3ab565f6e4dd2b16d"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.17/cie_v0.7.17_linux_arm64.tar.gz"
      sha256 "91a2f4a735e089a24e116bcc5b17eb7a4b1d282649a7b5ce69fb7390b9ff8adf"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

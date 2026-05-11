# 24.10.6 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-oIJp9xznQpcJIzuGIes2M50uJRJXnzqUZz3uEv9Ybgc=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-R642pIjFMn4E3nem+vbpIY+BH3uxVdQJY6bdU9lpowY=";
      name = "loongarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-+Cgzrmu3SLHcktHyhQbKSacsUjU77WKZhXVOlYSC/bg=";
      name = "loongarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-Re6Ofvrmor67sPf31Xven8DJtOO9b/Ntnf7Pi50R4go=";
      name = "loongarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-cTetrqXN1nAz0MGAqCiu/9dwOeXO1acu2f0/LPaqcZA=";
      name = "loongarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-aq9SvNFFz1ds0iA1nYW3Y4jtZ6KgNbYJT5y015fTDLs=";
      name = "loongarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/loongarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

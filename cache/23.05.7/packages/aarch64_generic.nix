# 23.05.7 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-cYE1DV8p6DaDDSsWXFqAl/H3n52VVbjaxmZ0FMUY6so=";
    name = "aarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-/Tmr3r6mVvjprhkTZEOkW8GUnXjpyNgXJ0unNn6euCY=";
      name = "aarch64_generic-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-FxYHH2+jj+Ys5XY1gsG5GMB90hdkbz9xUP50e4jOhz4=";
      name = "aarch64_generic-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-5jqFklRRQwCDWa8FY2Q0/FWKuBgxT7oPZwjCtgbnDtk=";
      name = "aarch64_generic-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-mAWkoQCbZ1o16amQ57JbrPKqq6gWoXWargmpzr2uqs0=";
      name = "aarch64_generic-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-VuZTZhLqcDQZznH2qcq9l1+k4LDD+xBEtc4QKRMP7os=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

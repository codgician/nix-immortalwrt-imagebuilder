# 24.10.5 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-dUaF/JiFplV7VaezuG+Bz2ZIcEPgeYOxQwhD/Z9lYsY=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-zjBilfMMxfUMLE8ORnbB5qeD5o2gDEAs38eBCkDg5n8=";
      name = "aarch64_cortex-a72-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-c7VuNomYDlSuk4QCl9BB1p8yrtEArx8By/LbnrglaC8=";
      name = "aarch64_cortex-a72-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-0So7808JsNHYpftbv+1Tm89KkwPDaJuBYJVzxiYQQd4=";
      name = "aarch64_cortex-a72-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-urR5hkcg4m16IbxkXcDr1zR6Oae+8zyNDI9+/IkwA1k=";
      name = "aarch64_cortex-a72-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-HZ/N0gfvs2LSqqpIZjaiZHwLlcfkcUv7ouj2tIaKpGY=";
      name = "aarch64_cortex-a72-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a72/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

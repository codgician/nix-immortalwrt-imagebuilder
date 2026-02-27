# 21.02.7 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    errcode = 1;
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-wlvy4yAXyqZ0nfbBgLwlbEKtYCiK+UYgMMW5KubpSpU=";
      name = "aarch64_cortex-a72-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-Q7uG4g9WB0ZbmX9I181GFhIAIAAScHkQkw9Xaib6794=";
      name = "aarch64_cortex-a72-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-xzmGBXVHsC+y7/XIJWlmroDyHv2mWktRyuDmHCSahVg=";
      name = "aarch64_cortex-a72-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-KWXnU4KX4mgex50H7xXOLK4w85xNE4FdpmMUfAMV4yk=";
      name = "aarch64_cortex-a72-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-y/cqZHMscIpvJnIUvCcoswkHJFyBZg3x6n9Rb5fAUdw=";
      name = "aarch64_cortex-a72-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a72/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

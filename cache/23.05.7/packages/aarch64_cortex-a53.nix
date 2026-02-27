# 23.05.7 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-SdTuTSMEMKiFfVZ1dhDwUhvPQ4A5CJPi8Nw7lXkxb1o=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-3nuwyjFSvVVLgXl/omCy1BfOEFChRydaznaqI8ums0w=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-RgjDODnoVkHvvwK8LJoHgzGnQ94DTRPHQnZmoWRKJbA=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-gI6I9pwQL6+y6oWxjvRUb+uCJSfd8svcY/bOSYJA0Uc=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-q1b9MOPIM7bTntZunZVt1Iz3DYnkKTBigRnY1KgI/gM=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-4jnlv5AC2cIGS8IUqF8jjHnpzkPPSSgM2s8hisi5d5c=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

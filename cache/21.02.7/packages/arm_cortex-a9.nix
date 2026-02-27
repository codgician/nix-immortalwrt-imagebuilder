# 21.02.7 package feeds for arm_cortex-a9
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-ZCVoVpcZsQJ6qM8awzOQu3uzsLPpJHXrTLqyzM4B8XM=";
      name = "arm_cortex-a9-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-gmA6RKWCnGRdweaEspYPQJlnNJ8skWRq6HtvGN+rJ7E=";
      name = "arm_cortex-a9-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-gIeQEwGBXWDeSDHfjo1KmMRibXWI1EOH/rWgyWqTzLQ=";
      name = "arm_cortex-a9-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-H30Vn4plGDMPEdAcs06WNAOQ0pVJ5OlGB+74KxqklJc=";
      name = "arm_cortex-a9-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-XMy1ZYHUVa8HWrLa2LVRlGIapKgGIJiW5zIGnBY/7zc=";
      name = "arm_cortex-a9-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

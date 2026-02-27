# 24.10.5 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-vBsXt2QgPdc6N4JrXRi6vw+aZYFXJUPSEr+/GwogUsE=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-yC4X+N5MJoY2W0AB9fva2mZFog9fsXQGxVUoOz2ZRrU=";
      name = "arm_cortex-a7-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-hFNngDspbeOcQYQeo0JWpgOZmkZxTrstYFXVmPVUkEY=";
      name = "arm_cortex-a7-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-beJ0+PW01stM5Ly0Qu8YmOs3qxn9ijbMgeM2qsGi2fM=";
      name = "arm_cortex-a7-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-F+2LIrx43y/qESTzbMzayBRZEUqIBpc79PaZtZ+g24w=";
      name = "arm_cortex-a7-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-gBoM9P3+gQrzkwK59iuwDUBY23+TKYizYmqjdPRYPTI=";
      name = "arm_cortex-a7-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

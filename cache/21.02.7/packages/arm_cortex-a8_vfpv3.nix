# 21.02.7 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-KQH68BloqSLY2n/od6f9NHdj5Hls/85GVKFqrXRgWt8=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-c8fuJWYlZgjlYsyNnS+J+I13OUccRDvWErvqfjvGiK4=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-5QbUqwS0PU7OtB4N3ag4hVsT0l9rXhMveroCsGn8kX0=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-xqxvr/yglPUUl94mSNhH2SLayvvZ1mZj0SjXjZAxcFI=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-sjcROUnkeuvQ+nQHMblD/6L8EuJuYYfZamUm06AQP3E=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

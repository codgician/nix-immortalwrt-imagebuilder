# 21.02.7 package feeds for arm_mpcore
{
  sha256sums = {
    errcode = 1;
    name = "arm_mpcore-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/base/";
    sourceInfo = {
      hash = "sha256-Q0Cj3YbMTJymFWl//Scl48Ex7I6B9ayNTnxj5OMryEo=";
      name = "arm_mpcore-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/base/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/luci/";
    sourceInfo = {
      hash = "sha256-EZ+Pnm3h5YBCt1nznXOHcccUPXR/B+udjq+VQGiMNXY=";
      name = "arm_mpcore-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/luci/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/packages/";
    sourceInfo = {
      hash = "sha256-C3tVjvmOf0Vi5OcwbI09hErfz+NU0AcSWm1qeILcgn0=";
      name = "arm_mpcore-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/packages/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/routing/";
    sourceInfo = {
      hash = "sha256-ozj1IH2gyoVuzBJ45fZdJuEqRl24z0Qcvh0pQv0vh0E=";
      name = "arm_mpcore-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/routing/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/telephony/";
    sourceInfo = {
      hash = "sha256-w9N6RiR/QwcHgmRqdwp5rRpk0Ie4qRxAkPf6KI6jkZA=";
      name = "arm_mpcore-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_mpcore/telephony/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# snapshot package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-R8NLL583xZctZSkpdlK8Tg94t2IdXJIY2FBrAjw/YV0=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-vDZderxbbGFMJQllVVhZ0B5hJFFp+S/NPUOKl1ju1Mc=";
      name = "arm_cortex-a5_vfpv4-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-hULvROKmzGaG1Ghlz5W/CezIdgKJ2UXDnThVILZFq/I=";
      name = "arm_cortex-a5_vfpv4-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-lnBRbikYlU3A2n1FML4NDAhRUlAWF8e9ddcGYniGrPk=";
      name = "arm_cortex-a5_vfpv4-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-zSLG3GZ6gbYkQtm4EGq4wC3VbWk1SXAhI5eNv+1rSKc=";
      name = "arm_cortex-a5_vfpv4-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-PQjAXfXqSUXz2p+tmwx3E82Gpxh7fH4Qw7wh4KhFTGQ=";
      name = "arm_cortex-a5_vfpv4-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a5_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

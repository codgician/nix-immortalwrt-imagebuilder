# 25.12.0-rc2 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-0/sQW44Jk2Zo1Y/83Poz9nH+daIka0HE6XJTHq+hYrY=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-slPXj7uM3/tti/l8teU8zQ1BHWAayEfN4/ZjAxO8hus=";
      name = "arm_arm1176jzf-s_vfp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-MouKTfuJ8gYzpoo7IyMytJvvpIxeNhuqjhXpqOhmMyM=";
      name = "arm_arm1176jzf-s_vfp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-9hJ/iRsqSpkfT+GJ/HBerOFy0kbNHxeUKakYIzUjKPk=";
      name = "arm_arm1176jzf-s_vfp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-OtpLI7Yet5OsMnrLI0hoIfu4r+/TouNIIfN+TYthRzQ=";
      name = "arm_arm1176jzf-s_vfp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-CvxbOuIthcwxbd0dalCceCl9VjrjUxQ/AghH7sRTxjc=";
      name = "arm_arm1176jzf-s_vfp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# snapshot package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-YqilaICBLwuXp9xHAbXrgoWv0+qe6uexxp9+VnFshR8=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-Wnv61d6khNGh48jL6Tj//mUhoz54JknpuRZTt728fH4=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-uxVtEkDtXMqhiG6eC04k4/mVXbGfyNfckax5kL3uRB0=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-TIQv8jvJvcuLS4+AsFlKQdKRGXuKBjGZwRKXoiKpfc0=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-tZ2xe5E8gDVVopB1Yy1Q8yxmgmKHTbW59TglPCJW09o=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-YGBVXKE/zHdQH97jMwVdHGV/VM8oinAHgmXl4b522Zw=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

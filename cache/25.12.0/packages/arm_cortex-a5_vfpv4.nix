# 25.12.0 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-YXi1WHjNg6CkAxXRBx2tpTFV/lNQzWRRjzBpqiyrRr8=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-r/tpOLCOt1ZZruKm0ThJt7SK6Oz57qF0r4FpkS+UO20=";
      name = "arm_cortex-a5_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-i+C0T/PHjtv1bxF6pz9GYmnSh2MKxLN049jGRo2qd8M=";
      name = "arm_cortex-a5_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-kyZZIh9gltpS/wyt3X+KoKyePCXrUo0uslnOI1XRDrI=";
      name = "arm_cortex-a5_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-2i3MnVi2KEQHkorgiowveJw98AewjSdEBcJKCobGHDM=";
      name = "arm_cortex-a5_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-jSX/jyKACXSHSi5nCGBpfinPNXEnkj6PaUutTjd4hm8=";
      name = "arm_cortex-a5_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a5_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

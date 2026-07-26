# snapshot package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-DPyFP3tX+nIoDy1UCPcINDOsAZJgKJfVrBZ7cLApkw8=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-YICrTeD1fWV5deZXb9vfwlmlQRrY1o3iXSDGD770MEM=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-jkLr5/UiAI7Ygf91nV4XUJ1UgTFsp8n+X7v6MNWfBa4=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-Un0oaw8LG0xicjncAK8dHpuoRmt+EB0tA75KMAgCO8Q=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-tdbNhJPAy6jQlNG77n/ADQmDBkzgRcR6GJ2XwQ3TO+8=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-qQGeqSdW3i88ypAtCgfueaDstNX9PvmEy7GfO8sGEpw=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

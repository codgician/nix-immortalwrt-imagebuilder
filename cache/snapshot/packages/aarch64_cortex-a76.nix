# snapshot package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-o+odYO7wf0uLp7uTF0zTYrWkqDO6IJYDP8ps/JylaAk=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-MThBQURBWyxzMGlbQvoWI0vva4CabSE1h7xI53B1VBw=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-sYZcFpBj8zeqXqxf9ps+aLLtr/KoQJiY1Mv7CFCRats=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-rujnwE7oVb2IWc0LiOf9lbjTAHsNpITgBXPkfmsGC0M=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-TMN0f2CZEXTpcM++4Qo5TPpioWucq03+9pH5qadCQdw=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-+cTW8VCH7BOpLN8lTzG022Kj6l1ofuWCaKGua5BBPKg=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

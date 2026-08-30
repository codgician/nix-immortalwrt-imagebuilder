# snapshot package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-0B0gJZmjOJBq0yQFDSkK9iYyyARQxcmEOlu3FlmWLSM=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-fFwe3SXt84j9G6MtN0ueWig9F6qnnCKrHwfJsdpZmpw=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-8Pu9Jg2eeEBUbaJVsXVJdm2JAjFJ8sATWqdPD1zLVMg=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-5Ch5bFbW+CQZVrL2K4oPQ3LCMeBdyRs9A2j2Txqw9+w=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-5BspjJpOYclEKZTiJZ+b9hsSnKK+u00oywOzNB76IK4=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-RzNGZIaPC1u47HkSpfyYqdgB0rqmQT4sOe2P8h9gxfA=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

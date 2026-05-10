# snapshot package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-4iZM0N9cpijwbDrl1ngdAc+1GM8c3Wa2H2F7kCEPtFA=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-8ikm9nOKyMCXBWVOH9CjW7H//3zbQKAgnafQ60mKUvg=";
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
      hash = "sha256-YQxFW2ekyxBGZwMcnHSbn7W/mThotCjPNKHGlEk4p5U=";
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
      hash = "sha256-MHmprwrlGYA6ZcUChRnXS5QFsld7DFEm9Yhqk4Z+vl8=";
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
      hash = "sha256-+/TSwQif2TnwUP5G9d8ByOvytLrSouy7Uknvu9Nehg8=";
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
      hash = "sha256-+LHcffj8xI6IFucD7AOsES/opxpIAzS+YQK7o9uRqvU=";
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

# 25.12.1 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-+Cx2tkkte1na7nuq/QS2igRVNIF43/vxhJBGjARKh5Y=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-gsqRJa8rCaBU7jYg6GTCF11iT5IRaOB7HN0z998OXl0=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-oQA+lzscF5HxRgXRAey81NFTmV69TJGAjJ0khkoyrQE=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-uZemRN9OrPf12ABLOfbK6Iy98BrzFpQzTEGBCJ1tgiM=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-2WWLdWrHeIvwFEAfFZz2qGWrhs0MUQvvhZS/XNYwT7M=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-R1gLI2wLjbSHSQWqwrjJxi1BK7+OKLdojEurXrQAXms=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

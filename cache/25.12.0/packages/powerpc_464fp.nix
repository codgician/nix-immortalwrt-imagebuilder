# 25.12.0 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-QujSRAbwHB91kLj7GTHSGgylIYvuisB3MrAssRD72Ek=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-iSD0gGtMg0xx6MMTQdze9FBSyZuUFy2OuHc3l9yGahE=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-G2uVZhqA/JqKg1rhKlcUJPzBh7pOrTijlbGLM2Isq8s=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-YzCLY8KKXmTrWrFsijmFAgmdAYsmkGhfMMUG9LkuYDs=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-Q0db15FEMVug6c6J4+8hiLPa8RvP30f8d/XpOgN9AAE=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-qHmIR0UvWzsgR/vyewwP8dKSaSYCto1Qq3jaMIziUAA=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

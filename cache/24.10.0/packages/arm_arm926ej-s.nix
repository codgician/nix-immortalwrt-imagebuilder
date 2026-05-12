# 24.10.0 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-VwzJYtjoMAg38x7/fNTIBKWg/NFRHssYShc/8pBr/Ns=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-i3jChRgp7B4L7aolNC6ZV7fv4xYDuEbVV565G4HlIH4=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-KJDa2e8qwIed9ASTAItLSMTndMTOvp/MaEvtZTY5k/w=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-b1guhHpMh94ecWWmK1bYIQ0/yUNbGq9kKDG1e0V4rDM=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-nkNEU+0xjAHsHkAVzD6KH9fQfREEz2MzrJRLXBDreAE=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-iI2B8QfFxyr1VLKvxdbLeOU9eDYcjRl6X6VGmB6Y+hc=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

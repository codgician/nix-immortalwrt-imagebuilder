# 25.12.0 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-LMoz8uqD92YVx8Dglvm0W3uLF58d1PPc/bTVzgupa3o=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-g4V07xaj93H4R3uuTQn9MY1yPIY4DVFpkaze2hQ2BEY=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-PvK5AlhMBurfo7mmEs15uxXmSk9vd137jclVEnnd5BA=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-j4qz+t7M2UeLjAtuuDXkcvZXIHnTu1MRsmIMwSKYPqo=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-3KaQX16jed/0TEdQE5S+fEHsyLreGmRqUmEKV3kBk8Q=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-TpEGflotnrHlnjnTdYe3TAHlJ0mGlnwbW1cRVfBb8XU=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

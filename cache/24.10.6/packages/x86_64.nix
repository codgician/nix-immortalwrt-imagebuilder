# 24.10.6 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-4ZSKAqir3EpW1LvrcQ+DITq/XbS2DTWGsG9tecBK17M=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-VUSNTPBTbfQN5QXld0P/qegn86Ga3q1cS/hdFszJXaM=";
      name = "x86_64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-NfZYmfY0tHjK9tfgbfs4K7t5UseKbwaNnokVh3EAaso=";
      name = "x86_64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-uEYDh083d7fuH6jrrxwE8UFGpPm6eGROjLTdS9StwJk=";
      name = "x86_64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-lA9QQVnTcu/gCihs1VzP/jdi5IMW9XA4xYLUhPIjpvw=";
      name = "x86_64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-V82eXxM657rn0+34BVcoV0fQcKv2ev8NnZf3wk8/cbc=";
      name = "x86_64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

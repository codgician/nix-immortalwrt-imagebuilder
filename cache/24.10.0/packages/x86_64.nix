# 24.10.0 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-ljBHT6RDXo8g26CFxCrT0ZEVf2iD/4xw3y44ydhrkQM=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-2gN9szae7zUmwsoD53VKYO7F7NjoBNVAFXwtAtxH4y4=";
      name = "x86_64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-P/x152pY/6zN1f6yv8xQGHxbK2yxWM+Mw5DI15qLhzo=";
      name = "x86_64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-QHCWiDzBHJtumzrvFBxaBQKAsVOR/SmnM/5766hHMNY=";
      name = "x86_64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-hazU8UyhwkOwXE5yRFD7mYlhXzJnMaLKldQQ/IkFd4s=";
      name = "x86_64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-/odjQFjTGEqryh5GTJXFCfoGanEBJJYfgxIYLk783ms=";
      name = "x86_64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

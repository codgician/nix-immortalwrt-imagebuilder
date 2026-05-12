# 24.10.2 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-r+MhIyStQG/GQ6cFHY93RP/SUbebpGJ0Ylb1SBJeEu8=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-552ePb3A4rDhBJyQBBO3Er+ltXMobScJt3CPy9cCik8=";
      name = "i386_pentium4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-xKQ58LUGxU0g26mjTNdManJt18ZVYmNsslerAYqCQ/Q=";
      name = "i386_pentium4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-2AUCry84gxSTMoZ7Zg+AN9QJtUHgyiY4z+Tmz7NRuZA=";
      name = "i386_pentium4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-VLDt38chFOqOSunxqlkOUWrhz37vS0FkkrFOtQ2a8Jk=";
      name = "i386_pentium4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-eCWLtqdVWOhdzFdTYq9ytrPrnroy5z7S1t7ixBThNnU=";
      name = "i386_pentium4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

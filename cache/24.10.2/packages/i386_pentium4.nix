# 24.10.2 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-qQAqo2Yg/252GhZAIpK60Moke4bKqOZwRDZb5kYV0KI=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-QCc7fae+JZ9kNLCnGp09EYX06EQp/w49bRH6UFurAJA=";
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
      hash = "sha256-NHE3+CRe0POkTjj028hm1DrqBTnIOYDoW1Uh+/rBHp4=";
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
      hash = "sha256-pRx4Id2N3bZXaSu92wIE3FjEM6OpXYAUPohHBk9hfFs=";
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
      hash = "sha256-CMGFaidUk2WfXJtZvVPzg9g3k6Qr0t57mH6joyB+g7I=";
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
      hash = "sha256-JkxJbHrlfi+AqNjC3xEXvapDUTj4igrs7I/kXLGXn20=";
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

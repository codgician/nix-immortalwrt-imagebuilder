# snapshot package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-qecE7Fl8wIaHMzZBZ5co96BXAimwqUeGwiPuEiUxlhs=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-jYyUKjgOC5aPjx6OrpriwtvTbiS/qm+dRGcHHv1Ln/4=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-xtzoK/7QgA0JK7gp5VnCnl09vgi1HDW9SfdMhULpxD0=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-SgYk/4uRXvYBs2Lb5uEty3DUqJIRH9w/haCoJkRfZcs=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-FcgJznZxRmZVSRxbQN0UpRYJCb3j+XAR+OUjG1R6bwk=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-MGHsP7RsBuB2HaAB+5acGUsWwb695Drwpm/SufA4ja4=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

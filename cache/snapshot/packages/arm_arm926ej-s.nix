# snapshot package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-4doXRKpcwvljb9KkYWO5I84fOwe05yeNBZlqlihdZkA=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-GyrpI0vhaIREQWjVElAdaAGeImUwfiP7PIsOTEnP2Zc=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-GNPfM71fRq0SKFJpLqESVIhnID/ujzHzh3AChmKA+DE=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-ehEISW9dDiJX1Qe4V8aWyJ8TEmXj3Xp6nZaCbNg9iBE=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-GhBb8sxzyFuxn+9H/AmjzGJIvB2tRJ68y1jKT5bY04E=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-oZ7W+GHqT/hmxef49eZuthkbipKfjWELgqvGfZ8+/oU=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

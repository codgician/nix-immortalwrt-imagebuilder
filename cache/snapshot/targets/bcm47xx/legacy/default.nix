# snapshot bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-kkkKDpOlFn1zd1eBmDIP5wvObzLQOjcqJWfiP7EZA10=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "d3b70042f82a59dd5d30a4cf13467b451a6bab26015c6f51495f0734bfa90626";
    filename = "immortalwrt-imagebuilder-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Bc0QaaiZplkIFFOyoJCqHlIfK7zA9oaScU0kf6IhY3w=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "e6529a66b8c43a71442ae34cb9d224cd";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.18.55-1-e6529a66b8c43a71442ae34cb9d224cd";
    profiles = {
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.55-1-e6529a66b8c43a71442ae34cb9d224cd" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.18.55-1-e6529a66b8c43a71442ae34cb9d224cd/";
    sourceInfo = {
      hash = "sha256-AhmQh3n9V0rLL2sFVNppthvUuC4hGBBcp3YNHVt20GE=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.18.55-1-e6529a66b8c43a71442ae34cb9d224cd/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-nN+rH0CG0yNP3G/kLH+7uvoqGQ/aPJRejs2Uc+FhD5E=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}

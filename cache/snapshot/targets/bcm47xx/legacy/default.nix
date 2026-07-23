# snapshot bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-RukJvmdBeWkaXm6WzGCV18SgUOYlUc0L3A7Z937Ajz4=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "ecba874d379b42f19fcffef1fb2de3a1a0e9938c9e035d5a78a209247d8e78d7";
    filename = "immortalwrt-imagebuilder-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lqrP1bb2a4x0zztuiZV3s4sKxkZXLjzopGEp7ZYMTmc=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "ba3feb4efd2ae84cb0730f3a8bd6747e";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-ba3feb4efd2ae84cb0730f3a8bd6747e";
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
  kmods."6.12.94-1-ba3feb4efd2ae84cb0730f3a8bd6747e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.94-1-ba3feb4efd2ae84cb0730f3a8bd6747e/";
    sourceInfo = {
      hash = "sha256-o52zHPfSLat82TPqlChkAAUqKXUgL0YqztXnfbY8zFY=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.94-1-ba3feb4efd2ae84cb0730f3a8bd6747e/packages.adb";
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
      hash = "sha256-y7W3xnsUenrMes2JBizcIIPFPmT/0ffQjThCa4phk/k=";
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

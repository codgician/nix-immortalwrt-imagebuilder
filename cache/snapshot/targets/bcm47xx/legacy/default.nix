# snapshot bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-BpaKNY9iFLIJkpAwoSYZkBlkVghd6vyW9p9bTJGbZuM=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "8a6075fc703092fc7f069681e0ee4888804748ac9821fea93fc28f8248b7ef57";
    filename = "immortalwrt-imagebuilder-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-YC1nuCU6K0m0aI7t/CL50TUO7+6B+n+tNlfDJ0V5AF4=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7e5b0a7080f9f0b2779eae7cea28455c";
      version = "6.12.108";
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
    kmods_target = "6.12.108-1-7e5b0a7080f9f0b2779eae7cea28455c";
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
  kmods."6.12.108-1-7e5b0a7080f9f0b2779eae7cea28455c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.108-1-7e5b0a7080f9f0b2779eae7cea28455c/";
    sourceInfo = {
      hash = "sha256-L9grEaKxvbivPYXOC1+sQUqH1SmenBJvpYZ6tgLtEjs=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.108-1-7e5b0a7080f9f0b2779eae7cea28455c/packages.adb";
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
      hash = "sha256-Ys1iXFn7HhtqdA0dumP10/Bd9GHbxoYpC5JAz0+aqHM=";
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

# snapshot bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-GLDXckFIbvtewwnXcFPQLxJUVGJsGKCi84TreWl8ggQ=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "5124462ab97f369d15dfa00bcb29d0f2b4372b694cc94687adb834f86f42e369";
    filename = "immortalwrt-imagebuilder-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-40H7+3qrlwu0oUYAkfJaCTbU2s7JtastAebRnHub74c=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f65d574d8ad72d3425e8f7f05af14ac7";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-f65d574d8ad72d3425e8f7f05af14ac7";
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
  kmods."6.12.103-1-f65d574d8ad72d3425e8f7f05af14ac7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.103-1-f65d574d8ad72d3425e8f7f05af14ac7/";
    sourceInfo = {
      hash = "sha256-+BVgyBoSHaB4zev9O15Ffe7v6FqrV+yaJMiKgHIfYZo=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.103-1-f65d574d8ad72d3425e8f7f05af14ac7/packages.adb";
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
      hash = "sha256-BdQOhgkFlZ3D34lZVNoPzBi+SgoiaSitjUH4B640s1I=";
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

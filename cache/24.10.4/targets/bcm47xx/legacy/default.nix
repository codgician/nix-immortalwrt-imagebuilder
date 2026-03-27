# 24.10.4 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-Sa5ae410Uy4w5Jeq4yan4psTAcCxAptBurE3vJ3nsnk=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "932a24df7f26f388540a69c67df26b944d8ccf0479154220ea70ceb2d13fd3e5";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Wrt+H0lIp8Hy/MlGkmV0SSrKZmw6QrPS/Kv0bx811hM=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d7e8047a1d72f345f88f8f49597b4dca";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.110-1-d7e8047a1d72f345f88f8f49597b4dca";
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
  kmods."6.6.110-1-d7e8047a1d72f345f88f8f49597b4dca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/kmods/6.6.110-1-d7e8047a1d72f345f88f8f49597b4dca/";
    sourceInfo = {
      hash = "sha256-wWRYdo45aeWDboL0nta5+pTEeoGMNA/I9oRO/1aT2OI=";
      name = "kmods-bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/kmods/6.6.110-1-d7e8047a1d72f345f88f8f49597b4dca/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-jiId/GgUyCufonLFHbmbw5o3kmQA/wEOhLVVWCOEac8=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/legacy/packages/Packages";
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

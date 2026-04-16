# 25.12.0-rc2 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-4rJkN8sY3t9CLEFZMY+n4GC4RauZ3vvYPHAR1YaM5qY=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "5d8c19740c1db4c1d2019dc690bd17043e3eede353441e4b090cfac6df97e3a9";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fVDyHQelPVVhzfpn1Ab5WM/l/r0+rCg0c+VeNjXXQ30=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "ec4ebd5ef9c61e4963672b4a8945b3a3";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-ec4ebd5ef9c61e4963672b4a8945b3a3";
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
  kmods."6.12.79-1-ec4ebd5ef9c61e4963672b4a8945b3a3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/kmods/6.12.79-1-ec4ebd5ef9c61e4963672b4a8945b3a3/";
    sourceInfo = {
      hash = "sha256-MdMj7lqvo6946UQPZH7a8XiNPsOODB/wJdtxuQl3mQo=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/kmods/6.12.79-1-ec4ebd5ef9c61e4963672b4a8945b3a3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-HP4Kn1hhBAPXPUW6UG+pfmIikAaYOJcHcKjrjUjgMDw=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/legacy/packages/packages.adb";
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

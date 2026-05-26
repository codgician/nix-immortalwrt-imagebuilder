# 25.12.0 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-Zla5SC50+pGfJTIhdKgSCLWA4M+IwuXAJAW9LRNc+PA=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "ef3f2bbda2501f6d8c826f78acc4a5073186912195a4eeff62aa47a67643e6cf";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W3TC7zXtJZYSXHx4mpN3s65t4IJByA2MswsS8C0HHsA=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "2e58282010b288a2714308138c956820";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-2e58282010b288a2714308138c956820";
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
  kmods."6.12.87-1-2e58282010b288a2714308138c956820" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/kmods/6.12.87-1-2e58282010b288a2714308138c956820/";
    sourceInfo = {
      hash = "sha256-H7Co2N6M3ppJdZnqg6ilT+8tkXKuzlIzKwpZ+fpQejg=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/kmods/6.12.87-1-2e58282010b288a2714308138c956820/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-x60jAsb2QVB7SA3hU19TL1WsyRHCuXLDY1G8/SDhWTo=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/legacy/packages/packages.adb";
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

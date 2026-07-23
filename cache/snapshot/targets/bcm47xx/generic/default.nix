# snapshot bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-qI3XzABQzPKvO/l6DAitIBAVXV8H66PzdAQphNvfDWI=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "db785f0226f1570341ea05a40cbf132799e6e6dbb014d469c8b7fa2eeb53ea98";
    filename = "immortalwrt-imagebuilder-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-clu6Wbrp0nlatt4H8Gmd5Jl2lvKM375nPlTR2DAJj8E=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "1042abb0d9233cf8f892f7063dcd7c1c";
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
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.94-1-1042abb0d9233cf8f892f7063dcd7c1c";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.12.94-1-1042abb0d9233cf8f892f7063dcd7c1c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.94-1-1042abb0d9233cf8f892f7063dcd7c1c/";
    sourceInfo = {
      hash = "sha256-0j84PZGrqNsXEbKiQ8nkaLddrHN55b41W4n1elAPa9k=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.94-1-1042abb0d9233cf8f892f7063dcd7c1c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-S4H1xUCKYvofvj+VG5HGfw2ytbp7JDKeXqg8rTVL8wA=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/packages.adb";
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

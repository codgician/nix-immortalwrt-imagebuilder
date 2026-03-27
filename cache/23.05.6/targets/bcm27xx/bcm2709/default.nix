# 23.05.6 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-Du8jfOAktFCHP7BB7GfAPcB9MbLZjTUeFZKIvsLPrOM=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "18ddc6408d2e808cd6a89b092b80fa6b51d69ce384f8b085b3ccf10960474dbf";
    filename = "immortalwrt-imagebuilder-23.05.6-bcm27xx-bcm2709.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-qfypyn+AtvdG+Ow6woUDrf7MGOpR6CY/AMZ7jW0h+Gs=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "d981514afaab959b843ffae5c6f4e299";
      version = "5.15.189";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "5.15.189-1-d981514afaab959b843ffae5c6f4e299";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-im+A/qgPamP/VuyZHm3jiIsO9je1pBo+1wB50mz9QRk=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2709/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}

# 23.05.7 bcm27xx/bcm2708
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-PdllysMF1tBnFoIIMHEehDgrgbwPGjy6C1bSIXOIRoE=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "8584b6ff7005adfd7d5552657161508c596f79df686f4bd4429377c7dcf9e654";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm27xx-bcm2708.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-EPfBK0uyMDxuu7wBzvYQKAPoNIqstYCVEathvdkgrs4=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "f849daff145f581d5ea50bcd8850a5a8";
      version = "5.15.195";
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
    kmods_target = "5.15.195-1-f849daff145f581d5ea50bcd8850a5a8";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-4R5YXp9p1Izyj+pTC17mILEhAHBfsuNb0nz1vEJCDYI=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2708/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm1176jzf-s_vfp";
  feeds = import ./../../../packages/arm_arm1176jzf-s_vfp.nix;
}

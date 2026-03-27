# 23.05.0 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-qg82IuzbNn4t7K5bXRMhzuH6ro8y7cQ4FMxx5Fk1enI=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "58701f424c3d8d442c9391b2a590fd8e82fa9bc51065f4f4f585da36c4bf94da";
    filename = "immortalwrt-imagebuilder-23.05.0-bcm27xx-bcm2708.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-mS2GMEhXtlmCc5hdcDvxFUf17cItMz7bhMNcEQmBOJc=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = null;
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
      "ipv6helper"
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
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
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
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-oLAqpudrVgs43nR+9UqlBDyH2AfyULaARg1YDH6tldQ=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bcm27xx/bcm2708/packages/Packages";
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

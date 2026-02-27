# 21.02.7 bcm27xx/bcm2709
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-8q7MVDiryMJmIUdwkpepgLARHigTQZIzazp3eB/Z1k0=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "9473d54a90b3187fd664826b83cd3c327605a9acac4d05b1412ba1aa216f845e";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm27xx-bcm2709.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-8A+PoY+Tjdz2weDP/iGVe5oD4UqFbEVAhTzd+NbLEFI=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-fs-vfat"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
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
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "null-null-null";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "cypress-nvram-43430-sdio-rpi-3b"
          "cypress-firmware-43455-sdio"
          "cypress-nvram-43455-sdio-rpi-3b-plus"
          "cypress-nvram-43455-sdio-rpi-4b"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-41IetVesDUBf0zLTQvwQKVhtUOjsqZP+OOLDB8kyUuA=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2709/packages/Packages";
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

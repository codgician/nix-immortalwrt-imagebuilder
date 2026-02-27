# 21.02.7 bcm27xx/bcm2710
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-0zTY3Qbq1JF3mK/KaGaK39yf9A/keo+gViBUWHGTjQs=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "3ebe944c3510e6217064864de2c037c0d5ae43928182b09ba1a093a684cc603e";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm27xx-bcm2710.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-NpEpLh/9M0oGUqCcMhMyl+UnvJrqBb9SADR8p1DBUCg=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
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
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "cypress-nvram-43430-sdio-rpi-3b"
          "cypress-firmware-43455-sdio"
          "cypress-nvram-43455-sdio-rpi-3b-plus"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-QQsGC5oo9C4wSpjGZt22DNPDyj9nCI9TV5OIoOz9tcQ=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2710/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}

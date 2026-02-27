# 21.02.7 bcm27xx/bcm2711
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-8UlaBaNIf9L4CHy6B9IFYZFakL4spw24Cx8WrrLxJhI=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "1992ff2bb490f4f9046915e0c8f11abc105e98b58acff868a8cbfd860ac5dd39";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm27xx-bcm2711.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-zlzAu0vUNW6+qOyZWK2cttVUP5EJsGFm0OLlG8aAuk0=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
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
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "cypress-nvram-43455-sdio-rpi-4b"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-Ro8VYyZN5m77kwufruOmp5buRvXLXsEKo/1FoU9Q+oo=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2711/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}

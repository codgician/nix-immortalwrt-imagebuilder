# 24.10.5 bmips/bcm6358
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-u5QrvoDTbs74iDG2qfDIqNDwRFMpQp9N8ZcecRV1QSo=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "bffa61403a78f234f84ede676c6aa69a9ad28507b18ab188502c7fb7354010f6";
    filename = "immortalwrt-imagebuilder-24.10.5-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TrqvPyU+jclrcpcqii7jKAnYAA7bZdIzHAiEyVm2K14=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "427e3b6b05791fa8549db5d8214474f3";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-427e3b6b05791fa8549db5d8214474f3";
    profiles = {
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-427e3b6b05791fa8549db5d8214474f3" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/kmods/6.6.122-1-427e3b6b05791fa8549db5d8214474f3/";
    sourceInfo = {
      hash = "sha256-RUT+ePHFnyryJGYQ7uaT4XX9AjAy+p5qb2rg2lvcgGQ=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/kmods/6.6.122-1-427e3b6b05791fa8549db5d8214474f3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-K0LbcDvG/4ZIkcYlgZYABRNVMdKesm6B6ygwFpacwdY=";
      name = "bmips_bcm6358-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6358/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}

# 24.10.7 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-y7YrXXGdsePKRY4NE4xtgtl9vsu+lmIjwnxX34kGMx0=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "7f02ee2ee42f0d1ff3f12ba6fef1d6430ab7d9d46d3f782a5fead0eb5d9901f7";
    filename = "immortalwrt-imagebuilder-24.10.7-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Pt7jb+HpBNp8Ano/Qkse4VPYe32h/hhzYzLphbJbghQ=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "427e3b6b05791fa8549db5d8214474f3";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-427e3b6b05791fa8549db5d8214474f3";
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
  kmods."6.6.159-1-427e3b6b05791fa8549db5d8214474f3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/kmods/6.6.159-1-427e3b6b05791fa8549db5d8214474f3/";
    sourceInfo = {
      hash = "sha256-zXbyhoTKRoVhcHTl1D7JDsOyIr1N9nTtNjuppsFboSw=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/kmods/6.6.159-1-427e3b6b05791fa8549db5d8214474f3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-UHk2a0K3Gc6xc3aOOcRBo2KfSljMY+t76apZfwqB78s=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6358/packages/Packages";
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

# 24.10.0 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-zun+jsfp9YJIRykJlV65k6gDz1BfbnZAcPNW7Gzs1rs=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "60fd9db27e9d82ec58fda7dff1c5836abb8e2d5f67af2891e8744aa1fe560894";
    filename = "immortalwrt-imagebuilder-24.10.0-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gCe0fqJd8un7PwLrzPDPsXIOQpFNvBxCMsFGOBEjnNo=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "2c023636d9b54931c92cc5ca45b370f2";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-2c023636d9b54931c92cc5ca45b370f2";
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
  kmods."6.6.73-1-2c023636d9b54931c92cc5ca45b370f2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/kmods/6.6.73-1-2c023636d9b54931c92cc5ca45b370f2/";
    sourceInfo = {
      hash = "sha256-YGmvf9lhhRAKkqFfcqOjFyCpx1oF9a6rXodhLSYgMp0=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/kmods/6.6.73-1-2c023636d9b54931c92cc5ca45b370f2/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-ZQm91CdLhD3/bOTtxelW/lUYRUL+z2cG8Rhns0QMvEI=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6358/packages/Packages";
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

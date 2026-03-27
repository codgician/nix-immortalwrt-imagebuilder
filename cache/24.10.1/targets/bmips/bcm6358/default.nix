# 24.10.1 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-EOeNcDqzBHq9qMVXaru64zZJUzB0s2i/vXmolurrpRY=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "901bb85799bff2083856364cc20453123d0dac2634c43df406b0ed98dbfa8d52";
    filename = "immortalwrt-imagebuilder-24.10.1-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VoJWOlakxih6krJpqsew9N7lEYR1DXOHSMjcgrEAyEk=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "68c54381cc5ecb80c7e3140f6e0aeb41";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-68c54381cc5ecb80c7e3140f6e0aeb41";
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
  kmods."6.6.86-1-68c54381cc5ecb80c7e3140f6e0aeb41" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/kmods/6.6.86-1-68c54381cc5ecb80c7e3140f6e0aeb41/";
    sourceInfo = {
      hash = "sha256-gqAYsM5Ay7ytzHF9zeaEa/22LWRDlEocaT50Xj/jnuk=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/kmods/6.6.86-1-68c54381cc5ecb80c7e3140f6e0aeb41/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-ltQoIjCfp0ppZuj7uuUj6w+yDTHnop8CjWt37/dRCCs=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6358/packages/Packages";
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

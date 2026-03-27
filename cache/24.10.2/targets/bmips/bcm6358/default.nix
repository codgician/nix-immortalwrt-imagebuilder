# 24.10.2 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-BfO099AF9az8i/WRLeGntognGmVVSipLUBlSt9IWVRQ=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "3004721c6beddbeafd4e2bb2335e60bf189c823f170b7b56e6213fc70d3d6c5f";
    filename = "immortalwrt-imagebuilder-24.10.2-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hrNUdmJxXajW+5DsecRCffvGCN2gsaOAgbIc9AVGWWk=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7af0e682c15922453753755bb37c07ca";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-7af0e682c15922453753755bb37c07ca";
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
  kmods."6.6.93-1-7af0e682c15922453753755bb37c07ca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/kmods/6.6.93-1-7af0e682c15922453753755bb37c07ca/";
    sourceInfo = {
      hash = "sha256-YLd9K58V5OXCNCX5jSOqt3gKaLVI6wx9DbyfR4/N/iM=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/kmods/6.6.93-1-7af0e682c15922453753755bb37c07ca/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-hZ8RcAtU4EnLVfQ6SFgic+6g3ZDoVe/DjN8dEse5M7Y=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6358/packages/Packages";
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

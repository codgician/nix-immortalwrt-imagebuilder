# 24.10.6 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-ZooNd9osycW73sijeNJQdz98BKg+2euXpgr/n4vS9v0=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "1bebb5811d353aff91b6261c25f640046f7d55041ea7a698753769703cd1eb24";
    filename = "immortalwrt-imagebuilder-24.10.6-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qKB8aNIn2iRDLL9RJHj7JEdR8LMIcAU1KVD8PHhqjnk=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "db8350bfeb463c3d1cfd1b9c50f1517b";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-db8350bfeb463c3d1cfd1b9c50f1517b";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.133-1-db8350bfeb463c3d1cfd1b9c50f1517b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/kmods/6.6.133-1-db8350bfeb463c3d1cfd1b9c50f1517b/";
    sourceInfo = {
      hash = "sha256-CUSVr3GjLcLVopLY/cqeMFJw72z2dL+5YnTJpX/U2wk=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/kmods/6.6.133-1-db8350bfeb463c3d1cfd1b9c50f1517b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-dO7IQ5qRNxHe3QjvrjTphDNjhgvMW+TbmWiDRNcojzk=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6318/packages/Packages";
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

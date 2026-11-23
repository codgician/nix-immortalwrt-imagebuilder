# 24.10.7 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-j3LVrlyo+pHPaQCW0Y6XKB5UDBY0mBYD7/VNvOrOUhk=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "ba96f10abaf5b46ef0b7804101182c6ab9b92bfd10d32e71955b4ac8a979404d";
    filename = "immortalwrt-imagebuilder-24.10.7-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-18TNl2jjWlphZxAciM1JsClp7pJ51NF3kx/QDhZHSyY=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "db8350bfeb463c3d1cfd1b9c50f1517b";
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
    kmods_target = "6.6.159-1-db8350bfeb463c3d1cfd1b9c50f1517b";
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
  kmods."6.6.159-1-db8350bfeb463c3d1cfd1b9c50f1517b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/kmods/6.6.159-1-db8350bfeb463c3d1cfd1b9c50f1517b/";
    sourceInfo = {
      hash = "sha256-pbpJ8YofMKu90GhFM0mbB/QWIb1DpqV7K9nKwzJj+4o=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/kmods/6.6.159-1-db8350bfeb463c3d1cfd1b9c50f1517b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-VrxzfA7w5foaTHLCTNfGXbTMkAGx3UbddYpvqQxCOD4=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bmips/bcm6318/packages/Packages";
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

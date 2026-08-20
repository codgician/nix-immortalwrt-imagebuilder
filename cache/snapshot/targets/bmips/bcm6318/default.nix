# snapshot bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-eaJ90vlJfVos7eI/0aQf3O4AJDN7Gm4Osgn4icyhmkg=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "cb5430095a1099a7540d7ed860192ff7181f50e53e8d08a0f44bd3b808f86480";
    filename = "immortalwrt-imagebuilder-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AwC8C6qYiycG4gL3lyv4VU2c1ftZCVfZrO24nhLzaXY=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "5c393a30a1e8880740782bfae65efe67";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-5c393a30a1e8880740782bfae65efe67";
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
        ];
      };
    };
  };
  kmods."6.12.103-1-5c393a30a1e8880740782bfae65efe67" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.103-1-5c393a30a1e8880740782bfae65efe67/";
    sourceInfo = {
      hash = "sha256-R7+t8qcFGXLvilZsSUIW4utX9aX/DuPgncPL6ZO+7sU=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.103-1-5c393a30a1e8880740782bfae65efe67/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-Y6CGegTyPdjxUXf6/4JqObGKfRt7/Gkc2nWMa5LbGX0=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/packages.adb";
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

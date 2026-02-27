# snapshot bmips/bcm6362
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-0w6vUVYfKTXM1XcGUSrDSE5i6a80rvzOF4r+Y9rqNng=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "d580f7429b94ff1c00eba77b1e74d6a8a169057530041c41e8c877272ff6ce06";
    filename = "immortalwrt-imagebuilder-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lSjY3KqREkYrOnRTWzu6efKFSbMzxxDy8zCJRu9dvPk=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "66e8ab331110e998e17309aa383e987f";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-66e8ab331110e998e17309aa383e987f";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.67-1-66e8ab331110e998e17309aa383e987f" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/kmods/6.12.67-1-66e8ab331110e998e17309aa383e987f/";
    sourceInfo = {
      hash = "sha256-QDoPxe3XP7tgoQkolXuRGtvk+NeVqR5aciQvoV8on/M=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/kmods/6.12.67-1-66e8ab331110e998e17309aa383e987f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-n24hCOP3Fj1vaqSk5sYvvcjRLtbGefDPgjHreCDA1Ys=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6362/packages/packages.adb";
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

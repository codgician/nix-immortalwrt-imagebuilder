# 25.12.0 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-HgE7F4aAiXhReeXfQCYU87nuLk1QmNNFVVoai4332b8=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "b72394335a0b6a1b8c7baf6e601b504deff7aa24f320a4a7f2b86c50d49bea45";
    filename = "immortalwrt-imagebuilder-25.12.0-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ggyJvoQwKTShiT+abFGuQp9pxR0AxRPaCHkEi93HteQ=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "e8b311e450e43c87b84d589e34f44759";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.87-1-e8b311e450e43c87b84d589e34f44759";
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
  kmods."6.12.87-1-e8b311e450e43c87b84d589e34f44759" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/kmods/6.12.87-1-e8b311e450e43c87b84d589e34f44759/";
    sourceInfo = {
      hash = "sha256-/qmw0vNdPXLg6SGdzUy0Ne3RAWOYjReuoASaFZWkN9s=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/kmods/6.12.87-1-e8b311e450e43c87b84d589e34f44759/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-MfE9VdCCy3DZ6DPdkKjevYNABW3BBG5OqDWNEr3ELyY=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6318/packages/packages.adb";
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

# 25.12.0 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-UiLLXLXG+CNu0r28FaCzT3LFUb5i8glih3m1zQB6rKU=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "7e7f94505b5cf6ead5da52f21baabf6d1959c831c4017e9f4b5f2a7beabec244";
    filename = "immortalwrt-imagebuilder-25.12.0-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+D/iloDCVL+vssBVlvVtyDxo7ITMni4KM8VcEvwss7g=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b4df7462a38144d03c150b647d6a6001";
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
    kmods_target = "6.12.87-1-b4df7462a38144d03c150b647d6a6001";
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
  kmods."6.12.87-1-b4df7462a38144d03c150b647d6a6001" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/kmods/6.12.87-1-b4df7462a38144d03c150b647d6a6001/";
    sourceInfo = {
      hash = "sha256-W5ogUZ43W7Tqdz+aC5if1xpUeLJF/YBxjGbJJS/XlpU=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/kmods/6.12.87-1-b4df7462a38144d03c150b647d6a6001/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-Swd9sf29wf2VNOaiix8R/IV/gxYNPwNlM7Xlhxd7iqg=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6362/packages/packages.adb";
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

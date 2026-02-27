# snapshot bmips/bcm6368
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-zSXP27mmVjq32Fsdd9JRMoVsUB8yCZzt5WxpVScSPHg=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "819c225289dc67948dfb7b29c4c61bcc2c2e00dbb54ed09472f9b53a29435b39";
    filename = "immortalwrt-imagebuilder-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-f0iNEK4o0KapSNWW4fQxI2rr80N/BiqGQcSv9jjTzII=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "ba334bb1c8d2107c1efbcde44e7337d9";
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
    kmods_target = "6.12.67-1-ba334bb1c8d2107c1efbcde44e7337d9";
    profiles = {
      actiontec_r1000h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      comtrend_vr-3025u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
        ];
      };
      comtrend_vr-3025un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
        ];
      };
      comtrend_wap-5813n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3800b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      netgear_evg2000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
        ];
      };
      observa_vh4032n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.67-1-ba334bb1c8d2107c1efbcde44e7337d9" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/kmods/6.12.67-1-ba334bb1c8d2107c1efbcde44e7337d9/";
    sourceInfo = {
      hash = "sha256-O/qxMESji1nJS3oH56/43su2sZJM92WpDvLYH2M9Ah0=";
      name = "kmods-bmips_bcm6368-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/kmods/6.12.67-1-ba334bb1c8d2107c1efbcde44e7337d9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-GdkQF9K7ifliKVxlixftBz+ZFcm2wYki75a0VIqlrTA=";
      name = "bmips_bcm6368-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6368/packages/packages.adb";
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

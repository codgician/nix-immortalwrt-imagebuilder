# 21.02.7 sunxi/cortexa7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa7/";
  sha256sums = {
    hash = "sha256-wjw7gljpR2/lJkaR13IeAMZBg8L26Xvbi95EPd2xqF8=";
    name = "sunxi_cortexa7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "09f5107bb5156d7bfb5ef31060252da7e6ef85b1b00123509d03491a24930a53";
    filename = "immortalwrt-imagebuilder-21.02.7-sunxi-cortexa7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-btlaYW+BnFxUoUc2KOg2boif6GpCzknqMFLTNTLhi6I=";
    name = "sunxi_cortexa7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      cubietech_cubieboard2 = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      cubietech_cubietruck = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
          "kmod-brcmfmac"
        ];
      };
      friendlyarm_nanopi-m1-plus = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_nanopi-neo = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo-air = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_nanopi-r1 = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-usb-net-rtl8152"
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_zeropi = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      lamobo_lamobo-r1 = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtl8192cu"
          "swconfig"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      lemaker_bananapi = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
        ];
      };
      lemaker_bananapro = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
          "kmod-brcmfmac"
        ];
      };
      linksprite_pcduino3 = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
          "kmod-rtl8xxxu"
          "rtl8188eu-firmware"
        ];
      };
      linksprite_pcduino3-nano = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
        ];
      };
      mele_m9 = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a20-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a20-olinuxino-lime2 = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
          "kmod-usb-hid"
        ];
      };
      olimex_a20-olinuxino-lime2-emmc = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
          "kmod-usb-hid"
        ];
      };
      olimex_a20-olinuxino-micro = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      sinovoip_bananapi-m2-berry = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      sinovoip_bananapi-m2-plus = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43430a0-sdio"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      sinovoip_bananapi-m2-ultra = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43430a0-sdio"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      xunlong_orangepi-2 = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      xunlong_orangepi-one = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      xunlong_orangepi-pc = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-gpio-button-hotplug"
        ];
      };
      xunlong_orangepi-pc-plus = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-gpio-button-hotplug"
        ];
      };
      xunlong_orangepi-plus = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      xunlong_orangepi-r1 = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-usb-net-rtl8152"
        ];
      };
      xunlong_orangepi-zero = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-6ITgNwwGfzjMiVAZGXMUSO5i6K563/A5OklcxD+XCOc=";
      name = "sunxi_cortexa7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa7/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}

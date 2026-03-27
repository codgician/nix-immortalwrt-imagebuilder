# 25.12.0-rc1 bmips/bcm6328
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-JzMo4RyRbnTBQnxDB4DPwgCdBMjObUuCDUuEs7IHgRc=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "4db9f7fe6a92205dcd68778faa50acd48e08242bf6bd8f5727cc78107e8f3166";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bmips-bcm6328.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-P6K+1jl5MdJvAhxwZjCWc1TxCfic9frj560sd2OucMk=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b9f978d44d1e801d13492e41ede03f81";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-b9f978d44d1e801d13492e41ede03f81";
    profiles = {
      arcadyan_ar7516 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43227-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      comtrend_ar-5381u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43225-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      comtrend_ar-5387un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43225-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      dlink_dsl-2750b-b1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "kmod-leds-bcm6328"
        ];
      };
      innacomm_w3400v6 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4318-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      inteno_xg6846 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-i2c-core"
          "kmod-i2c-gpio"
          "kmod-leds-bcm6328"
          "kmod-dsa-mv88e6xxx"
          "kmod-sfp"
        ];
      };
      nucom_r5010unv2 = {
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
      sercomm_ad1018 = {
        device_packages = [
          "nand-utils"
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
  kmods."6.12.74-1-b9f978d44d1e801d13492e41ede03f81" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/kmods/6.12.74-1-b9f978d44d1e801d13492e41ede03f81/";
    sourceInfo = {
      hash = "sha256-ZT6mf56W24P5NtLL84gz+FU9EKE8LwR1Uh/7y4HZfAQ=";
      name = "kmods-bmips_bcm6328-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/kmods/6.12.74-1-b9f978d44d1e801d13492e41ede03f81/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-QTCrE+jSG0K745DJWF3LtQdEEmrII/1dpA4SYs6Q4Lo=";
      name = "bmips_bcm6328-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6328/packages/packages.adb";
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

# 25.12.0-rc2 layerscape/armv8_64b
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-f9Zx7yal2LnI11uxQmw0A0kKQWt01h1d+H2CJwY2WtQ=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "33a605a7ad7a4bb2dc5fff7f9929f187edae37785f4973eddcba4f9dfbe6ad30";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-layerscape-armv8_64b.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eyUPOmnb9Iq3dFze0MohNMIWnnnELVOeV2kpPEojnvU=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "904bbdcc887a6849dddd67e18ac5b764";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.79-1-904bbdcc887a6849dddd67e18ac5b764";
    profiles = {
      fsl_ls1012a-frdm = {
        device_packages = [
          "layerscape-ppfe"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-frwy-sdboot = {
        device_packages = [
          "layerscape-ppfe"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-rdb = {
        device_packages = [
          "layerscape-ppfe"
          "kmod-hwmon-ina2xx"
          "kmod-iio-fxas21002c-i2c"
          "kmod-iio-fxos8700-i2c"
          "kmod-ppfe"
        ];
      };
      fsl_ls1028a-rdb = {
        device_packages = [
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1028a-rdb-sdboot = {
        device_packages = [
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1043a-rdb = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1043a-rdb-sdboot = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-frwy = {
        device_packages = [ ];
      };
      fsl_ls1046a-frwy-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1046a-rdb = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-rdb-sdboot = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb = {
        device_packages = [
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb-sdboot = {
        device_packages = [
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls2088a-rdb = {
        device_packages = [
          "restool"
          "kmod-ahci-qoriq"
        ];
      };
      fsl_lx2160a-rdb = {
        device_packages = [ "restool" ];
      };
      fsl_lx2160a-rdb-sdboot = {
        device_packages = [ "restool" ];
      };
      ten64-mtd = {
        device_packages = [
          "uboot-envtools"
          "kmod-rtc-rx8025"
          "kmod-sfp"
          "kmod-i2c-mux-pca954x"
          "restool"
        ];
      };
    };
  };
  kmods."6.12.79-1-904bbdcc887a6849dddd67e18ac5b764" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/kmods/6.12.79-1-904bbdcc887a6849dddd67e18ac5b764/";
    sourceInfo = {
      hash = "sha256-Ynz4RSJ2/N9Zz91XNdeRmTr31x//jbuK5yFtWAm095M=";
      name = "kmods-layerscape_armv8_64b-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/kmods/6.12.79-1-904bbdcc887a6849dddd67e18ac5b764/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/packages/";
    sourceInfo = {
      hash = "sha256-8UUrpaIq3nbTlGIUp6ZsR/eDE8Wckwd1mFY8ixJz/WE=";
      name = "layerscape_armv8_64b-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv8_64b/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_generic";
  feeds = import ./../../../packages/aarch64_generic.nix;
}

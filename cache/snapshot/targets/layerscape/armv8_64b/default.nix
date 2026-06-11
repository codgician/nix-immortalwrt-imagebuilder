# snapshot layerscape/armv8_64b
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-zX3+Ce249M0JmPevmstUx60oRUkYH6on0nAwrV33DWY=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a5ba300c432ed9672ed24e6fb71d11085a790e961a19d4f301eb95a3ead142a";
    filename = "immortalwrt-imagebuilder-layerscape-armv8_64b.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wa7x8wr4er3kEnaoiA22l/P2MIfjC6VPjQ+b+pPFMPE=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "34ea5275f761ef73fdf16be7e09bb717";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.92-1-34ea5275f761ef73fdf16be7e09bb717";
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
      traverse_ten64-mtd = {
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
  kmods."6.12.92-1-34ea5275f761ef73fdf16be7e09bb717" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/kmods/6.12.92-1-34ea5275f761ef73fdf16be7e09bb717/";
    sourceInfo = {
      hash = "sha256-cq0EuxUgMcHvW1UrOr3EuJJ9rTf0fgNzhArKoiu6zIk=";
      name = "kmods-layerscape_armv8_64b-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/kmods/6.12.92-1-34ea5275f761ef73fdf16be7e09bb717/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/packages/";
    sourceInfo = {
      hash = "sha256-ZDP2YzDreV/D/6EyfKH2Vl922re/xHTK5dsAbinNy+0=";
      name = "layerscape_armv8_64b-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/packages/packages.adb";
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

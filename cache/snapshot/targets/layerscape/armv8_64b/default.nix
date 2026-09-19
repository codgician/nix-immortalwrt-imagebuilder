# snapshot layerscape/armv8_64b
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-RWTA9HruG7WZ58m78Z6AnO7rnXHBB54esxr7F06Zavw=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "be2d1617a68a7aba7a7f2a7074f1ca45da878d38d18e2286b9e15b241976d251";
    filename = "immortalwrt-imagebuilder-layerscape-armv8_64b.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-M7igPCLVyWSq/ifnEVky5UuvEO+j29WJtHNOPogmJzw=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "9c7c01bbfd8625d14b6acacd537848d8";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-9c7c01bbfd8625d14b6acacd537848d8";
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
  kmods."6.18.52-1-9c7c01bbfd8625d14b6acacd537848d8" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/kmods/6.18.52-1-9c7c01bbfd8625d14b6acacd537848d8/";
    sourceInfo = {
      hash = "sha256-4PV7xjz3TPFy9r49KYz6F0qWMiK7XiFkBrT8WD81rkQ=";
      name = "kmods-layerscape_armv8_64b-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv8_64b/kmods/6.18.52-1-9c7c01bbfd8625d14b6acacd537848d8/packages.adb";
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
      hash = "sha256-0XpZs0SAo4qKHl+r5C8H6SXwhY03BjQ9wtNxEUbKzQI=";
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

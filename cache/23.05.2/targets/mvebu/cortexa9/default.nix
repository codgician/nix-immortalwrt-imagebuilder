# 23.05.2 mvebu/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mvebu/cortexa9/";
  sha256sums = {
    hash = "sha256-ECK608iXbLWA9b7d6WoonmUMpdgbIs9Y9GdXvS5R2sk=";
    name = "mvebu_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mvebu/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "9b602dccecb93a45fd19a2d07dc34b5e160dd149c59875a644b5f69bb4a55fbc";
    filename = "immortalwrt-imagebuilder-23.05.2-mvebu-cortexa9.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-nyIu1/z0d8Sf3NSNosKMLkqpL9KAQI+1Jo7IV+TdNY8=";
    name = "mvebu_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mvebu/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      buffalo_ls220de = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-drivetemp"
          "kmod-linkstation-poweroff"
          "kmod-md-mod"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-fs-xfs"
          "mdadm"
          "mkf2fs"
          "e2fsprogs"
          "partx-utils"
        ];
      };
      buffalo_ls421de = {
        device_packages = [
          "kmod-rtc-rs5c372a"
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-drivetemp"
          "kmod-usb3"
          "kmod-linkstation-poweroff"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-mod"
          "kmod-fs-xfs"
          "mkf2fs"
          "e2fsprogs"
          "partx-utils"
        ];
      };
      ctera_c200-v2 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-drivetemp"
          "kmod-hwmon-nct7802"
          "kmod-rtc-s35390a"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      cznic_turris-omnia = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "wpad-openssl"
          "kmod-ath9k"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "partx-utils"
          "kmod-i2c-mux-pca954x"
          "kmod-leds-turris-omnia"
          "iwinfo"
        ];
      };
      fortinet_fg-50e = {
        device_packages = [ "kmod-hwmon-nct7802" ];
      };
      globalscale_mirabox = {
        device_packages = [ ];
      };
      iptime_nas1dual = {
        device_packages = [
          "kmod-hwmon-drivetemp"
          "kmod-hwmon-gpiofan"
          "kmod-usb3"
        ];
      };
      kobol_helios4 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "partx-utils"
        ];
      };
      linksys_wrt1200ac = {
        device_packages = [
          "kmod-mwlwifi"
          "wpad-openssl"
          "mwlwifi-firmware-88w8864"
          "iwinfo"
        ];
      };
      linksys_wrt1900ac-v1 = {
        device_packages = [
          "kmod-mwlwifi"
          "wpad-openssl"
          "mwlwifi-firmware-88w8864"
          "iwinfo"
        ];
      };
      linksys_wrt1900ac-v2 = {
        device_packages = [
          "kmod-mwlwifi"
          "wpad-openssl"
          "mwlwifi-firmware-88w8864"
          "iwinfo"
        ];
      };
      linksys_wrt1900acs = {
        device_packages = [
          "kmod-mwlwifi"
          "wpad-openssl"
          "mwlwifi-firmware-88w8864"
          "iwinfo"
        ];
      };
      linksys_wrt3200acm = {
        device_packages = [
          "kmod-mwlwifi"
          "wpad-openssl"
          "kmod-btmrvl"
          "kmod-mwifiex-sdio"
          "mwlwifi-firmware-88w8964"
          "iwinfo"
        ];
      };
      linksys_wrt32x = {
        device_packages = [
          "kmod-mwlwifi"
          "wpad-openssl"
          "kmod-btmrvl"
          "kmod-mwifiex-sdio"
          "mwlwifi-firmware-88w8964"
          "iwinfo"
        ];
      };
      marvell_a370-db = {
        device_packages = [ ];
      };
      marvell_a370-rd = {
        device_packages = [ ];
      };
      marvell_a385-db-ap = {
        device_packages = [ ];
      };
      marvell_a388-rd = {
        device_packages = [ ];
      };
      marvell_axp-db = {
        device_packages = [ ];
      };
      marvell_axp-gp = {
        device_packages = [ ];
      };
      plathome_openblocks-ax3-4 = {
        device_packages = [ ];
      };
      solidrun_clearfog-base-a1 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "partx-utils"
        ];
      };
      solidrun_clearfog-pro-a1 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "partx-utils"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mvebu/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-kae7frQBVMHa2b9VuKoSk1MnCJLSzPE5y6huBhBQmIM=";
      name = "mvebu_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mvebu/cortexa9/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}

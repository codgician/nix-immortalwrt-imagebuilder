# 24.10.3 mvebu/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/";
  sha256sums = {
    hash = "sha256-9535QoWtOSIel61rR8wSyzQT0f+ST7iDXbdmCnA93Vg=";
    name = "mvebu_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "d5061571482ab7d900b489cee552e2565484a125a6bb550d8b75eb6dcd6be81f";
    filename = "immortalwrt-imagebuilder-24.10.3-mvebu-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HFuzmurRdDXGlNxURluuhc4k5+BUvVqR6M4K0p6j5RM=";
    name = "mvebu_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "9cf55ffde167a5e3c6d9a53bda16a59c";
      version = "6.6.104";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-9cf55ffde167a5e3c6d9a53bda16a59c";
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
          "kmod-mt7915-firmware"
          "partx-utils"
          "kmod-i2c-mux-pca954x"
          "kmod-leds-turris-omnia"
          "kmod-turris-omnia-mcu"
          "kmod-gpio-button-hotplug"
          "omnia-eeprom"
          "omnia-mcu-firmware"
          "omnia-mcutool"
          "iwinfo"
        ];
      };
      fortinet_fg-30e = {
        device_packages = [ "kmod-hwmon-nct7802" ];
      };
      fortinet_fg-50e = {
        device_packages = [ "kmod-hwmon-nct7802" ];
      };
      fortinet_fg-51e = {
        device_packages = [ "kmod-hwmon-nct7802" ];
      };
      fortinet_fg-52e = {
        device_packages = [ "kmod-hwmon-nct7802" ];
      };
      fortinet_fwf-50e-2r = {
        device_packages = [
          "kmod-hwmon-nct7802"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      fortinet_fwf-51e = {
        device_packages = [
          "kmod-hwmon-nct7802"
          "kmod-ath9k"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      globalscale_mirabox = {
        device_packages = [ ];
      };
      iij_sa-w2 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "wpad-openssl"
          "iwinfo"
        ];
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
      synology_ds213j = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-drivetemp"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-mod"
          "e2fsprogs"
          "mdadm"
          "-ppp"
          "-kmod-nft-offload"
          "-dnsmasq"
          "-odhcpd-ipv6only"
        ];
      };
      wd_cloud-mirror-gen2 = {
        device_packages = [
          "-uboot-envtools"
          "mkf2fs"
          "e2fsprogs"
          "partx-utils"
          "kmod-hwmon-drivetemp"
          "-ppp"
          "-kmod-nft-offload"
          "-dnsmasq"
          "-odhcpd-ipv6only"
        ];
      };
    };
  };
  kmods."6.6.104-1-9cf55ffde167a5e3c6d9a53bda16a59c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/kmods/6.6.104-1-9cf55ffde167a5e3c6d9a53bda16a59c/";
    sourceInfo = {
      hash = "sha256-nR8pS8SY/ztWphvf98gNcDbd3H0SfHfqVC4gYAjCxz0=";
      name = "kmods-mvebu_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/kmods/6.6.104-1-9cf55ffde167a5e3c6d9a53bda16a59c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-wC8YHIrCAlKBG4wpqkYrDh6KsXWTAuHutUrN4usMnsI=";
      name = "mvebu_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa9/packages/Packages";
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

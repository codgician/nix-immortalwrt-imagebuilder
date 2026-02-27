# 21.02.7 mvebu/cortexa9
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa9/";
  sha256sums = {
    hash = "sha256-zSUjgAMuUa0BmLu2pZYru9eA7zJf2IO1FfSBU6zVqeg=";
    name = "mvebu_cortexa9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "15ae4f635345cc53e7a925b7ef59798905d00b15864fe841c18e27e72fccb503";
    filename = "immortalwrt-imagebuilder-21.02.7-mvebu-cortexa9.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-93wbA6Zq7i8QsXWpsmbbUe97FYlFJd9VD4Y8002Z9vs=";
    name = "mvebu_cortexa9-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
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
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
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
          "iwinfo"
        ];
      };
      globalscale_mirabox = {
        device_packages = [ ];
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-zZFg2Afp0YGEoWlwcMOcC0pEyt9DjEEnd9VkxrTCMJs=";
      name = "mvebu_cortexa9-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa9/packages/Packages";
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

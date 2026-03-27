# 23.05.3 gemini/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/gemini/generic/";
  sha256sums = {
    hash = "sha256-fw9l2sFpY0XFM8XjALseTATonO2ogKanV3d+9YRAYak=";
    name = "gemini_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/gemini/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0823be4cde66d7f93521f5fbaf9bc4f5d5a5e153f71479e325c53395095e4795";
    filename = "immortalwrt-imagebuilder-23.05.3-gemini-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-7qFdRg2UpjIAyqggacdCG3aUDfn0NlQefnA+lwPlmac=";
    name = "gemini_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/gemini/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_fa526";
    linux_kernel = null;
    default_packages = [
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
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-fotg210"
      "kmod-usb-ledtrig-usbport"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      dlink_dir-685 = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-multipath"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs"
          "kmod-fs-reiserfs"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
          "kmod-rt2800-pci"
        ];
      };
      dlink_dns-313 = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-multipath"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs"
          "kmod-fs-reiserfs"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
        ];
      };
      itian_sq201 = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-multipath"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs"
          "kmod-fs-reiserfs"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
          "kmod-rt61-pci"
          "kmod-usb2-pci"
        ];
      };
      raidsonic_ib-4220-b = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-multipath"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs"
          "kmod-fs-reiserfs"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
        ];
      };
      storlink_sl93512r = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-multipath"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs"
          "kmod-fs-reiserfs"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/gemini/generic/packages/";
    sourceInfo = {
      hash = "sha256-g5lBNey3tqoLtVhhaOTU+HsQd/XAmB3cs/J7ptaohco=";
      name = "gemini_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/gemini/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_fa526";
  feeds = import ./../../../packages/arm_fa526.nix;
}

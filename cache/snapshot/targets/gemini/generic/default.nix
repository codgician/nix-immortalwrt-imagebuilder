# snapshot gemini/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/";
  sha256sums = {
    hash = "sha256-z+StBRtJREBbBdSC9DSJW39Mm6Z8LR2yHXGKyIsNznE=";
    name = "gemini_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3c002cf0d84a3a25d9348e147b2366d6275e80ce1e14e423732d6a3af2cdc378";
    filename = "immortalwrt-imagebuilder-gemini-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-GPw/d8JZ6AEpWGylqYvWfMs+1Xotdqt/EPedahtntMs=";
    name = "gemini_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_fa526";
    linux_kernel = {
      release = "1";
      vermagic = "ff5ed9ca413c58821ef69c29037ef8ff";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-fotg210"
      "kmod-usb-ledtrig-usbport"
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-ff5ed9ca413c58821ef69c29037ef8ff";
    profiles = {
      dlink_dir-685 = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
          "kmod-dsa-rtl8366rb"
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
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
          "usbgadget-acm"
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
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
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
          "kmod-dsa-vsc73xx-spi"
        ];
      };
      raidsonic_ib-4210-b = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
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
      raidsonic_ib-4220-b = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
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
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
          "kmod-fs-vfat"
          "kmod-nls-utf8"
          "kmod-usb-storage-extras"
          "kmod-hwmon-drivetemp"
          "cfdisk"
          "e2fsprogs"
          "badblocks"
          "partx-utils"
          "kmod-dsa-vsc73xx-spi"
        ];
      };
      verbatim_s08v1901_d1 = {
        device_packages = [
          "block-mount"
          "fdisk"
          "lsblk"
          "mdadm"
          "kmod-md-mod"
          "kmod-md-linear"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-md-raid10"
          "kmod-md-raid456"
          "kmod-fs-btrfs"
          "kmod-fs-cifs"
          "kmod-fs-nfs"
          "kmod-fs-nfsd"
          "kmod-fs-ntfs3"
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
  kmods."6.18.60-1-ff5ed9ca413c58821ef69c29037ef8ff" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/kmods/6.18.60-1-ff5ed9ca413c58821ef69c29037ef8ff/";
    sourceInfo = {
      hash = "sha256-XPQAaD+qp5tGkv/p2OZxZ0gKLqRaqrzD/Uj2ZAVOB4k=";
      name = "kmods-gemini_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/kmods/6.18.60-1-ff5ed9ca413c58821ef69c29037ef8ff/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/packages/";
    sourceInfo = {
      hash = "sha256-Y3LQlqd2B4egi/VMVqdZn+yq01AEcrYq8ExuFaH9qtE=";
      name = "gemini_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/gemini/generic/packages/packages.adb";
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

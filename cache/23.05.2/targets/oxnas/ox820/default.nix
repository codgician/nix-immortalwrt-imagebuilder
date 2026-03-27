# 23.05.2 oxnas/ox820
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/oxnas/ox820/";
  sha256sums = {
    hash = "sha256-jCSNP5nHy/XR+u2T9ISWFCn9urESyuJiN6HsTTHNMns=";
    name = "oxnas_ox820-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/oxnas/ox820/sha256sums";
  };
  imagebuilder = {
    sha256 = "f6190ad8a526c6ca97ffc74943c6132bb059a1d7b80f2c320f0455161e262be5";
    filename = "immortalwrt-imagebuilder-23.05.2-oxnas-ox820.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-uPNCGzspl5LhdU7VUUNCgEoKjb1ERKuY9EexSWNjicw=";
    name = "oxnas_ox820-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/oxnas/ox820/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_mpcore";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "fdisk"
      "fstools"
      "kmod-button-hotplug"
      "kmod-input-gpio-keys-polled"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "lsblk"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mdadm"
      "mtd"
      "netifd"
      "opkg"
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
      akitio_mycloud = {
        device_packages = [
          "kmod-ata-oxnas-sata"
          "kmod-i2c-gpio"
          "kmod-rtc-ds1307"
          "kmod-usb2-oxnas"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      cloudengines_pogoplug-series-3 = {
        device_packages = [
          "kmod-usb2-oxnas"
          "kmod-usb-ledtrig-usbport"
          "kmod-ata-oxnas-sata"
        ];
      };
      cloudengines_pogoplugpro = {
        device_packages = [
          "kmod-usb2-oxnas"
          "kmod-usb-ledtrig-usbport"
          "kmod-ata-oxnas-sata"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      mitrastar_stg-212 = {
        device_packages = [
          "kmod-ata-oxnas-sata"
          "kmod-fs-ext4"
          "kmod-fs-xfs"
          "kmod-usb2-oxnas"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      shuttle_kd20 = {
        device_packages = [
          "kmod-usb2-oxnas"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-i2c-gpio"
          "kmod-rtc-pcf8563"
          "kmod-gpio-beeper"
          "kmod-hwmon-drivetemp"
          "kmod-hwmon-gpiofan"
          "kmod-ata-oxnas-sata"
          "kmod-md-mod"
          "kmod-md-raid0"
          "kmod-md-raid1"
          "kmod-fs-ext4"
          "kmod-fs-xfs"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/oxnas/ox820/packages/";
    sourceInfo = {
      hash = "sha256-TQno+lxsqCW5O62zFMlv9mDnQGFg12ze+i5Wb8HcZP4=";
      name = "oxnas_ox820-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/oxnas/ox820/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_mpcore";
  feeds = import ./../../../packages/arm_mpcore.nix;
}

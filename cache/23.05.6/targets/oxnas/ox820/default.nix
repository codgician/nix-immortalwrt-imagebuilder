# 23.05.6 oxnas/ox820
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/oxnas/ox820/";
  sha256sums = {
    hash = "sha256-Lxrdbe+WPtSLJDi/EQg3ad/SvBcIPpEjvq+74Tn58Uw=";
    name = "oxnas_ox820-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/oxnas/ox820/sha256sums";
  };
  imagebuilder = {
    sha256 = "9f5a3c87b2cf581dc544a39f7adb92c89c7fbcf50b3e57d532032aabeeb9d9ec";
    filename = "immortalwrt-imagebuilder-23.05.6-oxnas-ox820.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Zbe3ue7vy3ULRpxqks9Ps/6U6J6ceMLna2y22MYeLak=";
    name = "oxnas_ox820-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/oxnas/ox820/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_mpcore";
    linux_kernel = {
      release = "1";
      vermagic = "662919e9a1027a59e8f08a44eb16809a";
      version = "5.15.189";
    };
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
    kmods_target = "5.15.189-1-662919e9a1027a59e8f08a44eb16809a";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/oxnas/ox820/packages/";
    sourceInfo = {
      hash = "sha256-MIHDJFT/wc2taDCPN+Z0k4ZOgPRAOwu1TKktcrWFg2w=";
      name = "oxnas_ox820-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/oxnas/ox820/packages/Packages";
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

# 23.05.7 oxnas/ox820
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/oxnas/ox820/";
  sha256sums = {
    hash = "sha256-CKwL0wukzsemU2RAyQ4gJrQLWubp//P1JU5v6eVGBdY=";
    name = "oxnas_ox820-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/oxnas/ox820/sha256sums";
  };
  imagebuilder = {
    sha256 = "6c9fcb642b7ca85b59d58b580f9d0f4bdce5ecdace963941fa137ec2e3371a74";
    filename = "immortalwrt-imagebuilder-23.05.7-oxnas-ox820.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-nkEuKB7BQg/4/QU/HqXWJxGXXMfF6r2b//sd2eJ5Uew=";
    name = "oxnas_ox820-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/oxnas/ox820/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_mpcore";
    linux_kernel = {
      release = "1";
      vermagic = "662919e9a1027a59e8f08a44eb16809a";
      version = "5.15.195";
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
    kmods_target = "5.15.195-1-662919e9a1027a59e8f08a44eb16809a";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/oxnas/ox820/packages/";
    sourceInfo = {
      hash = "sha256-d32bUpm+UzLHmPWFHLcKsg9JqzWky9/K8xrd2IWjA7E=";
      name = "oxnas_ox820-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/oxnas/ox820/packages/Packages";
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

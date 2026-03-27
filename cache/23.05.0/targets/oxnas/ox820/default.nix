# 23.05.0 oxnas/ox820
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/oxnas/ox820/";
  sha256sums = {
    hash = "sha256-tDOnCZbrP19fal2ZvStmcbPLlLYm0V7P2uVfyc3kSAg=";
    name = "oxnas_ox820-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/oxnas/ox820/sha256sums";
  };
  imagebuilder = {
    sha256 = "3ae01714b2114266e19dc121dccc1ef0ae2fe72f1196bbe4174d5951de6429d4";
    filename = "immortalwrt-imagebuilder-23.05.0-oxnas-ox820.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ioDTRiukMM/+BVyRhelX6+dpw92eYgy5p5wFXvZZ3Pg=";
    name = "oxnas_ox820-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/oxnas/ox820/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/oxnas/ox820/packages/";
    sourceInfo = {
      hash = "sha256-aEjyVZBLbonOXKc+HpY2+Ei16nBPX/e6PH9nM5Dt0VA=";
      name = "oxnas_ox820-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/oxnas/ox820/packages/Packages";
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

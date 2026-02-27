# 21.02.7 oxnas/ox820
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/oxnas/ox820/";
  sha256sums = {
    hash = "sha256-Pzu17DjoI3rTufwvkAgsjq7AQWKCvI6zFGbjJJoIM1Q=";
    name = "oxnas_ox820-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/oxnas/ox820/sha256sums";
  };
  imagebuilder = {
    sha256 = "7735c18f1ef25d4707850a43236300a022ee025c4b9841ef8c4102145de8174f";
    filename = "immortalwrt-imagebuilder-21.02.7-oxnas-ox820.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-9t5IcGaE/pIzXfi9u4vLiXsMUIim3u5AX1KkZ8Mxv08=";
    name = "oxnas_ox820-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/oxnas/ox820/profiles.json";
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
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "lsblk"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mdadm"
      "mtd"
      "netifd"
      "opkg"
      "procd"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/oxnas/ox820/packages/";
    sourceInfo = {
      hash = "sha256-RMiEWzb4XnBBiJ6tQZQdo8htcqJHEb/6wJGEQGAAcfc=";
      name = "oxnas_ox820-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/oxnas/ox820/packages/Packages";
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

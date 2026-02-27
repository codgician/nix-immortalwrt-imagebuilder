# snapshot ath79/mikrotik
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/";
  sha256sums = {
    hash = "sha256-tGgkECm59WJnLfbL/MCBCrvdc+AS2wOKFsTVfHDG/ng=";
    name = "ath79_mikrotik-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "77dcd8e247c3a67fbd626690214d50da617693950e0509367c9f91b46c4ef355";
    filename = "immortalwrt-imagebuilder-ath79-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OmmU3Ltk5nfaM+buVxVMwcV6cVroEE0dNQY0p93UpL4=";
    name = "ath79_mikrotik-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "cd4c02f3964fedcdd3962544f15347a4";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
      "yafut"
    ];
    kmods_target = "6.12.67-1-cd4c02f3964fedcdd3962544f15347a4";
    profiles = {
      mikrotik_routerboard-2011uias-2hnd = {
        device_packages = [
          "kmod-usb2"
          "kmod-i2c-gpio"
          "kmod-sfp"
          "kmod-gpio-beeper"
        ];
      };
      mikrotik_routerboard-493g = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-750-r2 = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-911-lite = {
        device_packages = [
          "-yafut"
          "rssileds"
        ];
      };
      mikrotik_routerboard-911g-5hpacd = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      mikrotik_routerboard-911g-xhpnd = {
        device_packages = [ "rssileds" ];
      };
      mikrotik_routerboard-912uag-2hpnd = {
        device_packages = [
          "kmod-usb-ehci"
          "kmod-usb2"
          "rssileds"
        ];
      };
      mikrotik_routerboard-921gs-5hpacd-15s = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-i2c-gpio"
          "kmod-sfp"
        ];
      };
      mikrotik_routerboard-922uags-5hpacd = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-usb2"
          "kmod-i2c-gpio"
          "kmod-sfp"
        ];
      };
      mikrotik_routerboard-951g-2hnd = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-951ui-2hnd = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-951ui-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-952ui-5ac2nd = {
        device_packages = [
          "-yafut"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
        ];
      };
      mikrotik_routerboard-962uigs-5hact2hnt = {
        device_packages = [
          "-yafut"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-usb2"
          "kmod-i2c-gpio"
          "kmod-sfp"
        ];
      };
      mikrotik_routerboard-lhg-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-lhg-5nd = {
        device_packages = [
          "-yafut"
          "rssileds"
        ];
      };
      mikrotik_routerboard-map-2nd = {
        device_packages = [
          "-yafut"
          "kmod-usb2"
          "kmod-ledtrig-gpio"
        ];
      };
      mikrotik_routerboard-mapl-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-sxt-5nd-r2 = {
        device_packages = [
          "rssileds"
          "kmod-gpio-beeper"
        ];
      };
      mikrotik_routerboard-wap-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-wap-g-5hact2hnd = {
        device_packages = [
          "-yafut"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      mikrotik_routerboard-wapr-2nd = {
        device_packages = [
          "-yafut"
          "kmod-usb2"
          "rssileds"
        ];
      };
    };
  };
  kmods."6.12.67-1-cd4c02f3964fedcdd3962544f15347a4" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/kmods/6.12.67-1-cd4c02f3964fedcdd3962544f15347a4/";
    sourceInfo = {
      hash = "sha256-bJLHGdAqD6jFHBcWuvfk6WJ98rujcscqJb+qpIj8Ge4=";
      name = "kmods-ath79_mikrotik-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/kmods/6.12.67-1-cd4c02f3964fedcdd3962544f15347a4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-PtObwXcxGJfwUpq8lgtSmpkp0ufYsoZ7aU9294VfsqI=";
      name = "ath79_mikrotik-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/mikrotik/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}

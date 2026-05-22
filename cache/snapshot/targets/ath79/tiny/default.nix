# snapshot ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-O/ylSS1fPUG9aQvTmCZ4TGxOBJ3xgokrKFaN2Omqp9A=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "7274d0d8bd148079f362b3cbdefdce76730805e00dc917444104d113f9786281";
    filename = "immortalwrt-imagebuilder-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-154A9tAjlfdGxc1zrlTU2Hau7ltjJ3rATnSXbyUT4+k=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7a6bb72532edcd59337bf5b3a5c8c61a";
      version = "6.12.89";
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.89-1-7a6bb72532edcd59337bf5b3a5c8c61a";
    profiles = {
      dlink_dap-1720-a1 = {
        device_packages = [
          "-swconfig"
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
          "rssileds"
        ];
      };
      dlink_dir-859-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-859-a3 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-869-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      nec_wf1200hp = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
          "-uboot-envtools"
        ];
      };
      nec_wf1200hp2 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
          "-uboot-envtools"
        ];
      };
      nec_wg600hp = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr8750n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr9500n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      sitecom_wlr-7100 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
          "kmod-usb2"
        ];
      };
      tplink_re355-v1 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      tplink_re450-v1 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      tplink_re450-v2 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      tplink_tl-wr902ac-v1 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "-swconfig"
          "-uboot-envtools"
        ];
      };
    };
  };
  kmods."6.12.89-1-7a6bb72532edcd59337bf5b3a5c8c61a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/kmods/6.12.89-1-7a6bb72532edcd59337bf5b3a5c8c61a/";
    sourceInfo = {
      hash = "sha256-rboB5vytdXWhKwNULGpegpXxkAUNgoQmb3wq9P6DBZc=";
      name = "kmods-ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/kmods/6.12.89-1-7a6bb72532edcd59337bf5b3a5c8c61a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-SFORDATf+8aF8RC6beUd32+sLpwmUuZfdqk6MGaXuQk=";
      name = "ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/packages/packages.adb";
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

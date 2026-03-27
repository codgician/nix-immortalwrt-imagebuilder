# 25.12.0-rc1 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-kO/SMTly5sSasjMY2wfVlm8ZaHlJcX5+KXfdXgLjLtc=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "5e3d1ea21b7c7c99f8205997fd2c27dc451b12008ffa9f6c2978bd5ff79d5933";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SfVHNSkY2poZ5YpzEl4A6eylm0rh18wA605b1JldGCY=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "33a22713fd756fcc634ea8aa39735ebe";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.74-1-33a22713fd756fcc634ea8aa39735ebe";
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
    };
  };
  kmods."6.12.74-1-33a22713fd756fcc634ea8aa39735ebe" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/kmods/6.12.74-1-33a22713fd756fcc634ea8aa39735ebe/";
    sourceInfo = {
      hash = "sha256-04aRh8duy+HJkAHetwgOKSsavzo2Tam4w3LXbhc4gRU=";
      name = "kmods-ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/kmods/6.12.74-1-33a22713fd756fcc634ea8aa39735ebe/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-mxuEfASaXiOnlSWs4PluqwKObBB3IMkga8ChLZCy4to=";
      name = "ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ath79/tiny/packages/packages.adb";
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

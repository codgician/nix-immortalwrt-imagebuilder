# snapshot ath79/tiny
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-z+n64zm/Hreln368Tw9YjYjc9kEieif8lynRVCWmpYc=";
    name = "ath79_tiny-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "c9d284ccba56f515aded8c6567f9a26450c2c0d8b3777c0542e2ad01779ae4a1";
    filename = "immortalwrt-imagebuilder-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zJQa4aAHY8GcnTqBJcezBgIRWrCp+7dTZN5oIMOqmcE=";
    name = "ath79_tiny-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d7dc915836fda018291f5b1ead5b1c88";
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.67-1-d7dc915836fda018291f5b1ead5b1c88";
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
  kmods."6.12.67-1-d7dc915836fda018291f5b1ead5b1c88" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/kmods/6.12.67-1-d7dc915836fda018291f5b1ead5b1c88/";
    sourceInfo = {
      hash = "sha256-PmkDImL7hCyJ+Nc84aOdWMG8rO7TZHjeFNkyw5QsLuI=";
      name = "kmods-ath79_tiny-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/kmods/6.12.67-1-d7dc915836fda018291f5b1ead5b1c88/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-PKGn/YieFGPcIdr9Phvd1OdNc5fhG/WkN3jBT6QWwRI=";
      name = "ath79_tiny-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ath79/tiny/packages/packages.adb";
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

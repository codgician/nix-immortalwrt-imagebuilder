# 25.12.2 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-Qz6boWLGtsEEpLF61FkNG/ia9efG3sEaFBRnqhdGLiE=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "76a570ee88c939a467d48c3bed6f48ff77a369baf996042823b3f834ecfab283";
    filename = "immortalwrt-imagebuilder-25.12.2-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eXs5WwFDhBSlBDQsVAhRpZo0970cGxqa+nMtkDkkDs4=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "3ecc76068e8fbbba725d3236199b5187";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-3ecc76068e8fbbba725d3236199b5187";
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
    };
  };
  kmods."6.12.103-1-3ecc76068e8fbbba725d3236199b5187" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/kmods/6.12.103-1-3ecc76068e8fbbba725d3236199b5187/";
    sourceInfo = {
      hash = "sha256-MhyffFMRCG+oMHenhm6jVe/5Qr0i2+qqlZdDirgRMQM=";
      name = "kmods-ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/kmods/6.12.103-1-3ecc76068e8fbbba725d3236199b5187/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-4eUWRNgNNYlnRyWbVKcQU3fm9e6IBBS5XfpGPe9xZK8=";
      name = "ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ath79/tiny/packages/packages.adb";
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

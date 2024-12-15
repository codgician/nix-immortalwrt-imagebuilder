{ pkgs,
  generate-hashes
}:
pkgs.writeShellApplication {
  name = "generate-all-hashes";
  runtimeInputs = [
    pkgs.curl
    pkgs.jq
    generate-hashes
  ];

  text = ''
    VERSIONS=$(curl -s https://downloads.immortalwrt.org/.versions.json)
    readarray -t RELEASES < <(jq -r '.versions_list[]' <<< "''${VERSIONS}")
    RELEASES+=("24.10.0-rc1")

    for RELEASE in "''${RELEASES[@]}"; do
      echo "# Fetching hashes for OpenWrt ''${RELEASE}"
      generate-hashes "''${RELEASE}"
    done
  '';
}

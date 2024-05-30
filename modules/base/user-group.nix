{config, ...}: {
  users.users."scott" = {
    initialPassword="pw123";
    isNormalUser = true;
    extraGroups = [
      "users"
      "networkmanager"
      "wheel"
    ];
  };
}

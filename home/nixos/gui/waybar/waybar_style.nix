{...}:{
    programs.waybar = { 
        style = 
        ''
* {
    border: none;
    border-radius: 0;
    font-family: Roboto, Helvetica, Arial, sans-serif;
    font-size: 13px;
    min-height: 0;
}

window#waybar {
    background: rgba(43, 48, 59, 0.5);
    border-bottom: 3px solid rgba(100, 114, 125, 0.5);
    color: white;
}

tooltip {
  background: rgba(43, 48, 59, 0.5);
  border: 1px solid rgba(100, 114, 125, 0.5);
}
tooltip label {
  color: white;
}

#workspaces button {
    padding: 0 5px;
    background: transparent;
    color: white;
    border-bottom: 3px solid transparent;
}

#workspaces button.focused {
    background: #64727D;
    border-bottom: 3px solid white;
}

#mode, #clock {
    padding: 0 10px;
}

#mode {
    background: #64727D;
    border-bottom: 3px solid white;
}

#clock {
    background-color: #64727D;
}
        '';
    };
}

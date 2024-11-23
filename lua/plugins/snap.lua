local snap = require('snap')
snap.maps {
  { "<Leader>ff", snap.config.file { producer = "ripgrep.file" } },
  { "<Leader>fg", snap.config.vimgrep { producer = "ripgrep.vimgrep" } }
}


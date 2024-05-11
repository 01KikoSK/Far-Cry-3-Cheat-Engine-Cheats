-- Health Mode
define(healthmode, 1)

-- Infinite Ammo (No Reload Style)
define(infiniteammo, 1)

-- Infinite Money
define(infinitemoney, 1)

-- Infinite Cyber Hearts
define(infinitecyberhearts, 1)

-- Infinite Medkits
define(infinitemedkits, 1)

-- Move Speed Mod
define(movespeedmod, 1.5)

-- Jump Height Mod
define(jumphightmod, 2.0)

-- No Spread
define(nospread, 1)

-- No Recoil
define(norecoil, 1)

-- XP Gain Mod
define(xpgainmod, 2.0)

[ENABLE]
healthmode:
  aobscanmodule(AmmoArrowSplDecHook, FarCry3.exe, 83 7F 0C 00 7F 0C 00 00 00 00 00 00 00 00 00 00)
  alloc(newmem, 2048)
  label(code)
  label(return)

  code:
    mov [rcx+00000190], #100
    jmp return

  AmmoArrowSplDecHook:
    jmp newmem
    code:
      jmp return

  newmem:
    jmp code

[DISABLE]
healthmode:
  AmmoArrowSplDecHook:
    jmp return

-- Infinite Ammo (No Reload Style)
[ENABLE]
infiniteammo:
  aobscanmodule(InfiniteAmmoHook, FarCry3.exe, 83 7F 0C 00 7F 0C 00 00 00 00 00 00 00 00 00 00)
  alloc(newmem, 2048)
  label(code)
  label(return)

  code:
    mov [rcx+00000190], #-1
    jmp return

  InfiniteAmmoHook:
    jmp newmem
    code:
      jmp return

  newmem:
    jmp code

[DISABLE]
infiniteammo:
  InfiniteAmmoHook:
    jmp return

-- Infinite Money
[ENABLE]
infinitemoney:
  aobscanmodule(InfiniteMoneyHook, FarCry3.exe, 83 7F 0C 00 7F 0C 00 00 00 00 00 00 00 00 00 00)
  alloc(newmem, 2048)
  label(code)
  label(return)

  code:
    mov [rcx+00000190], #1000000
    jmp return

  InfiniteMoneyHook:
    jmp newmem
    code:
      jmp return

  newmem:
    jmp code

[DISABLE]
infinitemoney:
  InfiniteMoneyHook:
    jmp return

-- Infinite Cyber Hearts
[ENABLE]
infinitecyberhearts:
  aobscanmodule(InfiniteCyberHeartsHook, FarCry3.exe, 83 7F 0C 00 7F 0C 00 00 00 00 00 00 00 00 00 00)
  alloc(newmem, 2048)
  label(code)
  label(return)

  code:
    mov [rcx+00000190], #100
    jmp return

  InfiniteCyberHeartsHook:
    jmp newmem
    code:
      jmp return

  newmem:
    jmp code

[DISABLE]
infinitecyberhearts:
  InfiniteCyberHeartsHook:
    jmp return

-- Infinite Medkits
[ENABLE]
infinitemedkits:
  aobscanmodule(InfiniteMedkitsHook, FarCry3.exe, 83 7F 0C 00 7F 0C 00 00 00 00 00 00 00 00 00 00)
  alloc(newmem, 2048)
  label(code)
  label(return)

  code:
    mov [rcx+00000190], #100
    jmp return

  InfiniteMedkitsHook:
    jmp newmem
    code:
      jmp return

  newmem:
    jmp code

[DISABLE]
infinitemedkits:
  InfiniteMedkitsHook:
    jmp return

-- Move Speed Mod
[ENABLE]
movespeedmod:
  aobscanmodule(MoveSpeedModHook, FarCry3.exe, 83 7F 0C 00 7F 0C 00 00 00 00 00 00 00 00 00 00)
  alloc(newmem, 2048)
  label(code)
  label(return)

  code:
    mov [rcx+00000190], #1.5
    jmp return

  MoveSpeedModHook:
    jmp newmem
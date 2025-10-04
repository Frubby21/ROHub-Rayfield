local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ROHub Interface",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "ROHub",
   LoadingSubtitle = "by Flobby25",
   ShowText = "ROHub", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "R", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "ROHub", -- Create a custom folder for your hub/game
      FileName = "ROHubConf"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "ROHub Key System",
      Subtitle = "ROHub (Rayfield) Key System",
      Note = "Join our Discord server to get a key. Key changes randomly.", -- Use this to tell the user how to get a key
      FileName = "Key (Delete once Key Expired)", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"NONE"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

    Rayfield:Notify({
   Title = "Opened ROHub Successfully",
   Content = "To completely close ROHub, head to the Settings tab, and press Close Rayfield Interface.",
   Duration = 3,
   Image = "tick",
})

local Home = Window:CreateTab("Home", "home") -- Title, Image

local Button = Home:CreateButton({
   Name = "Launch IY (Infinite Yield)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Button = Home:CreateButton({
      Name = "Launch Sirius"
      Callback = function()
      loadstring(game:HttpGet('https://sirius.menu/sirius'))()
      end,
   })


local Information = Window:CreateTab("Information") -- Title, Image

local Paragraph = Information:CreateParagraph({Title = "Credits", Content = "ROHub (Stable/Beta) is owned by Flobby25. This uses multiple open-source code, such as Rayfield Interface by Sirius, and Infinite Yield as the primary script. The comsumer is not to edit the script, unless they know the base of the Rayfield library. (docs.sirius.menu/rayfield). You may add other components, but not edit existing ones. All ROHub (Original Code) made by Flobby25, this version is based on Rayfield and runs other scripts. ScriptBlox's search API will be added in future."})


local Settings = Window:CreateTab("Settings") -- Title, Image

local Button = Settings:CreateButton({
   Name = "Close ROHub",
   Callback = function()
    Rayfield:Notify({
   Title = "Closing ROHub",
   Content = "To reopen ROHub, you need to re-run the script.",
   Duration = 1.5,
   Image = "x",
})
wait(2)
Rayfield:Destroy()

   end,
})






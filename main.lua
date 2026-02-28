---@class BetterBags: AceAddon
local addon = LibStub('AceAddon-3.0'):GetAddon("BetterBags")

---@class Categories: AceModule
local categories = addon:GetModule('Categories')

---@class Localization: AceModule
local L = addon:GetModule('Localization')

---@class Context: AceModule
local context = addon:GetModule('Context')
local ctx = context:New('BetterBags_Housing_Registration')

categories:CreateCategory(ctx, {
  name = L:G("Housing: Decor"),
  save = true,
  searchCategory = {
    query = "type = Housing AND subtype = Decor"
  },
  note = L:G("Created by BetterBags - Housing"),
  priority = 1,
})

categories:CreateCategory(ctx, {
  name = L:G("Housing: Dyes"),
  save = true,
  searchCategory = {
    query = 'type = Housing AND subtype = "Housing Dye"'
  },
  note = L:G("Created by BetterBags - Housing"),
  priority = 1,
})

categories:CreateCategory(ctx, {
  name = L:G("Housing: Lumber"),
  save = true,
  searchCategory = {
    query = 'type = Tradeskill AND subtype = Other AND name %= Lumber'
  },
  note = L:G("Created by BetterBags - Housing"),
  priority = 1,
})

categories:CreateCategory(ctx, {
  name = L:G("Housing: Other"),
  save = true,
  searchCategory = {
    query = 'type = Housing AND NOT (subtype = Decor OR subtype = "Housing Dye")'
  },
  note = L:G("Created by BetterBags - Housing"),
  priority = 2,
})

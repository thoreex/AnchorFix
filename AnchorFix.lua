StaticPopupDialogs["ANCHORFIX_WARNING"] = {
	text = "It appears that Blizzard has fixed the anchor issue; you can remove the addon.",
	button1 = "OK",
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}

EventUtil.ContinueOnAddOnLoaded("Blizzard_UnitFrame", function()
	if (not PartyFrame.alwaysUseTopLeftAnchor) then
		StaticPopup_Show("ANCHORFIX_WARNING")
		return
	end

	PartyFrame.alwaysUseTopLeftAnchor = false
end)

EventUtil.ContinueOnAddOnLoaded("Blizzard_CompactRaidFrames", function()
	if (not CompactRaidFrameContainer.alwaysUseTopLeftAnchor) then
		StaticPopup_Show("ANCHORFIX_WARNING")
		return
	end
	
	CompactRaidFrameContainer.alwaysUseTopLeftAnchor = false
end)
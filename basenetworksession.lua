local BaseNetworkSession_load = BaseNetworkSession.load
function BaseNetworkSession:load(...)
	BaseNetworkSession_load(self, ...)
	Application:set_pause(false)
end
local BaseNetworkSession_on_drop_in_pause_request_received = BaseNetworkSession.on_drop_in_pause_request_received
function BaseNetworkSession:on_drop_in_pause_request_received(peer_id, ...)
	BaseNetworkSession_on_drop_in_pause_request_received(self, peer_id, ...)
	Application:set_pause(false)
	SoundDevice:set_rtpc("ingame_sound", 1) -- unmute gameplay sounds
end
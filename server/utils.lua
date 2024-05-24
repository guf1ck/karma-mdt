local QBCore = exports['qb-core']:GetCoreObject()

local CodeID = {
	codeName = 'Karma Development 4.0 - MDT System',
	version = '1.0.0'
  }
  
  Citizen.CreateThread(function()
  print('[' .. CodeID.codeName .. '] v' .. CodeID.version .. ' started!')
  end)

function GetPlayerData(source)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player == nil then return end -- Player not loaded in correctly
	return Player.PlayerData
end

function UnpackJob(data)
	local job = {
		name = data.name,
		label = data.label
	}
	local grade = {
		name = data.grade.name,
	}

	return job, grade
end

function PermCheck(src, PlayerData)
	local result = true

	if not Config.AllowedJobs[PlayerData.job.name] then
		print(("UserId: %s(%d) tried to access the mdt even though they are not authorised (server direct)"):format(GetPlayerName(src), src))
		result = false
	end

	return result
end

function ProfPic(gender, profilepic)
	if profilepic then return profilepic end;
	if gender == "f" then return "images/female.png" end;
	return "images/male.png"
end

function IsJobAllowedToMDT(job)
	if Config.PoliceJobs[job] then
		return true
	elseif Config.AmbulanceJobs[job] then
		return true
	elseif Config.DojJobs[job] then
		return true
	else
		return false
	end
end

function GetNameFromPlayerData(PlayerData)
	return ('%s %s'):format(PlayerData.charinfo.firstname, PlayerData.charinfo.lastname)
end

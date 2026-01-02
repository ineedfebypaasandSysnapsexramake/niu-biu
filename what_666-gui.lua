-- credits to ThatKittyGD
local ScreenGui = Instance.new("ScreenGui")
local frami = Instance.new("Frame")
local lbl = Instance.new("TextLabel")
local R6 = Instance.new("TextButton")
local F3X = Instance.new("TextButton")
local Skybox = Instance.new("TextButton")
local Decal = Instance.new("TextButton")
local Skybox2 = Instance.new("TextButton")
local Decal2 = Instance.new("TextButton")
local Skybox3 = Instance.new("TextButton")
local Realm = Instance.new("TextButton")
local TrippySky = Instance.new("TextButton")


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "gozei"
ScreenGui.ResetOnSpawn = true
------------------------------------------------------------
frami.Size = UDim2.new(0, 600, 0, 400)
frami.Position = UDim2.new(0, 0, 0, 0)
frami.BackgroundColor3 = Color3.new(255,0,0)
frami.BorderSizePixel = 5
frami.BorderColor3 = Color3.new(255, 255, 255)
frami.Active = true
frami.Draggable = true
frami.Parent = ScreenGui
------------------------------------------------------------
lbl.Size = UDim2.new(0, 600, 0, 30)
lbl.Position = UDim2.new(0, 0, 0, 0)
lbl.BackgroundColor3 = Color3.new(139,0,0)
lbl.BorderSizePixel = 3
lbl.BorderColor3 = Color3.new(60, 0, 0)
lbl.Text = "g00by'z gui v1 private pomba dura"
lbl.TextScaled = true
lbl.TextColor3 = Color3.new(255, 255, 255)
lbl.Parent = frami
-------------------------------------------------------------
R6.Size = UDim2.new(0, 60, 0, 30)
R6.Position = UDim2.new(0.02, 1, 0.1, 0)
R6.BackgroundColor3 = Color3.new(139,0,0)
R6.BorderSizePixel = 3
R6.BorderColor3 = Color3.new(255, 255, 255)
R6.Text = "Theme"
R6.TextScaled = true
R6.TextColor3 = Color3.new(255, 255, 255)
R6.Parent = frami
R6.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 100379372434844 ;pitch 0.8 ;volume inf")
end)
F3X.Size = UDim2.new(0, 60, 0, 30)
F3X.Position = UDim2.new(0.83, 1, 0.1, 0)
F3X.BackgroundColor3 = Color3.new(139,0,0)
F3X.BorderSizePixel = 3
F3X.BorderColor3 = Color3.new(255, 255, 255)
F3X.Text = "Get F3X"
F3X.TextScaled = true
F3X.TextColor3 = Color3.new(255, 255, 255)
F3X.Parent = frami
F3X.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";btools")
    RequestCommand:InvokeServer(";give me b")
    RequestCommand:InvokeServer(";give me f")
end)

Skybox.Size = UDim2.new(0, 60, 0, 30)
Skybox.Position = UDim2.new(0.02, 1, 0.2, 0)
Skybox.BackgroundColor3 = Color3.new(255,0,0)
Skybox.BorderSizePixel = 3
Skybox.BorderColor3 = Color3.new(255, 255, 255)
Skybox.Text = "Sky"
Skybox.TextScaled = true
Skybox.TextColor3 = Color3.new(255, 255, 255)
Skybox.Parent = frami
Skybox.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";fogcolor black")

    local player = game.Players.LocalPlayer
    local char = player.Character
    local tool
    for i,v in player:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    for i,v in game.ReplicatedStorage:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    --craaa
    remote = tool.SyncAPI.ServerEndpoint
    function _(args)
        remote:InvokeServer(unpack(args))
    end
    function SetCollision(part,boolean)
        local args = {
            [1] = "SyncCollision",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CanCollide"] = boolean
                }
            }
        }
        _(args)
    end
    function SetAnchor(boolean,part)
        local args = {
            [1] = "SyncAnchor",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Anchored"] = boolean
                }
            }
        }
        _(args)
    end
    function CreatePart(cf,parent)
        local args = {
            [1] = "CreatePart",
            [2] = "Normal",
            [3] = cf,
            [4] = parent
        }
        _(args)
    end
    function DestroyPart(part)
        local args = {
            [1] = "Remove",
            [2] = {
                [1] = part
            }
        }
        _(args)
    end
    function MovePart(part,cf)
        local args = {
            [1] = "SyncMove",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CFrame"] = cf
                }
            }
        }
        _(args)
    end
    function Resize(part,size,cf)
        local args = {
            [1] = "SyncResize",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CFrame"] = cf,
                    ["Size"] = size
                }
            }
        }
        _(args)
    end
    function AddMesh(part)
        local args = {
            [1] = "CreateMeshes",
            [2] = {
                [1] = {
                    ["Part"] = part
                }
            }
        }
        _(args)
    end

    function SetMesh(part,meshid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["MeshId"] = "rbxassetid://"..meshid
                }
            }
        }
        _(args)
    end
    function SetTexture(part, texid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["TextureId"] = "rbxassetid://"..texid
                }
            }
        }
        _(args)
    end
    function SetName(part, stringg)
        local args = {
            [1] = "SetName",
            [2] = {
                [1] = part
            },
            [3] = stringg
        }

        _(args)
    end
    function MeshResize(part,size)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Scale"] = size
                }
            }
        }
        _(args)
    end
    function Weld(part1, part2,lead)
        local args = {
            [1] = "CreateWelds",
            [2] = {
                [1] = part1,
                [2] = part2
            },
            [3] = lead
        }
        _(args)

    end
    function SetLocked(part,boolean)
        local args = {
            [1] = "SetLocked",
            [2] = {
                [1] = part
            },
            [3] = boolean
        }
        _(args)
    end
    function SetTrans(part,int)
        local args = {
            [1] = "SyncMaterial",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Transparency"] = int
                }
            }
        }
        _(args)
    end
    function CreateSpotlight(part)
        local args = {
            [1] = "CreateLights",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["LightType"] = "SpotLight"
                }
            }
        }
        _(args)
    end
    function SyncLighting(part,brightness)
        local args = {
            [1] = "SyncLighting",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["LightType"] = "SpotLight",
                    ["Brightness"] = brightness
                }
            }
        }
        _(args)
    end
    function Color(part,color)
        local args = {
            [1] = "SyncColor",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Color"] = color --[[Color3]],
                    ["UnionColoring"] = false
                }
            }
        }
        _(args)
    end
    function SpawnDecal(part,side)
        local args = {
            [1] = "CreateTextures",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal"
                }
            }
        }

        _(args)
    end
    function AddDecal(part,asset,side)
        local args = {
            [1] = "SyncTexture",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal",
                    ["Texture"] = "rbxassetid://".. asset
                }
            }
        }
        _(args)
    end

    function Sky(id)
        e = char.HumanoidRootPart.CFrame.x
        f = char.HumanoidRootPart.CFrame.y
        g = char.HumanoidRootPart.CFrame.z
        CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
        for i,v in game.Workspace:GetDescendants() do
            if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
                --spawn(function()
                SetName(v,"POMBA DICK FUCK")
                AddMesh(v)
                --end)
                --spawn(function()
                SetMesh(v,"111891702759441")
                SetTexture(v,id)
                --end)
                MeshResize(v,Vector3.new(11111,11111,11111))
                SetLocked(v,true)
            end
        end
    end
    Sky("124871537872422")
end)

Decal.Size = UDim2.new(0, 60, 0, 30)
Decal.Position = UDim2.new(0.2, 1, 0.2, 0)
Decal.BackgroundColor3 = Color3.new(255,0,0)
Decal.BorderSizePixel = 3
Decal.BorderColor3 = Color3.new(255, 255, 255)
Decal.Text = "Decal"
Decal.TextScaled = true
Decal.TextColor3 = Color3.new(255, 255, 255)
Decal.Parent = frami
Decal.MouseButton1Click:Connect(function()
		local player = game.Players.LocalPlayer
		local char = player.Character
		local tool
		for i,v in player:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		for i,v in game.ReplicatedStorage:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		--craaa
		remote = tool.SyncAPI.ServerEndpoint
		function _(args)
			remote:InvokeServer(unpack(args))
		end
		function SetCollision(part,boolean)
			local args = {
				[1] = "SyncCollision",
				[2] = {
					[1] = {
						["Part"] = part,
						["CanCollide"] = boolean
					}
				}
			}
			_(args)
		end
		function SetAnchor(boolean,part)
			local args = {
				[1] = "SyncAnchor",
				[2] = {
					[1] = {
						["Part"] = part,
						["Anchored"] = boolean
					}
				}
			}
			_(args)
		end
		function CreatePart(cf,parent)
			local args = {
				[1] = "CreatePart",
				[2] = "Normal",
				[3] = cf,
				[4] = parent
			}
			_(args)
		end
		function DestroyPart(part)
			local args = {
				[1] = "Remove",
				[2] = {
					[1] = part
				}
			}
			_(args)
		end
		function MovePart(part,cf)
			local args = {
				[1] = "SyncMove",
				[2] = {
					[1] = {
						["Part"] = part,
						["CFrame"] = cf
					}
				}
			}
			_(args)
		end
		function Resize(part,size,cf)
			local args = {
				[1] = "SyncResize",
				[2] = {
					[1] = {
						["Part"] = part,
						["CFrame"] = cf,
						["Size"] = size
					}
				}
			}
			_(args)
		end
		function AddMesh(part)
			local args = {
				[1] = "CreateMeshes",
				[2] = {
					[1] = {
						["Part"] = part
					}
				}
			}
			_(args)
		end
	
		function SetMesh(part,meshid)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["MeshId"] = "rbxassetid://"..meshid
					}
				}
			}
			_(args)
		end
		function SetTexture(part, texid)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["TextureId"] = "rbxassetid://"..texid
					}
				}
			}
			_(args)
		end
		function SetName(part, stringg)
			local args = {
				[1] = "SetName",
				[2] = {
					[1] = part
				},
				[3] = stringg
			}
	
			_(args)
		end
		function MeshResize(part,size)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["Scale"] = size
					}
				}
			}
			_(args)
		end
		function Weld(part1, part2,lead)
			local args = {
				[1] = "CreateWelds",
				[2] = {
					[1] = part1,
					[2] = part2
				},
				[3] = lead
			}
			_(args)
	
		end
		function SetLocked(part,boolean)
			local args = {
				[1] = "SetLocked",
				[2] = {
					[1] = part
				},
				[3] = boolean
			}
			_(args)
		end
		function SetTrans(part,int)
			local args = {
				[1] = "SyncMaterial",
				[2] = {
					[1] = {
						["Part"] = part,
						["Transparency"] = int
					}
				}
			}
			_(args)
		end
		function CreateSpotlight(part)
			local args = {
				[1] = "CreateLights",
				[2] = {
					[1] = {
						["Part"] = part,
						["LightType"] = "SpotLight"
					}
				}
			}
			_(args)
		end
		function SyncLighting(part,brightness)
			local args = {
				[1] = "SyncLighting",
				[2] = {
					[1] = {
						["Part"] = part,
						["LightType"] = "SpotLight",
						["Brightness"] = brightness
					}
				}
			}
			_(args)
		end
		function Color(part,color)
			local args = {
				[1] = "SyncColor",
				[2] = {
					[1] = {
						["Part"] = part,
						["Color"] = color --[[Color3]],
						["UnionColoring"] = false
					}
				}
			}
			_(args)
		end
		function SpawnDecal(part,side)
			local args = {
				[1] = "CreateTextures",
				[2] = {
					[1] = {
						["Part"] = part,
						["Face"] = side,
						["TextureType"] = "Decal"
					}
				}
			}
	
			_(args)
		end
		function AddDecal(part,asset,side)
			local args = {
				[1] = "SyncTexture",
				[2] = {
					[1] = {
						["Part"] = part,
						["Face"] = side,
						["TextureType"] = "Decal",
						["Texture"] = "rbxassetid://".. asset
					}
				}
			}
			_(args)
		end
	
		function spam(id)
			for i,v in game.workspace:GetDescendants() do
				if v:IsA("BasePart") then
					spawn(function()
						SetLocked(v,false)
						SpawnDecal(v,Enum.NormalId.Front)
						AddDecal(v,id,Enum.NormalId.Front)
	
						SpawnDecal(v,Enum.NormalId.Back)
						AddDecal(v,id,Enum.NormalId.Back)
	
						SpawnDecal(v,Enum.NormalId.Right)
						AddDecal(v,id,Enum.NormalId.Right)
	
						SpawnDecal(v,Enum.NormalId.Left)
						AddDecal(v,id,Enum.NormalId.Left)
	
						SpawnDecal(v,Enum.NormalId.Bottom)
						AddDecal(v,id,Enum.NormalId.Bottom)
	
						SpawnDecal(v,Enum.NormalId.Top)
						AddDecal(v,id,Enum.NormalId.Top)
					end)
				end
			end 
		end
		spam("124871537872422")
end)

Skybox2.Size = UDim2.new(0, 60, 0, 30)
Skybox2.Position = UDim2.new(0.38, 1, 0.2, 0)
Skybox2.BackgroundColor3 = Color3.new(255,0,0)
Skybox2.BorderSizePixel = 3
Skybox2.BorderColor3 = Color3.new(255, 255, 255)
Skybox2.Text = "Skybox 2"
Skybox2.TextScaled = true
Skybox2.TextColor3 = Color3.new(255, 255, 255)
Skybox2.Parent = frami
Skybox2.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local char = player.Character
    local tool
    for i,v in player:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    for i,v in game.ReplicatedStorage:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    --craaa
    remote = tool.SyncAPI.ServerEndpoint
    function _(args)
        remote:InvokeServer(unpack(args))
    end
    function SetCollision(part,boolean)
        local args = {
            [1] = "SyncCollision",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CanCollide"] = boolean
                }
            }
        }
        _(args)
    end
    function SetAnchor(boolean,part)
        local args = {
            [1] = "SyncAnchor",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Anchored"] = boolean
                }
            }
        }
        _(args)
    end
    function CreatePart(cf,parent)
        local args = {
            [1] = "CreatePart",
            [2] = "Normal",
            [3] = cf,
            [4] = parent
        }
        _(args)
    end
    function DestroyPart(part)
        local args = {
            [1] = "Remove",
            [2] = {
                [1] = part
            }
        }
        _(args)
    end
    function MovePart(part,cf)
        local args = {
            [1] = "SyncMove",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CFrame"] = cf
                }
            }
        }
        _(args)
    end
    function Resize(part,size,cf)
        local args = {
            [1] = "SyncResize",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CFrame"] = cf,
                    ["Size"] = size
                }
            }
        }
        _(args)
    end
    function AddMesh(part)
        local args = {
            [1] = "CreateMeshes",
            [2] = {
                [1] = {
                    ["Part"] = part
                }
            }
        }
        _(args)
    end

    function SetMesh(part,meshid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["MeshId"] = "rbxassetid://"..meshid
                }
            }
        }
        _(args)
    end
    function SetTexture(part, texid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["TextureId"] = "rbxassetid://"..texid
                }
            }
        }
        _(args)
    end
    function SetName(part, stringg)
        local args = {
            [1] = "SetName",
            [2] = {
                [1] = part
            },
            [3] = stringg
        }

        _(args)
    end
    function MeshResize(part,size)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Scale"] = size
                }
            }
        }
        _(args)
    end
    function Weld(part1, part2,lead)
        local args = {
            [1] = "CreateWelds",
            [2] = {
                [1] = part1,
                [2] = part2
            },
            [3] = lead
        }
        _(args)

    end
    function SetLocked(part,boolean)
        local args = {
            [1] = "SetLocked",
            [2] = {
                [1] = part
            },
            [3] = boolean
        }
        _(args)
    end
    function SetTrans(part,int)
        local args = {
            [1] = "SyncMaterial",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Transparency"] = int
                }
            }
        }
        _(args)
    end
    function CreateSpotlight(part)
        local args = {
            [1] = "CreateLights",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["LightType"] = "SpotLight"
                }
            }
        }
        _(args)
    end
    function SyncLighting(part,brightness)
        local args = {
            [1] = "SyncLighting",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["LightType"] = "SpotLight",
                    ["Brightness"] = brightness
                }
            }
        }
        _(args)
    end
    function Color(part,color)
        local args = {
            [1] = "SyncColor",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Color"] = color --[[Color3]],
                    ["UnionColoring"] = false
                }
            }
        }
        _(args)
    end
    function SpawnDecal(part,side)
        local args = {
            [1] = "CreateTextures",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal"
                }
            }
        }

        _(args)
    end
    function AddDecal(part,asset,side)
        local args = {
            [1] = "SyncTexture",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal",
                    ["Texture"] = "rbxassetid://".. asset
                }
            }
        }
        _(args)
    end

    function Sky(id)
        e = char.HumanoidRootPart.CFrame.x
        f = char.HumanoidRootPart.CFrame.y
        g = char.HumanoidRootPart.CFrame.z
        CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
        for i,v in game.Workspace:GetDescendants() do
            if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
                --spawn(function()
                SetName(v,"Sky")
                AddMesh(v)
                --end)
                --spawn(function()
                SetMesh(v,"111891702759441")
                SetTexture(v,id)
                --end)
                MeshResize(v,Vector3.new(30000,30000,30000))
                SetLocked(v,true)
            end
        end
    end
    Sky("81116857172402")

end)

Decal2.Size = UDim2.new(0, 60, 0, 30)
Decal2.Position = UDim2.new(0.56, 1, 0.2, 0)
Decal2.BackgroundColor3 = Color3.new(255,0,0)
Decal2.BorderSizePixel = 3
Decal2.BorderColor3 = Color3.new(255, 255, 255)
Decal2.Text = "Decal 2"
Decal2.TextScaled = true
Decal2.TextColor3 = Color3.new(255, 255, 255)
Decal2.Parent = frami
Decal2.MouseButton1Click:Connect(function()

		local player = game.Players.LocalPlayer
		local char = player.Character
		local tool
		for i,v in player:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		for i,v in game.ReplicatedStorage:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		--craaa
		remote = tool.SyncAPI.ServerEndpoint
		function _(args)
			remote:InvokeServer(unpack(args))
		end
		function SetCollision(part,boolean)
			local args = {
				[1] = "SyncCollision",
				[2] = {
					[1] = {
						["Part"] = part,
						["CanCollide"] = boolean
					}
				}
			}
			_(args)
		end
		function SetAnchor(boolean,part)
			local args = {
				[1] = "SyncAnchor",
				[2] = {
					[1] = {
						["Part"] = part,
						["Anchored"] = boolean
					}
				}
			}
			_(args)
		end
		function CreatePart(cf,parent)
			local args = {
				[1] = "CreatePart",
				[2] = "Normal",
				[3] = cf,
				[4] = parent
			}
			_(args)
		end
		function DestroyPart(part)
			local args = {
				[1] = "Remove",
				[2] = {
					[1] = part
				}
			}
			_(args)
		end
		function MovePart(part,cf)
			local args = {
				[1] = "SyncMove",
				[2] = {
					[1] = {
						["Part"] = part,
						["CFrame"] = cf
					}
				}
			}
			_(args)
		end
		function Resize(part,size,cf)
			local args = {
				[1] = "SyncResize",
				[2] = {
					[1] = {
						["Part"] = part,
						["CFrame"] = cf,
						["Size"] = size
					}
				}
			}
			_(args)
		end
		function AddMesh(part)
			local args = {
				[1] = "CreateMeshes",
				[2] = {
					[1] = {
						["Part"] = part
					}
				}
			}
			_(args)
		end
	
		function SetMesh(part,meshid)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["MeshId"] = "rbxassetid://"..meshid
					}
				}
			}
			_(args)
		end
		function SetTexture(part, texid)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["TextureId"] = "rbxassetid://"..texid
					}
				}
			}
			_(args)
		end
		function SetName(part, stringg)
			local args = {
				[1] = "SetName",
				[2] = {
					[1] = part
				},
				[3] = stringg
			}
	
			_(args)
		end
		function MeshResize(part,size)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["Scale"] = size
					}
				}
			}
			_(args)
		end
		function Weld(part1, part2,lead)
			local args = {
				[1] = "CreateWelds",
				[2] = {
					[1] = part1,
					[2] = part2
				},
				[3] = lead
			}
			_(args)
	
		end
		function SetLocked(part,boolean)
			local args = {
				[1] = "SetLocked",
				[2] = {
					[1] = part
				},
				[3] = boolean
			}
			_(args)
		end
		function SetTrans(part,int)
			local args = {
				[1] = "SyncMaterial",
				[2] = {
					[1] = {
						["Part"] = part,
						["Transparency"] = int
					}
				}
			}
			_(args)
		end
		function CreateSpotlight(part)
			local args = {
				[1] = "CreateLights",
				[2] = {
					[1] = {
						["Part"] = part,
						["LightType"] = "SpotLight"
					}
				}
			}
			_(args)
		end
		function SyncLighting(part,brightness)
			local args = {
				[1] = "SyncLighting",
				[2] = {
					[1] = {
						["Part"] = part,
						["LightType"] = "SpotLight",
						["Brightness"] = brightness
					}
				}
			}
			_(args)
		end
		function Color(part,color)
			local args = {
				[1] = "SyncColor",
				[2] = {
					[1] = {
						["Part"] = part,
						["Color"] = color --[[Color3]],
						["UnionColoring"] = false
					}
				}
			}
			_(args)
		end
		function SpawnDecal(part,side)
			local args = {
				[1] = "CreateTextures",
				[2] = {
					[1] = {
						["Part"] = part,
						["Face"] = side,
						["TextureType"] = "Decal"
					}
				}
			}
	
			_(args)
		end
		function AddDecal(part,asset,side)
			local args = {
				[1] = "SyncTexture",
				[2] = {
					[1] = {
						["Part"] = part,
						["Face"] = side,
						["TextureType"] = "Decal",
						["Texture"] = "rbxassetid://".. asset
					}
				}
			}
			_(args)
		end
	
		function spam(id)
			for i,v in game.workspace:GetDescendants() do
				if v:IsA("BasePart") then
					spawn(function()
						SetLocked(v,false)
						SpawnDecal(v,Enum.NormalId.Front)
						AddDecal(v,id,Enum.NormalId.Front)
	
						SpawnDecal(v,Enum.NormalId.Back)
						AddDecal(v,id,Enum.NormalId.Back)
	
						SpawnDecal(v,Enum.NormalId.Right)
						AddDecal(v,id,Enum.NormalId.Right)
	
						SpawnDecal(v,Enum.NormalId.Left)
						AddDecal(v,id,Enum.NormalId.Left)
	
						SpawnDecal(v,Enum.NormalId.Bottom)
						AddDecal(v,id,Enum.NormalId.Bottom)
	
						SpawnDecal(v,Enum.NormalId.Top)
						AddDecal(v,id,Enum.NormalId.Top)
					end)
				end
			end 
		end
		spam("81116857172402")

end)

Skybox3.Size = UDim2.new(0, 60, 0, 30)
Skybox3.Position = UDim2.new(0.74, 1, 0.2, 0)
Skybox3.BackgroundColor3 = Color3.new(255,0,0)
Skybox3.BorderSizePixel = 3
Skybox3.BorderColor3 = Color3.new(255, 255, 255)
Skybox3.Text = "serverCity"
Skybox3.TextScaled = true
Skybox3.TextColor3 = Color3.new(255, 255, 255)
Skybox3.Parent = frami
Skybox3.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local char = player.Character
    local tool
    for i,v in player:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    for i,v in game.ReplicatedStorage:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    --craaa
    remote = tool.SyncAPI.ServerEndpoint
    function _(args)
        remote:InvokeServer(unpack(args))
    end
    function SetCollision(part,boolean)
        local args = {
            [1] = "SyncCollision",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CanCollide"] = boolean
                }
            }
        }
        _(args)
    end
    function SetAnchor(boolean,part)
        local args = {
            [1] = "SyncAnchor",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Anchored"] = boolean
                }
            }
        }
        _(args)
    end
    function CreatePart(cf,parent)
        local args = {
            [1] = "CreatePart",
            [2] = "Normal",
            [3] = cf,
            [4] = parent
        }
        _(args)
    end
    function DestroyPart(part)
        local args = {
            [1] = "Remove",
            [2] = {
                [1] = part
            }
        }
        _(args)
    end
    function MovePart(part,cf)
        local args = {
            [1] = "SyncMove",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CFrame"] = cf
                }
            }
        }
        _(args)
    end
    function Resize(part,size,cf)
        local args = {
            [1] = "SyncResize",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["CFrame"] = cf,
                    ["Size"] = size
                }
            }
        }
        _(args)
    end
    function AddMesh(part)
        local args = {
            [1] = "CreateMeshes",
            [2] = {
                [1] = {
                    ["Part"] = part
                }
            }
        }
        _(args)
    end

    function SetMesh(part,meshid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["MeshId"] = "rbxassetid://"..meshid
                }
            }
        }
        _(args)
    end
    function SetTexture(part, texid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["TextureId"] = "rbxassetid://"..texid
                }
            }
        }
        _(args)
    end
    function SetName(part, stringg)
        local args = {
            [1] = "SetName",
            [2] = {
                [1] = part
            },
            [3] = stringg
        }

        _(args)
    end
    function MeshResize(part,size)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Scale"] = size
                }
            }
        }
        _(args)
    end
    function Weld(part1, part2,lead)
        local args = {
            [1] = "CreateWelds",
            [2] = {
                [1] = part1,
                [2] = part2
            },
            [3] = lead
        }
        _(args)

    end
    function SetLocked(part,boolean)
        local args = {
            [1] = "SetLocked",
            [2] = {
                [1] = part
            },
            [3] = boolean
        }
        _(args)
    end
    function SetTrans(part,int)
        local args = {
            [1] = "SyncMaterial",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Transparency"] = int
                }
            }
        }
        _(args)
    end
    function CreateSpotlight(part)
        local args = {
            [1] = "CreateLights",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["LightType"] = "SpotLight"
                }
            }
        }
        _(args)
    end
    function SyncLighting(part,brightness)
        local args = {
            [1] = "SyncLighting",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["LightType"] = "SpotLight",
                    ["Brightness"] = brightness
                }
            }
        }
        _(args)
    end
    function Color(part,color)
        local args = {
            [1] = "SyncColor",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Color"] = color --[[Color3]],
                    ["UnionColoring"] = false
                }
            }
        }
        _(args)
    end
    function SpawnDecal(part,side)
        local args = {
            [1] = "CreateTextures",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal"
                }
            }
        }

        _(args)
    end
    function AddDecal(part,asset,side)
        local args = {
            [1] = "SyncTexture",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal",
                    ["Texture"] = "rbxassetid://".. asset
                }
            }
        }
        _(args)
    end

    function Sky()
        e = char.HumanoidRootPart.CFrame.x
        f = char.HumanoidRootPart.CFrame.y
        g = char.HumanoidRootPart.CFrame.z
        CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
        for i,v in game.Workspace:GetDescendants() do
            if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
                --spawn(function()
                SetName(v,"Sky")
                AddMesh(v)
                --end)
                --spawn(function()
                SetMesh(v,"111891702759441")
                SetTexture(v,"83268838358683")
                --end)
                MeshResize(v,Vector3.new(30000,30000,30000))
                SetLocked(v,true)
            end
        end
    end
    Sky()

		local player = game.Players.LocalPlayer
		local char = player.Character
		local tool
		for i,v in player:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		for i,v in game.ReplicatedStorage:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		--craaa
		remote = tool.SyncAPI.ServerEndpoint
		function _(args)
			remote:InvokeServer(unpack(args))
		end
		function SetCollision(part,boolean)
			local args = {
				[1] = "SyncCollision",
				[2] = {
					[1] = {
						["Part"] = part,
						["CanCollide"] = boolean
					}
				}
			}
			_(args)
		end
		function SetAnchor(boolean,part)
			local args = {
				[1] = "SyncAnchor",
				[2] = {
					[1] = {
						["Part"] = part,
						["Anchored"] = boolean
					}
				}
			}
			_(args)
		end
		function CreatePart(cf,parent)
			local args = {
				[1] = "CreatePart",
				[2] = "Normal",
				[3] = cf,
				[4] = parent
			}
			_(args)
		end
		function DestroyPart(part)
			local args = {
				[1] = "Remove",
				[2] = {
					[1] = part
				}
			}
			_(args)
		end
		function MovePart(part,cf)
			local args = {
				[1] = "SyncMove",
				[2] = {
					[1] = {
						["Part"] = part,
						["CFrame"] = cf
					}
				}
			}
			_(args)
		end
		function Resize(part,size,cf)
			local args = {
				[1] = "SyncResize",
				[2] = {
					[1] = {
						["Part"] = part,
						["CFrame"] = cf,
						["Size"] = size
					}
				}
			}
			_(args)
		end
		function AddMesh(part)
			local args = {
				[1] = "CreateMeshes",
				[2] = {
					[1] = {
						["Part"] = part
					}
				}
			}
			_(args)
		end
	
		function SetMesh(part,meshid)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["MeshId"] = "rbxassetid://"..meshid
					}
				}
			}
			_(args)
		end
		function SetTexture(part, texid)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["TextureId"] = "rbxassetid://"..texid
					}
				}
			}
			_(args)
		end
		function SetName(part, stringg)
			local args = {
				[1] = "SetName",
				[2] = {
					[1] = part
				},
				[3] = stringg
			}
	
			_(args)
		end
		function MeshResize(part,size)
			local args = {
				[1] = "SyncMesh",
				[2] = {
					[1] = {
						["Part"] = part,
						["Scale"] = size
					}
				}
			}
			_(args)
		end
		function Weld(part1, part2,lead)
			local args = {
				[1] = "CreateWelds",
				[2] = {
					[1] = part1,
					[2] = part2
				},
				[3] = lead
			}
			_(args)
	
		end
		function SetLocked(part,boolean)
			local args = {
				[1] = "SetLocked",
				[2] = {
					[1] = part
				},
				[3] = boolean
			}
			_(args)
		end
		function SetTrans(part,int)
			local args = {
				[1] = "SyncMaterial",
				[2] = {
					[1] = {
						["Part"] = part,
						["Transparency"] = int
					}
				}
			}
			_(args)
		end
		function CreateSpotlight(part)
			local args = {
				[1] = "CreateLights",
				[2] = {
					[1] = {
						["Part"] = part,
						["LightType"] = "SpotLight"
					}
				}
			}
			_(args)
		end
		function SyncLighting(part,brightness)
			local args = {
				[1] = "SyncLighting",
				[2] = {
					[1] = {
						["Part"] = part,
						["LightType"] = "SpotLight",
						["Brightness"] = brightness
					}
				}
			}
			_(args)
		end
		function Color(part,color)
			local args = {
				[1] = "SyncColor",
				[2] = {
					[1] = {
						["Part"] = part,
						["Color"] = color --[[Color3]],
						["UnionColoring"] = false
					}
				}
			}
			_(args)
		end
		function SpawnDecal(part,side)
			local args = {
				[1] = "CreateTextures",
				[2] = {
					[1] = {
						["Part"] = part,
						["Face"] = side,
						["TextureType"] = "Decal"
					}
				}
			}
	
			_(args)
		end
		function AddDecal(part,asset,side)
			local args = {
				[1] = "SyncTexture",
				[2] = {
					[1] = {
						["Part"] = part,
						["Face"] = side,
						["TextureType"] = "Decal",
						["Texture"] = "rbxassetid://".. asset
					}
				}
			}
			_(args)
		end
	
		function spam(id)
			for i,v in game.workspace:GetDescendants() do
				if v:IsA("BasePart") then
					spawn(function()
						SetLocked(v,false)
						SpawnDecal(v,Enum.NormalId.Front)
						AddDecal(v,id,Enum.NormalId.Front)
	
						SpawnDecal(v,Enum.NormalId.Back)
						AddDecal(v,id,Enum.NormalId.Back)
	
						SpawnDecal(v,Enum.NormalId.Right)
						AddDecal(v,id,Enum.NormalId.Right)
	
						SpawnDecal(v,Enum.NormalId.Left)
						AddDecal(v,id,Enum.NormalId.Left)
	
						SpawnDecal(v,Enum.NormalId.Bottom)
						AddDecal(v,id,Enum.NormalId.Bottom)
	
						SpawnDecal(v,Enum.NormalId.Top)
						AddDecal(v,id,Enum.NormalId.Top)
					end)
				end
			end 
		end
		spam("83268838358683")
end)

Realm.Size = UDim2.new(0, 60, 0, 30)
Realm.Position = UDim2.new(0.74, 1, 0.3, 0)
Realm.BackgroundColor3 = Color3.new(255,0,0)
Realm.BorderSizePixel = 3
Realm.BorderColor3 = Color3.new(255, 255, 255)
Realm.Text = "T0qu1nzZ & g00by'z realm"
Realm.TextScaled = true
Realm.TextColor3 = Color3.new(255, 255, 255)
Realm.Parent = frami
Realm.MouseButton1Click:Connect(function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
	RequestCommand:InvokeServer(";btools me")
	wait(0.4)
	RequestCommand:InvokeServer(";punish all")
	wait(0.1)
	local player = game.Players.LocalPlayer
	local char = player.Character
	local backpack = player.Backpack

	local function getf3x()
		for _, v in ipairs(backpack:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end
		for _, v in ipairs(char:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end

		return nil
	end
	local f3x = getf3x()
	if not f3x then
		warn("you dont have f3x skid")
	end
	local syncapi = f3x.SyncAPI
	local serverendpoint = syncapi.ServerEndpoint

	local function delete(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function deleteall()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("UnionOperation") then
				spawn(function()
					delete(v)
				end)
			end
		end
	end

	deleteall()

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
	RequestCommand:InvokeServer(";fogcolor black ;time")
	local player = game.Players.LocalPlayer
	local char = player.Character
	local backpack = player.Backpack

	local function getf3x()
		for _, v in ipairs(backpack:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end
		for _, v in ipairs(char:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end

		return nil
	end
	local f3x = getf3x()
	if not f3x then
		warn("you dont have f3x skid")
	end
	local syncapi = f3x.SyncAPI
	local serverendpoint = syncapi.ServerEndpoint

	local function resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmaterial(part,mate,trans)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Material"] = mate
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end
	local function transparency(part,trans)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = trans
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function color(part, color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmeshid(part, id)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..id
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function makemesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmeshsize(part, vectora)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = vectora
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmeshtexture(part, id)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] =	"rbxassetid://"..id
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function name(part, stringa)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringa
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function lock(part, boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function setcollision(part, booleana)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = booleana
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function setanchor(part, boolean)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function createdecal(part, side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end
	local function setdecal(part, asset, side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function makerealmbase()
		local position = CFrame.new(0, 0, 0)
		local base = serverendpoint:InvokeServer("CreatePart", "Normal", position, workspace)
		resize(base, Vector3.new(300,1,300), position)
		syncmaterial(base, Enum.Material.Concrete)
		color(base, Color3.new(0.348540, 0.348540, 0.348540))
		name(base, "dahki")
		lock(base, true)

		local spawnpos = CFrame.new(0, 0.5, 0)
		local spawna = serverendpoint:InvokeServer("CreatePart", "Spawn", spawnpos, workspace)
		resize(spawna, Vector3.new(20, 0.01, 20), spawnpos)
		name(spawna, "SpawnLocation")
		lock(spawna, true)

		createdecal(spawna, Enum.NormalId.Top)
		setdecal(spawna, "106230840214648", Enum.NormalId.Top) -- ganti decalnya pake decal lu
		transparency(spawna, 1)

		local pos = CFrame.new(40, 12, 0)

		local rules = serverendpoint:InvokeServer("CreatePart", "Normal", pos, workspace)

		transparency(rules, 1)
		setcollision(rules, true)
		createdecal(rules, Enum.NormalId.Left)
		setdecal(rules, "83268838358683", Enum.NormalId.Left)
		color(rules, Color3.new(1, 1, 1))
		resize(rules, Vector3.new(4, 23, 37), pos)


		local pos = CFrame.new(-35, 12, 0)

		local bad = serverendpoint:InvokeServer("CreatePart", "Normal", pos, workspace)

		transparency(bad, 1)
		setcollision(bad, true)
		createdecal(bad, Enum.NormalId.Right)
		setdecal(bad, "98583126191222", Enum.NormalId.Right)
		resize(bad, Vector3.new(4, 23, 37), pos)

	end

	




	local function unanchorall()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("UnionOperation") then
				spawn(function()
					setanchor(v, false)
				end)
			end
		end
	end

	local function realm()
		makerealmbase()
	end

	realm()

	RequestCommand:InvokeServer(";res all")
	wait(0.3)
	RequestCommand:InvokeServer(";r6 all")
	RequestCommand:InvokeServer(";time 14")
	RequestCommand:InvokeServer(";music 6018028320 ;volume inf")
	wait(9.5)
	RequestCommand:InvokeServer(";unmusic")
end)
TrippySky.Size = UDim2.new(0, 60, 0, 30)
TrippySky.Position = UDim2.new(0.02, 1, 0.3, 0)
TrippySky.BackgroundColor3 = Color3.new(255,0,0)
TrippySky.BorderSizePixel = 3
TrippySky.BorderColor3 = Color3.new(255, 255, 255)
TrippySky.Text = "Trippy Sky"
TrippySky.TextScaled = true
TrippySky.TextColor3 = Color3.new(255, 255, 255)
TrippySky.Parent = frami
TrippySky.MouseButton1Click:Connect(function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

--[[ 
ok vro cuz my script have errors with getgenv and obfuscators not working,here the source.
== Epik spinning sky f3x By ItsKittyyyGD ==
Dont skid and give credit plz
also reuploaded cuz scriptblox put my script on scripts f3x of 2024 
]]
-- { SOURCE: } --


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local tool

for _, obj in player:GetDescendants() do
	if obj.Name == "SyncAPI" then
		tool = obj.Parent
	end
end

for _, obj in game.ReplicatedStorage:GetDescendants() do
	if obj.Name == "SyncAPI" then
		tool = obj.Parent
	end
end

local SyncAPI = tool.SyncAPI
local part
local baseCF
local angle = 0
local connection

local function _(args)
	SyncAPI:Invoke(unpack(args))
end

local function CreatePart(cf, parent)
	local args = {
		[1] = "CreatePart",
		[2] = "Normal",
		[3] = cf,
		[4] = parent
	}
	_(args)
end

local function SetAnchor(p, anchored)
	local args = {
		[1] = "SyncAnchor",
		[2] = {
			[1] = {
				["Part"] = p,
				["Anchored"] = anchored
			}
		}
	}
	_(args)
end

local function AddMesh(p)
	local args = {
		[1] = "CreateMeshes",
		[2] = {
			[1] = {
				["Part"] = p
			}
		}
	}
	_(args)
end

local function SetMesh(p, meshId)
	local args = {
		[1] = "SyncMesh",
		[2] = {
			[1] = {
				["Part"] = p,
				["MeshId"] = "rbxassetid://"..meshId
			}
		}
	}
	_(args)
end

local function SetTexture(p, textureId)
	local args = {
		[1] = "SyncMesh",
		[2] = {
			[1] = {
				["Part"] = p,
				["TextureId"] = textureId
			}
		}
	}
	_(args)
end

local function ResizeMesh(p, size)
	local args = {
		[1] = "SyncMesh",
		[2] = {
			[1] = {
				["Part"] = p,
				["Scale"] = size
			}
		}
	}
	_(args)
end

local function SetTransparency(p, value)
	local args = {
		[1] = "SyncTransparency",
		[2] = {
			[1] = {
				["Part"] = p,
				["Transparency"] = value
			}
		}
	}
	_(args)
end

local function SyncRotate(cf)
	if not part or not part.Parent then return end
	local args = {
		[1] = "SyncRotate",
		[2] = {
			[1] = {
				["Part"] = part,
				["CFrame"] = cf
			}
		}
	}
	_(args)
end

local function Sky()
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	local startCF = hrp.CFrame + Vector3.new(0,6,0)
	CreatePart(startCF, workspace)
	for _, obj in workspace:GetDescendants() do
		if obj:IsA("BasePart") and (obj.Position - startCF.Position).Magnitude < 0.1 then
			part = obj
			baseCF = part.CFrame
			SetAnchor(part,true)
			AddMesh(part)
			SetMesh(part,"111891702759441")
			SetTexture(part,"rbxassetid://98583126191222")
			ResizeMesh(part, Vector3.new(9000,9000,9000))
			SetTransparency(part,0)
           -- i think you taking this so give credit
			local rotation = math.rad(90)
			connection = RunService.Heartbeat:Connect(function(dt)
				if not part or not part.Parent then
					if connection then
						connection:Disconnect()
						connection = nil
					end
					return
				end
				angle += rotation * dt
				local cf = baseCF * CFrame.Angles(1, angle, 1)
				SyncRotate(cf)
				part.CFrame = cf
			end)
			break
		end
	end
end

Sky()
end)

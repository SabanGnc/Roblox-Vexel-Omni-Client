local a=game:GetService("CoreGui")
local b=game:GetService("Players")
local c=game:GetService("RunService")
local d=game:GetService("TweenService")
local e=game:GetService("UserInputService")
local f=game:GetService("Workspace")
local g=game:GetService("HttpService")
local h=game:GetService("VirtualUser")
local i=game:GetService("StarterGui")
local j=game:GetService("TeleportService")
local lg=game:GetService("Lighting")
local st=game:GetService("Stats")
local k=b.LocalPlayer

k.Idled:Connect(function()h:CaptureController()h:ClickButton2(Vector2.new())end)
local function l(m,n)pcall(function()i:SetCore("SendNotification",{Title=m,Text=n,Duration=3})end)end

if a:FindFirstChild("VexelOmni")then a.VexelOmni:Destroy()end
if f:FindFirstChild("VexelPathFolder")then f.VexelPathFolder:Destroy()end

local o=Instance.new("Folder")o.Name="VexelPathFolder"o.Parent=f

local p=Instance.new("ScreenGui")p.Name="VexelOmni"p.ResetOnSpawn=false
pcall(function()p.Parent=a end)
if not p.Parent then p.Parent=k:WaitForChild("PlayerGui")end

e.InputBegan:Connect(function(q,r)if not r and q.KeyCode==Enum.KeyCode.F1 then p.Enabled=not p.Enabled end end)

local s=Instance.new("Frame")
s.Size=UDim2.new(0,720,0,480)
s.Position=UDim2.new(0.5,-360,0.5,-240)
s.BackgroundColor3=Color3.fromRGB(12,12,16)
s.BorderSizePixel=0
s.ClipsDescendants=true
s.Parent=p
Instance.new("UICorner",s).CornerRadius=UDim.new(0,12)

local t=Instance.new("UIStroke",s)t.Color=Color3.fromRGB(100,50,255)t.Thickness=2
local uG=Instance.new("UIGradient",s)
uG.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(18,18,25)),ColorSequenceKeypoint.new(1,Color3.fromRGB(8,8,12))}
uG.Rotation=45

local u=Instance.new("Frame")u.Size=UDim2.new(1,0,0,45)u.BackgroundTransparency=1 u.Parent=s
local v=Instance.new("TextLabel")
v.Size=UDim2.new(1,-30,1,0)v.Position=UDim2.new(0,30,0,0)v.BackgroundTransparency=1
v.Text="⚡ VEXEL OMNI CLIENT | [F1] Toggle Menu"
v.TextColor3=Color3.fromRGB(230,230,255)
v.Font=Enum.Font.GothamBlack v.TextSize=16 v.TextXAlignment=Enum.TextXAlignment.Left v.Parent=u

local w,x,y,z
u.InputBegan:Connect(function(A)if A.UserInputType==Enum.UserInputType.MouseButton1 or A.UserInputType==Enum.UserInputType.Touch then w=true y=A.Position z=s.Position end end)
u.InputEnded:Connect(function(A)if A.UserInputType==Enum.UserInputType.MouseButton1 or A.UserInputType==Enum.UserInputType.Touch then w=false end end)
e.InputChanged:Connect(function(A)if A.UserInputType==Enum.UserInputType.MouseMovement or A.UserInputType==Enum.UserInputType.Touch then if w then local B=A.Position-y s.Position=UDim2.new(z.X.Scale,z.X.Offset+B.X,z.Y.Scale,z.Y.Offset+B.Y)end end end)

local bB=Instance.new("Frame")
bB.Size=UDim2.new(1,0,0,30)bB.Position=UDim2.new(0,0,1,-30)
bB.BackgroundColor3=Color3.fromRGB(8,8,12)bB.BorderSizePixel=0 bB.Parent=s
local sT=Instance.new("TextLabel",bB)
sT.Size=UDim2.new(1,-20,1,0)sT.Position=UDim2.new(0,10,0,0)sT.BackgroundTransparency=1
sT.TextColor3=Color3.fromRGB(150,150,180)sT.Font=Enum.Font.Code sT.TextSize=12
sT.TextXAlignment=Enum.TextXAlignment.Left sT.Text="Yükleniyor..."

local C=Instance.new("Frame")
C.Size=UDim2.new(0,210,1,-75)C.Position=UDim2.new(0,0,0,45)
C.BackgroundColor3=Color3.fromRGB(16,16,22)C.BorderSizePixel=0 C.Parent=s
Instance.new("UICorner",C).CornerRadius=UDim.new(0,10)

local pro=Instance.new("Frame",C)
pro.Size=UDim2.new(1,0,0,70)pro.BackgroundTransparency=1
local av=Instance.new("ImageLabel",pro)
av.Size=UDim2.new(0,46,0,46)av.Position=UDim2.new(0,12,0,12)av.BackgroundColor3=Color3.fromRGB(30,30,40)
local thum,rA=pcall(function()return b:GetUserThumbnailAsync(k.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)end)
av.Image=thum and rA or "" Instance.new("UICorner",av).CornerRadius=UDim.new(1,0)

local dN=Instance.new("TextLabel",pro)
dN.Size=UDim2.new(1,-70,0,20)dN.Position=UDim2.new(0,68,0,16)dN.BackgroundTransparency=1
dN.Text=k.DisplayName dN.TextColor3=Color3.fromRGB(255,255,255)
dN.Font=Enum.Font.GothamBold dN.TextSize=14 dN.TextXAlignment=Enum.TextXAlignment.Left

local uN=Instance.new("TextLabel",pro)
uN.Size=UDim2.new(1,-70,0,15)uN.Position=UDim2.new(0,68,0,38)uN.BackgroundTransparency=1
uN.Text="@"..k.Name uN.TextColor3=Color3.fromRGB(150,150,180)
uN.Font=Enum.Font.GothamMedium uN.TextSize=11 uN.TextXAlignment=Enum.TextXAlignment.Left

local div=Instance.new("Frame",C)
div.Size=UDim2.new(0.9,0,0,1)div.Position=UDim2.new(0.05,0,0,75)
div.BackgroundColor3=Color3.fromRGB(40,40,60)div.BorderSizePixel=0

local D=Instance.new("UIListLayout",C)D.SortOrder=Enum.SortOrder.LayoutOrder D.Padding=UDim.new(0,6)
local E=Instance.new("UIPadding",C)E.PaddingTop=UDim.new(0,85)E.PaddingLeft=UDim.new(0,10)

local F=Instance.new("Frame")
F.Size=UDim2.new(1,-210,1,-75)F.Position=UDim2.new(0,210,0,45)
F.BackgroundTransparency=1 F.Parent=s
local G=Instance.new("Folder")G.Name="Pages"G.Parent=F

local H,I=nil,nil
local function J(K,L,M)
    local N=Instance.new("TextButton")
    N.Size=UDim2.new(0,190,0,38)N.BackgroundColor3=Color3.fromRGB(20,20,30)
    N.Text=" "..L.."  "..K N.TextColor3=Color3.fromRGB(180,180,200)
    N.Font=Enum.Font.GothamSemibold N.TextSize=13 N.TextXAlignment=Enum.TextXAlignment.Left
    N.AutoButtonColor=false N.LayoutOrder=M N.Parent=C
    Instance.new("UICorner",N).CornerRadius=UDim.new(0,8)
    local O=Instance.new("ScrollingFrame")
    O.Size=UDim2.new(1,0,1,0)O.BackgroundTransparency=1 O.BorderSizePixel=0
    O.ScrollBarThickness=3 O.ScrollBarImageColor3=Color3.fromRGB(100,50,255)O.Visible=false O.Parent=G
    local P=Instance.new("UIListLayout",O)P.SortOrder=Enum.SortOrder.LayoutOrder P.Padding=UDim.new(0,8)P.HorizontalAlignment=Enum.HorizontalAlignment.Center
    local Q=Instance.new("UIPadding",O)Q.PaddingTop=UDim.new(0,15)Q.PaddingBottom=UDim.new(0,15)
    N.MouseButton1Click:Connect(function()
        if H then d:Create(H,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(20,20,30),TextColor3=Color3.fromRGB(180,180,200)}):Play()I.Visible=false end
        H=N I=O d:Create(N,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(100,50,255),TextColor3=Color3.fromRGB(255,255,255)}):Play()O.Visible=true
    end)
    if M==1 then H=N I=O N.BackgroundColor3=Color3.fromRGB(100,50,255)N.TextColor3=Color3.fromRGB(255,255,255)O.Visible=true end
    return O
end

local R=J("Makro Motoru","🎬",1)
local S=J("Fizik & Hareket","🏃",2)
local T=J("Otomasyonlar","⚙️",3)
local CBT=J("Savaş & Troll","⚔️",4)
local ESP=J("Görsel/ESP","👁️",5)
local U=J("Sistem/Veri","💾",6)

local function V(W,X,Y,Z)
    local _=Instance.new("TextButton")_.Size=UDim2.new(0.92,0,0,45)_.BackgroundColor3=Y
    _.Text=X _.TextColor3=Color3.fromRGB(255,255,255)_.Font=Enum.Font.GothamBold _.TextSize=14
    _.AutoButtonColor=false _.Parent=W Instance.new("UICorner",_).CornerRadius=UDim.new(0,8)
    local st=Instance.new("UIStroke",_)st.Color=Color3.new(1,1,1)st.Transparency=0.8 st.Thickness=1
    _.MouseEnter:Connect(function()d:Create(_,TweenInfo.new(0.3),{BackgroundColor3=Y:Lerp(Color3.new(1,1,1),0.2)}):Play()end)
    _.MouseLeave:Connect(function()d:Create(_,TweenInfo.new(0.3),{BackgroundColor3=Y}):Play()end)
    _.MouseButton1Click:Connect(Z)return _
end

local a1={}
local a2,a3,a5,a6,a9,b1,bC,bE,bM,bF,bS,bJ,bAF,bH,bAn=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false
local a4,a7=true,true local a8="Walk" local b2,b3=nil,0 local extS,extJ=16,50 local sStart=tick()

local function b4()local b5=k.Character or k.CharacterAdded:Wait()return b5:WaitForChild("Humanoid",3),b5:WaitForChild("HumanoidRootPart",3)end
local function b6(b7)local b8=Instance.new("Part")b8.Size=Vector3.new(0.8,0.8,0.8)b8.Position=b7-Vector3.new(0,2.5,0)b8.Anchored=true b8.CanCollide=false b8.Material=Enum.Material.Neon b8.Color=Color3.fromRGB(100,50,255)b8.Shape=Enum.PartType.Ball b8.Transparency=a7 and 0.2 or 1 b8.Parent=o end
local function b9(c1)if not a6 then return end for _,c3 in ipairs(f:GetDescendants())do if c3:IsA("ProximityPrompt")and c3.Enabled and(c3.Parent.Position-c1).Magnitude<=c3.MaxActivationDistance then fireproximityprompt(c3)end end end
local function Mag(c1)if not bM then return end for _,to in ipairs(f:GetChildren())do if to:IsA("Tool")and to:FindFirstChild("Handle")then to.Handle.CFrame=CFrame.new(c1)end end end
local function d1(d2,d3)if not b1 then return false end local d4=RaycastParams.new()d4.FilterDescendantsInstances={k.Character,o}d4.FilterType=Enum.RaycastFilterType.Exclude local d5=f:Raycast(d2.Position,d2.CFrame.LookVector*4,d4)if d5 and d5.Instance and d5.Instance.CanCollide then d3.Jump=true return true end return false end

V(R,"🔴 YENİ ROTA KAYDET",Color3.fromRGB(220,40,70),function()
    if a3 or a2 then return end local e1,e2=b4()a2=true l("Kayıt Başladı","Adımlar kaydediliyor.")
    a1={}o:ClearAllChildren()local e3=e2.Position b3=tick()table.insert(a1,{a="walk",x=e3.X,y=e3.Y,z=e3.Z})b6(e3)
    e1.StateChanged:Connect(function(_,e5)if a2 and e5==Enum.HumanoidStateType.Jumping then table.insert(a1,{a="jump"})end end)
    b2=c.Heartbeat:Connect(function()
        local e6=e2.Position if(e6-e3).Magnitude>3.5 then local e7=tick()-b3 if e7>0.3 then table.insert(a1,{a="wait",t=e7})end e3=e6 b3=tick()table.insert(a1,{a="walk",x=e3.X,y=e3.Y,z=e3.Z})b6(e3)end
        if a9 then h:ClickButton1(Vector2.new())end Mag(e2.Position)
    end)
end)

local function f1(f2)
    if a2 or a3 or #a1==0 then return end local f3,f4=b4()a3=true l("Oynatılıyor","Omni Engine Aktif.")
    local f5=f3.WalkSpeed
    task.spawn(function()
        while a3 do
            if a5 and a8=="Walk"then f3.WalkSpeed=extS end
            local f6,f7,f8=1,#a1,1 if f2 then f6,f7,f8=#a1,1,-1 end
            for f9=f6,f7,f8 do
                if not a3 then break end local g1=a1[f9]local g2,g3=b4()
                if a9 then h:ClickButton1(Vector2.new())end Mag(g3.Position)
                if g1.a=="walk"then
                    local g4=Vector3.new(g1.x,g1.y,g1.z)d1(g3,g2)
                    if a8=="Walk"then g2:MoveTo(g4)local g5=tick()+4 repeat task.wait(0.05)b9(g3.Position)if a9 then h:ClickButton1(Vector2.new())end d1(g3,g2)Mag(g3.Position)until(g3.Position-g4).Magnitude<3.5 or tick()>g5 or not a3
                    elseif a8=="Teleport"then g3.CFrame=CFrame.new(g4)b9(g4)task.wait(0.05)
                    elseif a8=="Glide" or a8=="Fly"then local ff=nil if a8=="Fly"then ff=Instance.new("BodyVelocity",g3)ff.Velocity=Vector3.new(0,0,0)end local g6=(g3.Position-g4).Magnitude/50 local g7=d:Create(g3,TweenInfo.new(g6,Enum.EasingStyle.Linear),{CFrame=CFrame.new(g4)})g7:Play()b9(g4)g7.Completed:Wait()if a8=="Fly"and ff then ff:Destroy()end end
                elseif g1.a=="jump"then g2.Jump=true task.wait(0.1)elseif g1.a=="wait"then task.wait(g1.t)end
            end
            if not a4 then a3=false break end if f2 and a4 then f2=false elseif not f2 and a4 and k.Character then f2=true end
        end
        local h1=k.Character and k.Character:FindFirstChild("Humanoid")if h1 then h1.WalkSpeed=f5 end
    end)
end

V(R,"▶️ İLERİ OYNAT",Color3.fromRGB(50,200,100),function()f1(false)end)
V(R,"⏪ GERİ SARARAK OYNAT",Color3.fromRGB(60,140,220),function()f1(true)end)
V(R,"⏹️ HER ŞEYİ DURDUR",Color3.fromRGB(220,100,40),function()a2,a3=false,false if b2 then b2:Disconnect()end local i1=k.Character and k.Character:FindFirstChild("Humanoid")if i1 then i1:MoveTo(k.Character.HumanoidRootPart.Position)end end)

local j1=V(S,"Mod: FİZİKSEL YÜRÜME",Color3.fromRGB(60,60,80),function()end)
j1.MouseButton1Click:Connect(function()
    if a8=="Walk"then a8="Teleport" j1.Text="Mod: IŞINLANMA (TP)" j1.BackgroundColor3=Color3.fromRGB(160,50,230)
    elseif a8=="Teleport"then a8="Glide" j1.Text="Mod: GLIDE (KAYMA)" j1.BackgroundColor3=Color3.fromRGB(50,160,230)
    elseif a8=="Glide"then a8="Fly" j1.Text="Mod: FLY (UÇMA)" j1.BackgroundColor3=Color3.fromRGB(230,190,50)
    else a8="Walk" j1.Text="Mod: FİZİKSEL YÜRÜME" j1.BackgroundColor3=Color3.fromRGB(60,60,80)end
end)

V(S,"⚡ YÜRÜME HIZI: +5",Color3.fromRGB(40,140,80),function()extS=extS+5 l("Hız",extS)local hh=k.Character and k.Character:FindFirstChild("Humanoid")if hh then hh.WalkSpeed=extS end end)
V(S,"⚡ YÜRÜME HIZI: -5",Color3.fromRGB(140,60,60),function()extS=extS-5 l("Hız",extS)local hh=k.Character and k.Character:FindFirstChild("Humanoid")if hh then hh.WalkSpeed=extS end end)
V(S,"🦘 ZIPLAMA GÜCÜ: +10",Color3.fromRGB(80,120,200),function()extJ=extJ+10 l("Zıplama",extJ)local hh=k.Character and k.Character:FindFirstChild("Humanoid")if hh then hh.JumpPower=extJ hh.UseJumpPower=true end end)

local j2=V(T,"Döngü (Loop): AÇIK",Color3.fromRGB(100,80,220),function()end)j2.MouseButton1Click:Connect(function()a4=not a4 j2.Text=a4 and "Döngü (Loop): AÇIK" or "Döngü (Loop): KAPALI"end)
local bN=V(T,"Noclip (Duvar Geçme): KAPALI",Color3.fromRGB(180,80,80),function()end)bN.MouseButton1Click:Connect(function()bF=not bF bN.Text=bF and "Noclip (Duvar Geçme): AÇIK" or "Noclip (Duvar Geçme): KAPALI"end)
local k1=V(T,"Oto-Etkileşim (E): KAPALI",Color3.fromRGB(230,140,50),function()end)k1.MouseButton1Click:Connect(function()a6=not a6 k1.Text=a6 and "Oto-Etkileşim (E): AÇIK" or "Oto-Etkileşim (E): KAPALI"end)
local k2=V(T,"Oto-Sol Tık (Clicker): KAPALI",Color3.fromRGB(220,90,90),function()end)k2.MouseButton1Click:Connect(function()a9=not a9 k2.Text=a9 and "Oto-Sol Tık (Clicker): AÇIK" or "Oto-Sol Tık (Clicker): KAPALI"end)
local k3=V(T,"Akıllı Zıplama: KAPALI",Color3.fromRGB(80,220,140),function()end)k3.MouseButton1Click:Connect(function()b1=not b1 k3.Text=b1 and "Akıllı Zıplama: AÇIK" or "Akıllı Zıplama: KAPALI"end)
local k4=V(T,"Item Magnet: KAPALI",Color3.fromRGB(200,100,240),function()end)k4.MouseButton1Click:Connect(function()bM=not bM k4.Text=bM and "Item Magnet: AÇIK" or "Item Magnet: KAPALI"end)

local k5=V(CBT,"🌪️ Spinbot (Anti-Aim): KAPALI",Color3.fromRGB(180,70,70),function()end)k5.MouseButton1Click:Connect(function()bS=not bS k5.Text=bS and "🌪️ Spinbot (Anti-Aim): AÇIK" or "🌪️ Spinbot (Anti-Aim): KAPALI"end)
local afBtn=V(CBT,"🛡️ Anti-Fling: KAPALI",Color3.fromRGB(120,120,180),function()end)afBtn.MouseButton1Click:Connect(function()bAF=not bAF afBtn.Text=bAF and "🛡️ Anti-Fling: AÇIK" or "🛡️ Anti-Fling: KAPALI"end)
local hbBtn=V(CBT,"🎯 Dev Hitbox Modu: KAPALI",Color3.fromRGB(200,50,100),function()end)hbBtn.MouseButton1Click:Connect(function()bH=not bH hbBtn.Text=bH and "🎯 Dev Hitbox Modu: AÇIK" or "🎯 Dev Hitbox Modu: KAPALI"end)
local anBtn=V(CBT,"🕵️ Anonim Mod (Streamer): KAPALI",Color3.fromRGB(40,40,40),function()end)
anBtn.MouseButton1Click:Connect(function()
    bAn=not bAn anBtn.Text=bAn and "🕵️ Anonim Mod (Streamer): AÇIK" or "🕵️ Anonim Mod (Streamer): KAPALI"
    if bAn then dN.Text="[ ANONİM MOD AÇIK ]" uN.Text="@hidden" av.Image="" else dN.Text=k.DisplayName uN.Text="@"..k.Name av.Image=thum and rA or "" end
end)

local fvBtn=V(CBT,"🔭 Geniş Açı (FOV): KAPALI",Color3.fromRGB(60,160,160),function()end)
fvBtn.MouseButton1Click:Connect(function()
    if f.CurrentCamera.FieldOfView==70 then f.CurrentCamera.FieldOfView=120 fvBtn.Text="🔭 Geniş Açı (FOV): 120"fvBtn.BackgroundColor3=Color3.fromRGB(60,200,200)
    else f.CurrentCamera.FieldOfView=70 fvBtn.Text="🔭 Geniş Açı (FOV): KAPALI"fvBtn.BackgroundColor3=Color3.fromRGB(60,160,160)end
end)

local es1=V(ESP,"Oyuncu ESP: KAPALI",Color3.fromRGB(240,80,80),function()end)es1.MouseButton1Click:Connect(function()bE=not bE es1.Text=bE and "Oyuncu ESP: AÇIK" or "Oyuncu ESP: KAPALI"end)
local es3=V(ESP,"RGB Arayüz (Chroma): KAPALI",Color3.fromRGB(80,240,180),function()end)es3.MouseButton1Click:Connect(function()bC=not bC es3.Text=bC and "RGB Arayüz (Chroma): AÇIK" or "RGB Arayüz (Chroma): KAPALI"end)
local es4=V(ESP,"Sonsuz Zıplama: KAPALI",Color3.fromRGB(140,140,240),function()end)es4.MouseButton1Click:Connect(function()bJ=not bJ es4.Text=bJ and "Sonsuz Zıplama: AÇIK" or "Sonsuz Zıplama: KAPALI"end)
V(ESP,"🌞 SÜREKLİ GÜNDÜZ",Color3.fromRGB(220,200,60),function()lg.ClockTime=12 end)V(ESP,"🌚 SÜREKLİ GECE",Color3.fromRGB(50,50,100),function()lg.ClockTime=0 end)
V(ESP,"🚀 FPS BOOSTER",Color3.fromRGB(255,140,30),function()l("FPS Booster","Grafikler silindi!")lg.GlobalShadows=false lg.FogEnd=9e9 for _,v in ipairs(f:GetDescendants())do if v:IsA("BasePart")then v.Material=Enum.Material.SmoothPlastic elseif v:IsA("Decal")or v:IsA("Texture")then v:Destroy()end end end)

e.InputBegan:Connect(function(q,r)if not r and q.KeyCode==Enum.KeyCode.Q then local hr=k.Character and k.Character:FindFirstChild("HumanoidRootPart")if hr then hr.CFrame=hr.CFrame*CFrame.new(0,0,-25)end end end)
e.JumpRequest:Connect(function()if bJ and k.Character and k.Character:FindFirstChild("Humanoid")then k.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)end end)

c.Stepped:Connect(function()
    if bF and k.Character then for _,v in ipairs(k.Character:GetDescendants())do if v:IsA("BasePart")then v.CanCollide=false end end end
    if bAF and k.Character and k.Character:FindFirstChild("HumanoidRootPart")then local hr=k.Character.HumanoidRootPart if hr.Velocity.Magnitude>250 or hr.RotVelocity.Magnitude>250 then hr.Velocity=Vector3.new(0,0,0)hr.RotVelocity=Vector3.new(0,0,0)end end
end)

local lS=tick()
c.RenderStepped:Connect(function(dt)
    if tick()-lS>=0.5 then
        local fp=math.floor(1/dt)local pi=math.floor(st.Network.ServerStatsItem["Data Ping"]:GetValue())
        local sDur=math.floor(tick()-sStart)local min=math.floor(sDur/60)local sec=sDur%60
        sT.Text=string.format("  📡 PING: %dms  |  🚀 FPS: %d  |  ⏱️ SÜRE: %02d:%02d  |  📍 ADIM: %d",pi,fp,min,sec,#a1)
        lS=tick()
    end
end)

c.Heartbeat:Connect(function()
    if bS and k.Character and k.Character:FindFirstChild("HumanoidRootPart")then k.Character.HumanoidRootPart.CFrame=k.Character.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(45),0)end
    if bC then local hu=tick()%5/5 t.Color=Color3.fromHSV(hu,1,1)v.TextColor3=Color3.fromHSV(hu,0.5,1)uG.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromHSV(hu,0.8,0.2)),ColorSequenceKeypoint.new(1,Color3.fromRGB(8,8,12))}else t.Color=Color3.fromRGB(100,50,255)v.TextColor3=Color3.fromRGB(230,230,255)uG.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(18,18,25)),ColorSequenceKeypoint.new(1,Color3.fromRGB(8,8,12))}end
    for _,pl in ipairs(b:GetPlayers())do
        if pl~=k and pl.Character then
            if bE then if not pl.Character:FindFirstChild("ZESP")then local hl=Instance.new("Highlight")hl.Name="ZESP"hl.FillColor=Color3.fromRGB(100,50,255)hl.OutlineColor=Color3.fromRGB(255,255,255)hl.Parent=pl.Character end else if pl.Character:FindFirstChild("ZESP")then pl.Character.ZESP:Destroy()end end
            if bH and pl.Character:FindFirstChild("HumanoidRootPart")then pl.Character.HumanoidRootPart.Size=Vector3.new(15,15,15)pl.Character.HumanoidRootPart.Transparency=0.6 pl.Character.HumanoidRootPart.CanCollide=false else if pl.Character:FindFirstChild("HumanoidRootPart")then pl.Character.HumanoidRootPart.Size=Vector3.new(2,2,1)pl.Character.HumanoidRootPart.Transparency=1 end end
        end
    end
end)

local l1="VexelOmni_Data.json"
V(U,"💾 ROTAYI KAYDET",Color3.fromRGB(60,160,160),function()if#a1>0 and isfunction(writefile)then pcall(function()writefile(l1,g:JSONEncode(a1))end)l("Başarılı","Kaydedildi.")end end)
V(U,"📂 ROTAYI YÜKLE",Color3.fromRGB(160,100,160),function()if isfunction(readfile)and isfile and isfile(l1)then local m1,m2=pcall(function()return readfile(l1)end)if m1 and m2 then a1=g:JSONDecode(m2)o:ClearAllChildren()for _,m4 in ipairs(a1)do if m4.a=="walk"then b6(Vector3.new(m4.x,m4.y,m4.z))end end l("Yüklendi",#a1.." adım.")end end end)
local l2=V(U,"👁️ ÇİZGİLERİ GÖSTER",Color3.fromRGB(120,90,120),function()a7=not a7 l2.Text=a7 and "👁️ ÇİZGİLERİ GÖSTER" or "👁️ ÇİZGİLERİ GİZLE"for _,m6 in ipairs(o:GetChildren())do m6.Transparency=a7 and 0.2 or 1 end end)
V(U,"🔄 SUNUCU DEĞİŞTİR (HOP)",Color3.fromRGB(240,80,80),function()j:Teleport(game.PlaceId,k)end)
V(U,"♻️ AYNI SUNUCUYA REJOIN",Color3.fromRGB(220,140,70),function()j:TeleportToPlaceInstance(game.PlaceId,game.JobId,k)end)
V(U,"🗑️ HAFIZAYI SİL",Color3.fromRGB(220,70,70),function()a1={}o:ClearAllChildren()end)
l("Vexel Omni","Premium Arayüz Yüklendi.")

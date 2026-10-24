local P,S,R,L,C=game:GetService("Players"),game:GetService("UserInputService"),game:GetService("RunService"),game:GetService("Players").LocalPlayer,workspace.CurrentCamera
local V,TS=game:GetService("VirtualUser"),game:GetService("TweenService")
local Http = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

local PG=L:WaitForChild("PlayerGui")
repeat task.wait() until PG~=nil

local G=Instance.new("ScreenGui",CoreGui);G.Name="PrisonLife_Helper";G.ResetOnSpawn=false;G.IgnoreGuiInset=true;G.DisplayOrder=9999999

-- ==== АНИМАЦИЯ (ИСПРАВЛЕННАЯ) ====
local Sp=Instance.new("Frame",G);Sp.Size=UDim2.new(1,0,1,0);Sp.BackgroundColor3=Color3.fromRGB(8,8,12);Sp.BorderSizePixel=0;Sp.ZIndex=100;Sp.BackgroundTransparency=0

local IntroText = Instance.new("TextLabel", Sp)
IntroText.Size = UDim2.new(1,0,0,120); IntroText.Position = UDim2.new(0,0,0.5,-120)
IntroText.BackgroundTransparency = 1; IntroText.Text = "KillerKC2 owners"
IntroText.TextColor3 = Color3.fromRGB(255, 50, 50); IntroText.Font = Enum.Font.GothamBlack; IntroText.TextSize = 40
IntroText.TextTransparency = 1; IntroText.TextStrokeTransparency = 1; IntroText.ZIndex = 101

local IntroSub = Instance.new("TextLabel", Sp)
IntroSub.Size = UDim2.new(1,0,0,50); IntroSub.Position = UDim2.new(0,0,0.5,0)
IntroSub.BackgroundTransparency = 1; IntroSub.Text = "Helper Hub"
IntroSub.TextColor3 = Color3.fromRGB(255, 215, 0); IntroSub.Font = Enum.Font.GothamBold; IntroSub.TextSize = 28
IntroSub.TextTransparency = 1; IntroSub.TextStrokeTransparency = 1; IntroSub.ZIndex = 101

local IntroTg = Instance.new("TextLabel", Sp)
IntroTg.Size = UDim2.new(1,0,0,30); IntroTg.Position = UDim2.new(0,0,0.5,60)
IntroTg.BackgroundTransparency = 1; IntroTg.Text = "Tg: f5b8n2"
IntroTg.TextColor3 = Color3.fromRGB(180, 180, 200); IntroTg.Font = Enum.Font.Gotham; IntroTg.TextSize = 18
IntroTg.TextTransparency = 1; IntroTg.ZIndex = 101

TS:Create(IntroText, TweenInfo.new(0.5), {TextTransparency=0, TextStrokeTransparency=0.5}):Play()
TS:Create(IntroSub, TweenInfo.new(0.5), {TextTransparency=0, TextStrokeTransparency=0.5}):Play()
TS:Create(IntroTg, TweenInfo.new(0.5), {TextTransparency=0}):Play()

task.wait(3)

TS:Create(IntroText, TweenInfo.new(0.5), {TextTransparency=1, TextStrokeTransparency=1}):Play()
TS:Create(IntroSub, TweenInfo.new(0.5), {TextTransparency=1, TextStrokeTransparency=1}):Play()
TS:Create(IntroTg, TweenInfo.new(0.5), {TextTransparency=1}):Play()
task.wait(0.5)
IntroText:Destroy(); IntroSub:Destroy(); IntroTg:Destroy()

local SpFlash=Instance.new("Frame",Sp);SpFlash.Size=UDim2.new(0,0,0,0);SpFlash.Position=UDim2.new(0.5,0,0.5,0);SpFlash.AnchorPoint=Vector2.new(0.5,0.5);SpFlash.BackgroundColor3=Color3.fromRGB(70,140,255);SpFlash.BorderSizePixel=0;SpFlash.ZIndex=102;SpFlash.BackgroundTransparency=1;Instance.new("UICorner",SpFlash).CornerRadius=UDim.new(0,9999)
local SpLogo=Instance.new("TextLabel",Sp);SpLogo.Size=UDim2.new(1,0,0,100);SpLogo.Position=UDim2.new(0,0,0.5,-50);SpLogo.BackgroundTransparency=1;SpLogo.Text="PRISON HELPER";SpLogo.TextColor3=Color3.fromRGB(70,140,255);SpLogo.Font=Enum.Font.GothamBlack;SpLogo.TextSize=64;SpLogo.TextTransparency=1;SpLogo.ZIndex=103;SpLogo.TextStrokeTransparency=1
local SpSub=Instance.new("TextLabel",Sp);SpSub.Size=UDim2.new(1,0,0,30);SpSub.Position=UDim2.new(0,0,0.5,60);SpSub.BackgroundTransparency=1;SpSub.Text="ULTIMATE EDITION";SpSub.TextColor3=Color3.fromRGB(180,180,200);SpSub.Font=Enum.Font.Gotham;SpSub.TextSize=14;SpSub.TextTransparency=1;SpSub.ZIndex=103;SpSub.TextStrokeTransparency=1
SpFlash.BackgroundTransparency=0.8;TS:Create(SpFlash,TweenInfo.new(0.4),{Size=UDim2.new(0,2000,0,2000),BackgroundTransparency=1}):Play()
TS:Create(SpLogo,TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{TextTransparency=0,TextStrokeTransparency=0}):Play()
SpLogo.TextStrokeTransparency=0;SpLogo.TextStrokeColor3=Color3.fromRGB(70,140,255);SpLogo.TextStrokeTransparency=1;TS:Create(SpLogo,TweenInfo.new(0.8,Enum.EasingStyle.Back),{TextStrokeTransparency=0.5}):Play()
TS:Create(SpSub,TweenInfo.new(0.5),{TextTransparency=0}):Play()
task.wait(1.2)
TS:Create(Sp,TweenInfo.new(0.5),{BackgroundTransparency=1}):Play()
TS:Create(SpLogo,TweenInfo.new(0.4),{TextTransparency=1,TextStrokeTransparency=1}):Play()
TS:Create(SpSub,TweenInfo.new(0.3),{TextTransparency=1}):Play()
task.wait(0.5);Sp:Destroy()

-- ==== ОКНО ====
local M=Instance.new("Frame",G);M.Size=UDim2.new(0,500,0,400);M.Position=UDim2.new(0.5,-250,0.5,-200);M.BackgroundColor3=Color3.fromRGB(22,22,28);M.BorderSizePixel=0;M.Visible=true;M.ClipsDescendants=true;local MC=Instance.new("UICorner",M);MC.CornerRadius=UDim.new(0,12);local MS=Instance.new("UIStroke",M);MS.Color=Color3.fromRGB(45,45,55);MS.Thickness=1
local function rescale()if not M.Visible then return end;local v=C.ViewportSize;local w=math.min(500,v.X*0.95);local h=math.min(400,v.Y*0.7);if M.Size.X.Offset<300 then w=300 end;if M.Size.Y.Offset<250 then h=250 end;M.Size=UDim2.new(0,w,0,h);M.Position=UDim2.new(0.5,-w/2,0.5,-h/2)end;rescale();C:GetPropertyChangedSignal("ViewportSize"):Connect(rescale)

local RS_=Instance.new("TextButton",M);RS_.Size=UDim2.new(0,30,0,30);RS_.Position=UDim2.new(1,-30,1,-30);RS_.BackgroundTransparency=1;RS_.Text="";RS_.ZIndex=10;local gr=Instance.new("TextLabel",RS_);gr.Size=UDim2.new(1,0,1,0);gr.BackgroundTransparency=1;gr.Text="◢";gr.TextColor3=Color3.fromRGB(100,100,120);gr.TextSize=20;gr.Font=Enum.Font.GothamBold
local ron=false;local rs, rp;RS_.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then ron=true;rs=i.Position;rp=M.Size end end)S.InputChanged:Connect(function(i)if ron and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then local d=i.Position-rs;M.Size=UDim2.new(0,math.clamp(rp.X.Offset+d.X,300,1000),0,math.clamp(rp.Y.Offset+d.Y,250,800))end end)S.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then ron=false end end)

local T=Instance.new("Frame",M);T.Size=UDim2.new(1,0,0,36);T.BackgroundColor3=Color3.fromRGB(30,30,38);T.BorderSizePixel=0;T.ZIndex=5;local Tl=Instance.new("TextLabel",T);Tl.Size=UDim2.new(1,-80,1,0);Tl.Position=UDim2.new(0,12,0,0);Tl.BackgroundTransparency=1;Tl.Text="Prison Life Helper";Tl.TextColor3=Color3.fromRGB(230,230,240);Tl.Font=Enum.Font.GothamBold;Tl.TextSize=16;Tl.TextXAlignment=Enum.TextXAlignment.Left;Tl.ZIndex=6
local Mn=Instance.new("TextButton",T);Mn.Size=UDim2.new(0,28,0,28);Mn.Position=UDim2.new(1,-70,0,4);Mn.BackgroundColor3=Color3.fromRGB(45,45,55);Mn.Text="—";Mn.TextColor3=Color3.fromRGB(230,230,240);Mn.Font=Enum.Font.GothamBold;Mn.TextSize=16;Mn.BorderSizePixel=0;Mn.ZIndex=10;Instance.new("UICorner",Mn).CornerRadius=UDim.new(0,6)
local Close=Instance.new("TextButton",T);Close.Size=UDim2.new(0,28,0,28);Close.Position=UDim2.new(1,-36,0,4);Close.BackgroundColor3=Color3.fromRGB(200,50,50);Close.Text="X";Close.TextColor3=Color3.fromRGB(255,255,255);Close.Font=Enum.Font.GothamBold;Close.TextSize=14;Close.BorderSizePixel=0;Close.ZIndex=10;Instance.new("UICorner",Close).CornerRadius=UDim.new(0,6)
local drag=false;local ds,dp;T.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then drag=true;ds=i.Position;dp=M.Position end end)S.InputChanged:Connect(function(i)if drag and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then local d=i.Position-ds;M.Position=UDim2.new(dp.X.Scale,dp.X.Offset+d.X,dp.Y.Scale,dp.Y.Offset+d.Y)end end)S.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then drag=false end end)

local Sb=Instance.new("Frame",M);Sb.Size=UDim2.new(0,100,1,-40);Sb.Position=UDim2.new(0,4,0,40);Sb.BackgroundColor3=Color3.fromRGB(28,28,35);Sb.BorderSizePixel=0;Instance.new("UICorner",Sb).CornerRadius=UDim.new(0,8);local Sl=Instance.new("UIListLayout",Sb);Sl.SortOrder=Enum.SortOrder.LayoutOrder;Sl.Padding=UDim.new(0,4);local Pd=Instance.new("UIPadding",Sb);Pd.PaddingTop=UDim.new(0,8);Pd.PaddingLeft=UDim.new(0,4);Pd.PaddingRight=UDim.new(0,4)

local Ph=Instance.new("Frame",M);Ph.Size=UDim2.new(1,-112,1,-44);Ph.Position=UDim2.new(0,104,0,40);Ph.BackgroundTransparency=1;local Pgs={};local CP=nil
local function mkS(n)local sf=Instance.new("ScrollingFrame",Ph);sf.Name=n;sf.Size=UDim2.new(1,0,1,0);sf.BackgroundTransparency=1;sf.BorderSizePixel=0;sf.ScrollBarThickness=3;sf.ScrollBarImageColor3=Color3.fromRGB(80,80,100);sf.CanvasSize=UDim2.new(0,0,0,0);sf.Visible=false;local ll=Instance.new("UIListLayout",sf);ll.SortOrder=Enum.SortOrder.LayoutOrder;ll.Padding=UDim.new(0,4);local p=Instance.new("UIPadding",sf);p.PaddingLeft=UDim.new(0,4);p.PaddingRight=UDim.new(0,4);p.PaddingTop=UDim.new(0,4);ll:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()sf.CanvasSize=UDim2.new(0,0,0,ll.AbsoluteContentSize.Y+10)end)Pgs[n]=sf;return sf end
local E,A,MV,TP,PL,TR,MC,ST=mkS("ESP"),mkS("Aim"),mkS("Move"),mkS("TP"),mkS("Players"),mkS("Troll"),mkS("Misc"),mkS("Settings");local Tabs={}
local function mkT(n)local b=Instance.new("TextButton",Sb);b.Size=UDim2.new(1,0,0,32);b.BackgroundColor3=Color3.fromRGB(40,40,50);b.Text=n;b.TextColor3=Color3.fromRGB(200,200,215);b.Font=Enum.Font.GothamSemibold;b.TextSize=13;b.BorderSizePixel=0;Instance.new("UICorner",b).CornerRadius=UDim.new(0,6);Tabs[n]=b;b.MouseButton1Click:Connect(function()for x,y in pairs(Pgs)do y.Visible=(x==n)end;for x,y in pairs(Tabs)do if x==n then y.BackgroundColor3=Color3.fromRGB(70,70,95);y.TextColor3=Color3.fromRGB(255,255,255)else y.BackgroundColor3=Color3.fromRGB(40,40,50);y.TextColor3=Color3.fromRGB(200,200,215)end end;CP=Pgs[n]end)return b end
mkT("ESP");mkT("Aim");mkT("Move");mkT("TP");mkT("Players");mkT("Troll");mkT("Misc");mkT("Settings");CP=E;E.Visible=true;Tabs.ESP.BackgroundColor3=Color3.fromRGB(70,70,95);Tabs.ESP.TextColor3=Color3.fromRGB(255,255,255)

local St={ESP={Enable=false,Box=false,Highlight=false,Name=false,Health=false,Tool=false,Backpack=false,Distance=false,Tracer=false,TeamCheck=false,Filter="All",MaxDist=1000,TextSize=12},Aim={Enable=false,FOV=false,Team=false,Wall=false,FOVSize=120,Silent=true},Move={Fly=false,Noclip=false,Speed=false,SpeedVal=50,FlySpeed=50},Misc={AntiAFK=false,Fullbright=false,AutoClick=false,ClickDelay=0.1,AutoArrest=false,AutoPunch=false,InfJump=false,AntiGrab=false,FlingPower=1000},UI={AccR=70,AccG=140,AccB=255}}
local Th={Main=Color3.fromRGB(22,22,28),Top=Color3.fromRGB(30,30,38),Side=Color3.fromRGB(28,28,35),Tab=Color3.fromRGB(40,40,50),TabOn=Color3.fromRGB(70,70,95),Elem=Color3.fromRGB(35,35,45),Text=Color3.fromRGB(200,200,215),TextOn=Color3.fromRGB(255,255,255),Btn=Color3.fromRGB(45,45,60),Accent=Color3.fromRGB(70,140,255)}
local uiT={}local uiS={}
local function applyTheme()M.BackgroundColor3=Th.Main;T.BackgroundColor3=Th.Top;Sb.BackgroundColor3=Th.Side;for n,b in pairs(Tabs)do if CP==Pgs[n]then b.BackgroundColor3=Th.TabOn;b.TextColor3=Th.TextOn else b.BackgroundColor3=Th.Tab;b.TextColor3=Th.Text end end;for _,p in pairs(Pgs)do for _,c in ipairs(p:GetChildren())do if c:IsA("Frame")and not c:IsA("ScrollingFrame")and not c:IsA("TextBox")and c:FindFirstChildOfClass("TextLabel")then c.BackgroundColor3=Th.Elem;local lbl=c:FindFirstChildOfClass("TextLabel");if lbl then lbl.TextColor3=Th.Text end;for _,ch in ipairs(c:GetChildren())do if ch:IsA("TextButton")and ch.Text==""then local tb,tk=ch:GetAttribute("Tbl"),ch:GetAttribute("Key");if tb and tk then ch.BackgroundColor3=St[tb][tk]and Th.Accent or Th.Btn end end end elseif c:IsA("TextButton")then if c.Text~="—"and c.Text~="X"and c.Text~="TP"and c.Text~="Bring" then c.BackgroundColor3=Th.Btn;c.TextColor3=Th.Text end end end end end
local function TG(p,l,k,t,o)local r=Instance.new("Frame",p);r.Name=t;r.Size=UDim2.new(1,-8,0,30);r.BackgroundColor3=Th.Elem;r.BorderSizePixel=0;r.LayoutOrder=o;Instance.new("UICorner",r).CornerRadius=UDim.new(0,6);local lb=Instance.new("TextLabel",r);lb.Size=UDim2.new(1,-50,1,0);lb.Position=UDim2.new(0,10,0,0);lb.BackgroundTransparency=1;lb.Text=l;lb.TextColor3=Th.Text;lb.Font=Enum.Font.Gotham;lb.TextSize=13;lb.TextXAlignment=Enum.TextXAlignment.Left;local b=Instance.new("TextButton",r);b.Size=UDim2.new(0,36,0,18);b.Position=UDim2.new(1,-46,0.5,-9);b.BackgroundColor3=Th.Btn;b.Text="";b.BorderSizePixel=0;Instance.new("UICorner",b).CornerRadius=UDim.new(0,9);b:SetAttribute("Tbl",t);b:SetAttribute("Key",k);local d=Instance.new("Frame",b);d.Size=UDim2.new(0,14,0,14);d.Position=UDim2.new(0,2,0.5,-7);d.BackgroundColor3=Color3.fromRGB(180,180,195);d.BorderSizePixel=0;Instance.new("UICorner",d).CornerRadius=UDim.new(0,7);if not uiT[t]then uiT[t]={}end;uiT[t][k]={btn=b,dot=d};local function up(v)b.BackgroundColor3=v and Th.Accent or Th.Btn;d.Position=v and UDim2.new(1,-16,0.5,-7)or UDim2.new(0,2,0.5,-7)end;b.MouseButton1Click:Connect(function()local v=not St[t][k];St[t][k]=v;up(v)end);up(St[t][k])end
local function SL(p,l,k,t,mn,mx,o,f)local r=Instance.new("Frame",p);r.Name=t;r.Size=UDim2.new(1,-8,0,44);r.BackgroundColor3=Th.Elem;r.BorderSizePixel=0;r.LayoutOrder=o;Instance.new("UICorner",r).CornerRadius=UDim.new(0,6);local lb=Instance.new("TextLabel",r);lb.Size=UDim2.new(1,-70,0,20);lb.Position=UDim2.new(0,10,0,2);lb.BackgroundTransparency=1;lb.Text=l;lb.TextColor3=Th.Text;lb.Font=Enum.Font.Gotham;lb.TextSize=13;lb.TextXAlignment=Enum.TextXAlignment.Left;local v=Instance.new("TextLabel",r);v.Size=UDim2.new(0,60,0,20);v.Position=UDim2.new(1,-70,0,2);v.BackgroundTransparency=1;v.Text=tostring(St[t][k]);v.TextColor3=Th.Accent;v.Font=Enum.Font.GothamBold;v.TextSize=13;v.TextXAlignment=Enum.TextXAlignment.Right;local b=Instance.new("Frame",r);b.Size=UDim2.new(1,-20,0,8);b.Position=UDim2.new(0,10,0,30);b.BackgroundColor3=Color3.fromRGB(50,50,65);b.BorderSizePixel=0;Instance.new("UICorner",b).CornerRadius=UDim.new(0,4);local fl=Instance.new("Frame",b);fl.Size=UDim2.new((St[t][k]-mn)/(mx-mn),0,1,0);fl.BackgroundColor3=Th.Accent;fl.BorderSizePixel=0;Instance.new("UICorner",fl).CornerRadius=UDim.new(0,4);if not uiS[t]then uiS[t]={}end;uiS[t][k]={val=v,fill=fl,min=mn,max=mx};local dg=false;local function sf(x)local a=b.AbsolutePosition.X;local w=b.AbsoluteSize.X;local p=math.clamp((x-a)/w,0,1);local vl=mn+p*(mx-mn);if not f then vl=math.floor(vl+0.5)end;St[t][k]=vl;v.Text=f and string.format("%.2f",vl)or tostring(vl);fl.Size=UDim2.new((vl-mn)/(mx-mn),0,1,0)end;b.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=true;sf(i.Position.X)end end)S.InputChanged:Connect(function(i)if dg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then sf(i.Position.X)end end)S.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=false end end)end
local function mkB(p,t,o,cb,color)local b=Instance.new("TextButton",p);b.Size=UDim2.new(1,-8,0,30);b.BackgroundColor3=color or Th.Btn;b.Text=t;b.TextColor3=Th.TextOn;b.Font=Enum.Font.GothamBold;b.TextSize=12;b.BorderSizePixel=0;b.LayoutOrder=o;Instance.new("UICorner",b).CornerRadius=UDim.new(0,6);b.MouseButton1Click:Connect(cb)return b end

local function getPrisoner()local closest,minDist=nil,math.huge;local myChar=L.Character;if not myChar or not myChar:FindFirstChild("HumanoidRootPart")then return nil end;local myPos=myChar.HumanoidRootPart.Position;for _,p in ipairs(P:GetPlayers())do if p~=L and p.Team and p.Team.Name=="Inmates" and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then local d=(p.Character.HumanoidRootPart.Position-myPos).Magnitude;if d<minDist then minDist=d;closest=p end end end;return closest end

local o=0;for _,k in ipairs({"Enable","Box","Highlight","Name","Health","Tool","Backpack","Distance","Tracer","TeamCheck"})do o=o+1;TG(E,k,k,"ESP",o)end
mkB(E,"Filter: All",11,function() St.ESP.Filter="All" end)
mkB(E,"Filter: Guard",12,function() St.ESP.Filter="Guard" end)
mkB(E,"Filter: Inmates",13,function() St.ESP.Filter="Inmates" end)
SL(E,"Max Dist","MaxDist","ESP",100,3000,14);SL(E,"Text Size","TextSize","ESP",8,24,15)

o=0;for _,k in ipairs({"Enable","FOV","Team","Wall","Silent"})do o=o+1;TG(A,k,k,"Aim",o)end;SL(A,"FOV Size","FOVSize","Aim",20,500,o+1)

o=0;for _,k in ipairs({"Fly","Noclip","Speed"})do o=o+1;TG(MV,k,k,"Move",o)end;SL(MV,"Fly Speed","FlySpeed","Move",10,300,o+1);SL(MV,"Speed Val","SpeedVal","Move",16,200,o+2)
mkB(MV,"↑ Up",10,function()local hr=L.Character and L.Character:FindFirstChild("HumanoidRootPart");if hr then hr.CFrame=hr.CFrame*CFrame.new(0,10,0)end end)
mkB(MV,"↓ Down",11,function()local hr=L.Character and L.Character:FindFirstChild("HumanoidRootPart");if hr then hr.CFrame=hr.CFrame*CFrame.new(0,-10,0)end end)

-- TP TAB
local savedPoints={}
local function loadPoints()if isfile and isfile("PrisonLife_Points.json")then local success,data=pcall(function()return Http:JSONDecode(readfile("PrisonLife_Points.json"))end)if success and data then for name,pos in pairs(data)do savedPoints[name]=CFrame.new(pos[1],pos[2],pos[3])end end end end
local function savePoints()if writefile then local data={}for name,cframe in pairs(savedPoints)do data[name]={cframe.X,cframe.Y,cframe.Z}end writefile("PrisonLife_Points.json",Http:JSONEncode(data))end end
loadPoints()
local pointInput=Instance.new("TextBox",TP);pointInput.Size=UDim2.new(1,-8,0,30);pointInput.BackgroundColor3=Th.Elem;pointInput.Text="";pointInput.PlaceholderText="Point Name...";pointInput.TextColor3=Th.Text;pointInput.Font=Enum.Font.Gotham;pointInput.TextSize=13;pointInput.BorderSizePixel=0;pointInput.LayoutOrder=5;Instance.new("UICorner",pointInput).CornerRadius=UDim.new(0,6)
local pointsList=Instance.new("Frame",TP);pointsList.Size=UDim2.new(1,-8,0,150);pointsList.BackgroundTransparency=1;pointsList.LayoutOrder=6;local plLayout=Instance.new("UIListLayout",pointsList);plLayout.SortOrder=Enum.SortOrder.LayoutOrder;plLayout.Padding=UDim.new(0,4)
local function addPointRow(name)local row=Instance.new("Frame",pointsList);row.Size=UDim2.new(1,0,0,30);row.BackgroundColor3=Th.Elem;row.BorderSizePixel=0;Instance.new("UICorner",row).CornerRadius=UDim.new(0,6);local txt=Instance.new("TextLabel",row);txt.Size=UDim2.new(1,-70,1,0);txt.Position=UDim2.new(0,5,0,0);txt.BackgroundTransparency=1;txt.Text=name;txt.TextColor3=Th.Text;txt.Font=Enum.Font.Gotham;txt.TextSize=12;txt.TextXAlignment=Enum.TextXAlignment.Left;local tpBtn=Instance.new("TextButton",row);tpBtn.Size=UDim2.new(0,30,0,20);tpBtn.Position=UDim2.new(1,-65,0.5,-10);tpBtn.BackgroundColor3=Th.Accent;tpBtn.Text="TP";tpBtn.TextColor3=Color3.new(1,1,1);tpBtn.TextSize=10;tpBtn.Font=Enum.Font.GothamBold;tpBtn.BorderSizePixel=0;Instance.new("UICorner",tpBtn).CornerRadius=UDim.new(0,4);tpBtn.MouseButton1Click:Connect(function()if L.Character and L.Character:FindFirstChild("HumanoidRootPart")and savedPoints[name]then L.Character.HumanoidRootPart.CFrame=savedPoints[name]end end);local delBtn=Instance.new("TextButton",row);delBtn.Size=UDim2.new(0,20,0,20);delBtn.Position=UDim2.new(1,-25,0.5,-10);delBtn.BackgroundColor3=Color3.fromRGB(200,50,50);delBtn.Text="X";delBtn.TextColor3=Color3.new(1,1,1);delBtn.TextSize=12;delBtn.Font=Enum.Font.GothamBold;delBtn.BorderSizePixel=0;Instance.new("UICorner",delBtn).CornerRadius=UDim.new(0,4);delBtn.MouseButton1Click:Connect(function()savedPoints[name]=nil;savePoints();row:Destroy()end)end
for name,_ in pairs(savedPoints)do addPointRow(name)end
mkB(TP,"Save Point",7,function()local name=pointInput.Text~=""and pointInput.Text or "P_"..math.random(1,999);if L.Character and L.Character:FindFirstChild("HumanoidRootPart")then savedPoints[name]=L.Character.HumanoidRootPart.CFrame;savePoints();addPointRow(name)end end)
mkB(TP,"TP Outside",8,function()if L.Character and L.Character:FindFirstChild("HumanoidRootPart")then L.Character.HumanoidRootPart.CFrame=CFrame.new(100,5,100)end end)
mkB(TP,"TP to Gun",9,function()for _,v in ipairs(workspace:GetDescendants())do if v:IsA("Tool")and(v.Name:lower():find("remington")or v.Name:lower():find("mp5"))then L.Character.HumanoidRootPart.CFrame=v.CFrame*CFrame.new(0,3,0);break end end end)
mkB(TP,"TP to Prisoner",10,function()local t=getPrisoner();if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart")then L.Character.HumanoidRootPart.CFrame=t.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,3)end end)
mkB(TP,"TP to Guard",11,function()for _,p in ipairs(P:GetPlayers())do if p~=L and p.Team and p.Team.Name=="Guard" and p.Character then local hr=p.Character:FindFirstChild("HumanoidRootPart");if hr then L.Character.HumanoidRootPart.CFrame=hr.CFrame*CFrame.new(0,0,3);break end end end end)

-- PLAYERS TAB (Скроллинг список игроков)
local function updatePlayersList()
    for _, child in ipairs(PL:GetChildren()) do
        if child:IsA("TextButton") or child:IsA("Frame") then
            child:Destroy()
        end
    end

    for _, p in ipairs(P:GetPlayers()) do
        if p ~= L then
            local row = Instance.new("Frame", PL)
            row.Size = UDim2.new(1,-8,0,30); row.BackgroundColor3 = Th.Elem; row.BorderSizePixel = 0; row.LayoutOrder = 1
            Instance.new("UICorner",row).CornerRadius = UDim.new(0,6)
            
            local txt = Instance.new("TextLabel", row)
            txt.Size = UDim2.new(1,-100,1,0); txt.Position = UDim2.new(0,5,0,0); txt.BackgroundTransparency = 1
            txt.Text = p.Name; txt.TextColor3 = Th.Text; txt.Font = Enum.Font.Gotham; txt.TextSize = 12; txt.TextXAlignment = Enum.TextXAlignment.Left
            
            local tpBtn = Instance.new("TextButton", row)
            tpBtn.Size = UDim2.new(0,35,0,20); tpBtn.Position = UDim2.new(1,-80,0.5,-10)
            tpBtn.BackgroundColor3 = Th.Accent; tpBtn.Text = "TP"; tpBtn.TextColor3 = Color3.new(1,1,1); tpBtn.TextSize = 10; tpBtn.Font = Enum.Font.GothamBold; tpBtn.BorderSizePixel = 0
            Instance.new("UICorner",tpBtn).CornerRadius = UDim.new(0,4)
            tpBtn.MouseButton1Click:Connect(function()
                if L.Character and L.Character:FindFirstChild("HumanoidRootPart") and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    L.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                end
            end)
            
            local bringBtn = Instance.new("TextButton", row)
            bringBtn.Size = UDim2.new(0,35,0,20); bringBtn.Position = UDim2.new(1,-40,0.5,-10)
            bringBtn.BackgroundColor3 = Color3.fromRGB(255,100,50); bringBtn.Text = "Bring"; bringBtn.TextColor3 = Color3.new(1,1,1); bringBtn.TextSize = 10; bringBtn.Font = Enum.Font.GothamBold; bringBtn.BorderSizePixel = 0
            Instance.new("UICorner",bringBtn).CornerRadius = UDim.new(0,4)
            bringBtn.MouseButton1Click:Connect(function()
                if L.Character and L.Character:FindFirstChild("HumanoidRootPart") and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.CFrame = L.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                end
            end)
        end
    end
end
updatePlayersList()
P.PlayerAdded:Connect(function() task.wait(1); updatePlayersList() end)
P.PlayerRemoving:Connect(function() task.wait(1); updatePlayersList() end)
mkB(PL,"Refresh List",1,function() updatePlayersList() end, Color3.fromRGB(100,100,200))

-- TROLL TAB
mkB(TR,"Reset All (Kill)",1,function()
    for _,p in ipairs(P:GetPlayers())do
        if p~=L and p.Character and p.Character:FindFirstChildOfClass("Humanoid")then
            p.Character:FindFirstChildOfClass("Humanoid").Health=0
        end
    end
end, Color3.fromRGB(200,50,50))
mkB(TR,"Drop All Tools",2,function()
    for _,p in ipairs(P:GetPlayers())do
        if p~=L and p.Character then
            local backpack = p:FindFirstChild("Backpack")
            if backpack then
                for _,tool in ipairs(backpack:GetChildren())do
                    if tool:IsA("Tool")then tool.Parent = workspace end
                end
            end
            local char = p.Character
            for _,tool in ipairs(char:GetChildren())do
                if tool:IsA("Tool")then tool.Parent = workspace end
            end
        end
    end
end, Color3.fromRGB(200,100,50))
mkB(TR,"Fling Grab (TP + Throw)",3,function()
    local t=nil;local md=math.huge;local mc=L.Character;if not mc or not mc:FindFirstChild("HumanoidRootPart")then return end;local mp=mc.HumanoidRootPart.Position
    for _,p in ipairs(P:GetPlayers())do if p~=L and p.Character then local hr=p.Character:FindFirstChild("HumanoidRootPart");if hr then local d=(hr.Position-mp).Magnitude;if d<md then md=d;t=p end end end end
    if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart")then
        local myHrp=mc.HumanoidRootPart;local target=t.Character.HumanoidRootPart
        myHrp.CFrame=target.CFrame*CFrame.new(0,0,2)
        task.wait(0.1)
        local bv=Instance.new("BodyVelocity");bv.MaxForce=Vector3.new(1e5,1e5,1e5);bv.Parent=target
        local dir=(target.Position-myHrp.Position).Unit
        bv.Velocity=dir*St.Misc.FlingPower + Vector3.new(0,100,0)
        task.wait(0.5);bv:Destroy()
    end
end, Color3.fromRGB(255,150,0))
SL(TR,"Fling Power","FlingPower","Misc",100,5000,4)
TG(TR,"Anti-Grab (Fly Safe)","AntiGrab","Misc",5)

o=0;TG(MC,"Anti-AFK","AntiAFK","Misc",o+1);TG(MC,"Fullbright","Fullbright","Misc",o+2);TG(MC,"Auto-Arrest","AutoArrest","Misc",o+3);TG(MC,"Auto-Punch","AutoPunch","Misc",o+4);TG(MC,"Infinite Jump","InfJump","Misc",o+5)
mkB(MC,"Give All Tools",20,function()local backpack=L:FindFirstChild("Backpack");if backpack then local tools={"Remington 870","MP5","Handcuffs","M9"};for _,n in ipairs(tools)do local f=game:GetService("ServerStorage"):FindFirstChild(n)or game:GetService("ReplicatedStorage"):FindFirstChild(n);if f then f:Clone().Parent=backpack end end end end)
SL(MC,"Click Delay","ClickDelay","Misc",0.01,1,o+6,true)

-- SETTINGS TAB
local themes={{"Dark",Color3.fromRGB(22,22,28),Color3.fromRGB(30,30,38),Color3.fromRGB(28,28,35),Color3.fromRGB(35,35,45),Color3.fromRGB(70,140,255)},{"Black",Color3.fromRGB(0,0,0),Color3.fromRGB(15,15,15),Color3.fromRGB(10,10,10),Color3.fromRGB(20,20,20),Color3.fromRGB(255,50,50)},{"Blue",Color3.fromRGB(15,20,35),Color3.fromRGB(25,35,55),Color3.fromRGB(20,30,45),Color3.fromRGB(35,45,65),Color3.fromRGB(50,150,255)},{"Red",Color3.fromRGB(30,15,15),Color3.fromRGB(45,20,20),Color3.fromRGB(35,15,15),Color3.fromRGB(50,25,25),Color3.fromRGB(255,70,70)},{"Green",Color3.fromRGB(15,30,20),Color3.fromRGB(20,40,30),Color3.fromRGB(15,35,25),Color3.fromRGB(25,45,35),Color3.fromRGB(70,255,120)}}
for i,t in ipairs(themes)do mkB(ST,t[1],i+10,function()Th.Main=t[2];Th.Top=t[3];Th.Side=t[4];Th.Elem=t[5];Th.Accent=t[6];Th.TabOn=t[6];Th.Btn=t[5];applyTheme()end)end
SL(ST,"Accent R","AccR","UI",0,255,20);SL(ST,"Accent G","AccG","UI",0,255,21);SL(ST,"Accent B","AccB","UI",0,255,22)
mkB(ST,"Apply Custom Theme",23,function()Th.Accent = Color3.fromRGB(St.UI.AccR, St.UI.AccG, St.UI.AccB);Th.TabOn = Th.Accent;applyTheme()end, Color3.fromRGB(100,200,100))
local cfgs={};local function saveCfg(name)local c={}for t,tbl in pairs(St)do c[t]={}for k,v in pairs(tbl)do c[t][k]=v end end;cfgs[name]=c;print("Saved: "..name)end
local function loadCfg(name)if not cfgs[name]then return end;for t,tbl in pairs(cfgs[name])do for k,v in pairs(tbl)do St[t][k]=v end end;for t,tbl in pairs(uiT)do for k,dt in pairs(tbl)do local v=St[t][k];dt.btn.BackgroundColor3=v and Th.Accent or Th.Btn;dt.dot.Position=v and UDim2.new(1,-16,0.5,-7)or UDim2.new(0,2,0.5,-7)end end;for t,tbl in pairs(uiS)do for k,dt in pairs(tbl)do local v=St[t][k];dt.val.Text=tostring(v);dt.fill.Size=UDim2.new((v-dt.min)/(dt.max-dt.min),0,1,0)end end;print("Loaded: "..name)end
local cfgName="default";local nameBox=Instance.new("TextBox",ST);nameBox.Size=UDim2.new(1,-8,0,30);nameBox.BackgroundColor3=Th.Elem;nameBox.Text=cfgName;nameBox.TextColor3=Th.Text;nameBox.PlaceholderText="Config name...";nameBox.Font=Enum.Font.Gotham;nameBox.TextSize=13;nameBox.BorderSizePixel=0;nameBox.LayoutOrder=50;Instance.new("UICorner",nameBox).CornerRadius=UDim.new(0,6);nameBox.FocusLost:Connect(function()cfgName=nameBox.Text end)
mkB(ST,"Save Config",51,function()saveCfg(cfgName)end,Color3.fromRGB(50,150,50));mkB(ST,"Load Config",52,function()loadCfg(cfgName)end,Color3.fromRGB(50,100,200));mkB(ST,"Delete Config",53,function()cfgs[cfgName]=nil;print("Deleted: "..cfgName)end,Color3.fromRGB(200,50,50));mkB(ST,"Create New Config",54,function()cfgName="new_"..math.random(1000,9999);nameBox.Text=cfgName;saveCfg(cfgName)end,Color3.fromRGB(150,150,50))

-- ЛОГИКА
local fv
R.Heartbeat:Connect(function()
    if not L.Character then return end
    local hr=L.Character:FindFirstChild("HumanoidRootPart")
    local hm=L.Character:FindFirstChildOfClass("Humanoid")
    if not hr or not hm then return end
    if St.Misc.AntiGrab then
        local grab = hr:FindFirstChild("GrabWeld") or hr:FindFirstChild("Weld") or hr:FindFirstChild("AccessoryWeld")
        if grab then grab:Destroy() end
        if hm.PlatformStand then hm.PlatformStand=false end
    end
    if St.Move.Speed then local moveDir = hm.MoveDirection; if moveDir.Magnitude > 0 then hr.CFrame = hr.CFrame + (moveDir * (St.Move.SpeedVal / 60)) end end
    if St.Move.Fly then
        if not fv then fv=Instance.new("BodyVelocity");fv.MaxForce=Vector3.new(1e5,1e5,1e5);fv.Parent=hr end
        local md=hm.MoveDirection;local dr=md.Magnitude>0 and md.Unit or Vector3.new(0,0,0)
        fv.Velocity=dr*St.Move.FlySpeed;hm.PlatformStand=true
    else
        if fv then fv:Destroy();fv=nil end
        if hm.PlatformStand and not St.Misc.AntiGrab then hm.PlatformStand=false end
    end
    if St.Move.Noclip then for _,x in ipairs(L.Character:GetDescendants())do if x:IsA("BasePart")and x.CanCollide then x.CanCollide=false end end end
end)
task.spawn(function()while task.wait(60)do if St.Misc.AntiAFK then V:CaptureController();V:ClickButton2(Vector2.new())end end end)
R.RenderStepped:Connect(function()if St.Misc.Fullbright then game.Lighting.Ambient=Color3.fromRGB(255,255,255);game.Lighting.OutdoorAmbient=Color3.fromRGB(255,255,255);game.Lighting.Brightness=2 else game.Lighting.Ambient=Color3.fromRGB(70,70,70);game.Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128);game.Lighting.Brightness=1 end end)
task.spawn(function()while task.wait(St.Misc.ClickDelay)do if St.Misc.AutoClick then V:CaptureController();V:ClickButton1(Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2))end end end)
task.spawn(function()while task.wait(1)do if St.Misc.AutoArrest then local t=getPrisoner();if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart")then local tool=L.Character:FindFirstChildOfClass("Tool");if tool and tool.Name:lower():find("cuff")then local myPos=L.Character.HumanoidRootPart.Position;local tPos=t.Character.HumanoidRootPart.Position;if (tPos-myPos).Magnitude<10 then tool:Activate() end end end end end end)
task.spawn(function()while task.wait(0.1)do if St.Misc.AutoPunch then local myChar=L.Character;if myChar then for _,p in ipairs(P:GetPlayers())do if p~=L and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then local dist=(p.Character.HumanoidRootPart.Position-myChar.HumanoidRootPart.Position).Magnitude;if dist<5 then V:CaptureController();V:ClickButton1(Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2))end end end end end end end)
S.JumpRequest:Connect(function()if St.Misc.InfJump then local char=L.Character;if char and char:FindFirstChildOfClass("Humanoid")then char:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)end end end)

-- ===== РЕЗКИЙ АИМБОТ (SILENT + ЗАЖАТИЕ) =====
local at=nil
local isShooting = false

S.InputBegan:Connect(function(i,g)
    if g then return end
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        isShooting = true
    end
end)

S.InputEnded:Connect(function(i,g)
    if g then return end
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        isShooting = false
    end
end)

R.RenderStepped:Connect(function()
    if not St.Aim.Enable then at=nil;return end
    if not L.Character then return end
    local mh=L.Character:FindFirstChild("HumanoidRootPart");if not mh then return end
    local cl=nil;local sd=St.Aim.FOVSize;local vp=C.ViewportSize;local ct=Vector2.new(vp.X/2,vp.Y/2)
    for _,p in ipairs(P:GetPlayers())do
        if p==L or not p.Character then continue end
        local ch=p.Character;local hr=ch:FindFirstChild("HumanoidRootPart");local hm=ch:FindFirstChildOfClass("Humanoid")
        if not hr or not hm or hm.Health<=0 then continue end
        if St.Aim.Team and p.Team==L.Team then continue end
        local sp,on=C:WorldToViewportPoint(hr.Position);if not on then continue end
        local d=(Vector2.new(sp.X,sp.Y)-ct).Magnitude
        if d<sd then
            if St.Aim.Wall then
                local ry=Ray.new(C.CFrame.Position,(hr.Position-C.CFrame.Position).Unit*1000)
                local hp=workspace:FindPartOnRay(ry,L.Character)
                if hp and hp:IsDescendantOf(ch)then sd=d;cl=hr end
            else sd=d;cl=hr end
        end
    end
    at=cl
    
    if at and St.Aim.Silent and isShooting then
        local savedCF = C.CFrame
        C.CFrame = CFrame.new(C.CFrame.Position, at.Position)
        task.wait()
        C.CFrame = savedCF
    elseif at and not St.Aim.Silent and isShooting then
        C.CFrame = CFrame.new(C.CFrame.Position, at.Position)
    end
end)

local df=Instance.new("Folder",G);local ec={};local function clr()for _,v in pairs(ec)do for _,i in pairs(v)do if i.Parent then i:Destroy()end end end;ec={}end
local function crESP(p,ch)
    if not St.ESP.Enable then return end
    if St.ESP.TeamCheck and p.Team==L.Team then return end
    if St.ESP.Filter ~= "All" then
        if not p.Team or p.Team.Name ~= St.ESP.Filter then return end
    end
    local hr=ch:FindFirstChild("HumanoidRootPart");local hm=ch:FindFirstChildOfClass("Humanoid");if not hr or not hm then return end
    local hl=Instance.new("Highlight",df);hl.Adornee=ch;hl.FillTransparency=1;hl.OutlineColor=Color3.fromRGB(70,140,255);hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
    local bx=Instance.new("Frame",df);bx.BackgroundTransparency=1;bx.BorderSizePixel=0;local bs=Instance.new("UIStroke",bx);bs.Color=Color3.fromRGB(70,140,255);bs.Thickness=1
    local nl=Instance.new("TextLabel",df);nl.BackgroundTransparency=1;nl.Text=p.Name;nl.TextColor3=Color3.fromRGB(255,255,255);nl.Font=Enum.Font.GothamBold;nl.TextStrokeTransparency=0
    local tl=Instance.new("TextLabel",df);tl.BackgroundTransparency=1;tl.TextColor3=Color3.fromRGB(255,220,120);tl.Font=Enum.Font.Gotham;tl.TextStrokeTransparency=0
    local bl=Instance.new("TextLabel",df);bl.BackgroundTransparency=1;bl.TextColor3=Color3.fromRGB(180,180,200);bl.Font=Enum.Font.Gotham;bl.TextStrokeTransparency=0
    local hb=Instance.new("Frame",df);hb.BackgroundColor3=Color3.fromRGB(70,200,70);hb.BorderSizePixel=0
    ec[p]={hl,bx,nl,hb,tl,bl};local cn;cn=R.RenderStepped:Connect(function()
        if not(St.ESP.Enable and hl.Parent and hr.Parent)then for _,i in pairs(ec[p])do i:Destroy()end;ec[p]=nil;cn:Disconnect();return end
        if St.ESP.Filter ~= "All" and (not p.Team or p.Team.Name ~= St.ESP.Filter) then hl.Enabled=false;bx.Visible=false;nl.Visible=false;hb.Visible=false;tl.Visible=false;bl.Visible=false;return end
        local hd=St.ESP.TeamCheck and p.Team==L.Team
        hl.Enabled=not hd and St.ESP.Highlight;bx.Visible=not hd and St.ESP.Box;nl.Visible=St.ESP.Name and not hd;hb.Visible=St.ESP.Health and not hd;tl.Visible=St.ESP.Tool and not hd;bl.Visible=St.ESP.Backpack and not hd
        local ps,on=C:WorldToViewportPoint(hr.Position);local d=(C.CFrame.Position-hr.Position).Magnitude
        if d>St.ESP.MaxDist or not on then hl.Enabled=false;bx.Visible=false;nl.Visible=false;hb.Visible=false;tl.Visible=false;bl.Visible=false;return end
        local h=ch:FindFirstChild("Head");local ty=ps.Y;if h then local hp,ho=C:WorldToViewportPoint(h.Position+Vector3.new(0,0.5,0));if ho then ty=hp.Y end end
        local ht=math.max(20,(ps.Y-ty)*1.2);local bw=ht*0.5
        bx.Size=UDim2.new(0,bw,0,ht);bx.Position=UDim2.new(0,ps.X-bw/2,0,ty)
        nl.Size=UDim2.new(0,150,0,St.ESP.TextSize+2);nl.TextSize=St.ESP.TextSize;nl.Position=UDim2.new(0,ps.X-75,0,ty-St.ESP.TextSize-4);nl.Text=p.Name.." ["..(p.Team and p.Team.Name or "None").."]"
        local hpc=hm.Health/hm.MaxHealth;hb.Size=UDim2.new(0,3,0,ht*hpc);hb.Position=UDim2.new(0,ps.X-bw/2-6,0,ty+ht*(1-hpc));hb.BackgroundColor3=Color3.fromRGB(255*(1-hpc),255*hpc,70)
        local tool = ch:FindFirstChildOfClass("Tool");tl.Size=UDim2.new(0,150,0,St.ESP.TextSize);tl.TextSize=St.ESP.TextSize-2;tl.Text=tool and ("[Holding] "..tool.Name) or "";tl.Position=UDim2.new(0,ps.X-75,0,ps.Y+20)

        if St.ESP.Backpack then
            local backpack = p:FindFirstChild("Backpack")
            local items = {}
            if backpack then
                for _, v in ipairs(backpack:GetChildren()) do
                    if v:IsA("Tool") then table.insert(items, v.Name) end
                end
            end
            local invText = #items > 0 and ("[Bag] " .. table.concat(items, ", ")) or "[Bag] Empty"
            bl.Size=UDim2.new(0,200,0,St.ESP.TextSize);bl.TextSize=St.ESP.TextSize-3;bl.Text=invText;bl.Position=UDim2.new(0,ps.X-100,0,ps.Y+36)
        end
    end)
end
local function rESP()clr();if not St.ESP.Enable then return end;for _,p in ipairs(P:GetPlayers())do if p~=L and p.Character then crESP(p,p.Character)end end end
local oe=St.ESP.Enable;R.Heartbeat:Connect(function()if St.ESP.Enable~=oe then oe=St.ESP.Enable;rESP()end end)P.PlayerAdded:Connect(function(p)p.CharacterAdded:Connect(function(c)task.wait(0.5);if St.ESP.Enable then crESP(p,c)end end)end)for _,p in ipairs(P:GetPlayers())do if p~=L then p.CharacterAdded:Connect(function(c)task.wait(0.5);if St.ESP.Enable then crESP(p,c)end end)end end

local mi=false;Mn.MouseButton1Click:Connect(function()mi=not mi;Sb.Visible=not mi;Ph.Visible=not mi;M.Size=mi and UDim2.new(0,M.Size.X.Offset,0,36)or UDim2.new(0,500,0,400);if not mi then rescale()end end)
Close.MouseButton1Click:Connect(function()
    for t,tbl in pairs(St)do for k,v in pairs(tbl)do if type(v)=="boolean"then St[t][k]=false end end end
    if fv then fv:Destroy();fv=nil end
    game.Lighting.Ambient=Color3.fromRGB(70,70,70);game.Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128);game.Lighting.Brightness=1
    clr()
    G:Destroy()
end)
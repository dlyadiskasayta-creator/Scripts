local P,S,R,L,C=game:GetService("Players"),game:getService("UserInputService"),game:GetService("RunService"),game:GetService("Players").LocalPlayer,workspace.CurrentCamera
local V=game:GetService("VirtualUser")
local TS=game:GetService("TweenService")
local function drag(f,h)h=h or f;local d,s,i=false,nil,nil;h.InputBegan:Connect(function(x)if x.UserInputType==Enum.UserInputType.Touch or x.UserInputType==Enum.UserInputType.MouseButton1 then d=true;s=f.Position;i=x.Position end end)S.InputChanged:Connect(function(x)if d and(x.UserInputType==Enum.UserInputType.Touch or x.UserInputType==Enum.UserInputType.MouseMovement)then local m=x.Position-i;f.Position=UDim2.new(s.X.Scale,s.X.Offset+m.X,s.Y.Scale,s.Y.Offset+m.Y)end end)S.InputEnded:Connect(function(x)if x.UserInputType==Enum.UserInputType.Touch or x.UserInputType==Enum.UserInputType.MouseButton1 then d=false end end)end
local G=Instance.new("ScreenGui",L:WaitForChild("PlayerGui"));G.Name="H";G.ResetOnSpawn=false;G.IgnoreGuiInset=true;G.DisplayOrder=999
local M=Instance.new("Frame",G);M.Size=UDim2.new(0,500,0,400);M.Position=UDim2.new(0.5,-250,0.5,-200);M.BackgroundColor3=Color3.fromRGB(22,22,28);M.BorderSizePixel=0;M.Visible=false;M.ClipsDescendants=true;local MC=Instance.new("UICorner",M);MC.CornerRadius=UDim.new(0,12);local MS=Instance.new("UIStroke",M);MS.Color=Color3.fromRGB(45,45,55);MS.Thickness=1
local function rescale()if not M.Visible then return end;local v=C.ViewportSize;local w=math.min(500,v.X*0.95);local h=math.min(400,v.Y*0.7);if M.Size.X.Offset<300 then w=300 end;if M.Size.Y.Offset<250 then h=250 end;M.Size=UDim2.new(0,w,0,h);M.Position=UDim2.new(0.5,-w/2,0.5,-h/2)end;rescale();C:GetPropertyChangedSignal("ViewportSize"):Connect(rescale)
local RS_=Instance.new("TextButton",M);RS_.Size=UDim2.new(0,30,0,30);RS_.Position=UDim2.new(1,-30,1,-30);RS_.BackgroundTransparency=1;RS_.Text="";RS_.ZIndex=10;local gr=Instance.new("TextLabel",RS_);gr.Size=UDim2.new(1,0,1,0);gr.BackgroundTransparency=1;gr.Text="◢";gr.TextColor3=Color3.fromRGB(100,100,120);gr.TextSize=20;gr.Font=Enum.Font.GothamBold
local ron=false;local rs, rp;RS_.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then ron=true;rs=i.Position;rp=M.Size end end)S.InputChanged:Connect(function(i)if ron and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then local d=i.Position-rs;M.Size=UDim2.new(0,math.clamp(rp.X.Offset+d.X,300,1000),0,math.clamp(rp.Y.Offset+d.Y,250,800))end end)S.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then ron=false end end)
local T=Instance.new("Frame",M);T.Size=UDim2.new(1,0,0,36);T.BackgroundColor3=Color3.fromRGB(30,30,38);T.BorderSizePixel=0;local Tl=Instance.new("TextLabel",T);Tl.Size=UDim2.new(1,-80,1,0);Tl.Position=UDim2.new(0,12,0,0);Tl.BackgroundTransparency=1;Tl.Text="Helper";Tl.TextColor3=Color3.fromRGB(230,230,240);Tl.Font=Enum.Font.GothamBold;Tl.TextSize=16;Tl.TextXAlignment=Enum.TextXAlignment.Left;local Mn=Instance.new("TextButton",T);Mn.Size=UDim2.new(0,28,0,28);Mn.Position=UDim2.new(1,-36,0,4);Mn.BackgroundColor3=Color3.fromRGB(45,45,55);Mn.Text="—";Mn.TextColor3=Color3.fromRGB(230,230,240);Mn.Font=Enum.Font.GothamBold;Mn.TextSize=16;Mn.BorderSizePixel=0;Instance.new("UICorner",Mn).CornerRadius=UDim.new(0,6);drag(M,T)
local Ct=Instance.new("Frame",M);Ct.Size=UDim2.new(1,-8,1,-44);Ct.Position=UDim2.new(0,4,0,40);Ct.BackgroundTransparency=1;local Sb=Instance.new("Frame",Ct);Sb.Size=UDim2.new(0,100,1,0);Sb.BackgroundColor3=Color3.fromRGB(28,28,35);Sb.BorderSizePixel=0;Instance.new("UICorner",Sb).CornerRadius=UDim.new(0,8);local Sl=Instance.new("UIListLayout",Sb);Sl.SortOrder=Enum.SortOrder.LayoutOrder;Sl.Padding=UDim.new(0,4);local Pd=Instance.new("UIPadding",Sb);Pd.PaddingTop=UDim.new(0,8);Pd.PaddingLeft=UDim.new(0,4);Pd.PaddingRight=UDim.new(0,4)
local Ph=Instance.new("Frame",Ct);Ph.Size=UDim2.new(1,-108,1,0);Ph.Position=UDim2.new(0,104,0,0);Ph.BackgroundTransparency=1;local Pgs={};local CP=nil
local function mkS(n)local sf=Instance.new("ScrollingFrame",Ph);sf.Name=n;sf.Size=UDim2.new(1,0,1,0);sf.BackgroundTransparency=1;sf.BorderSizePixel=0;sf.ScrollBarThickness=3;sf.ScrollBarImageColor3=Color3.fromRGB(80,80,100);sf.CanvasSize=UDim2.new(0,0,0,0);sf.Visible=false;local ll=Instance.new("UIListLayout",sf);ll.SortOrder=Enum.SortOrder.LayoutOrder;ll.Padding=UDim.new(0,4);local p=Instance.new("UIPadding",sf);p.PaddingLeft=UDim.new(0,4);p.PaddingRight=UDim.new(0,4);p.PaddingTop=UDim.new(0,4);ll:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()sf.CanvasSize=UDim2.new(0,0,0,ll.AbsoluteContentSize.Y+10)end)Pgs[n]=sf;return sf end
local E,A,MV,TP,MC,ST=mkS("ESP"),mkS("Aim"),mkS("Move"),mkS("TP"),mkS("Misc"),mkS("Settings");local Tabs={}
local function mkT(n)local b=Instance.new("TextButton",Sb);b.Size=UDim2.new(1,0,0,32);b.BackgroundColor3=Color3.fromRGB(40,40,50);b.Text=n;b.TextColor3=Color3.fromRGB(200,200,215);b.Font=Enum.Font.GothamSemibold;b.TextSize=13;b.BorderSizePixel=0;Instance.new("UICorner",b).CornerRadius=UDim.new(0,6);Tabs[n]=b;b.MouseButton1Click:Connect(function()for x,y in pairs(Pgs)do y.Visible=(x==n)end;for x,y in pairs(Tabs)do if x==n then y.BackgroundColor3=Color3.fromRGB(70,70,95);y.TextColor3=Color3.fromRGB(255,255,255)else y.BackgroundColor3=Color3.fromRGB(40,40,50);y.TextColor3=Color3.fromRGB(200,200,215)end end;CP=Pgs[n]end)return b end
mkT("ESP");mkT("Aim");mkT("Move");mkT("TP");mkT("Misc");mkT("Settings");CP=E;E.Visible=true;Tabs.ESP.BackgroundColor3=Color3.fromRGB(70,70,95);Tabs.ESP.TextColor3=Color3.fromRGB(255,255,255)
local St={ESP={Enable=false,Box=false,Highlight=false,Name=false,Health=false,Distance=false,Tracer=false,Tool=false,TeamCheck=false,MaxDist=500,TextSize=12},Aim={Enable=false,FOV=false,Team=false,Wall=false,FOVSize=120,Smooth=50,Silent=true},Move={Fly=false,Noclip=false,FlySpeed=50},Misc={AntiAFK=false,Fullbright=false,AutoClick=false,ClickDelay=0.1,AutoFarm=false},UI={Transparency=0,CornerRadius=12}}
local Th={Main=Color3.fromRGB(22,22,28),Top=Color3.fromRGB(30,30,38),Side=Color3.fromRGB(28,28,35),Tab=Color3.fromRGB(40,40,50),TabOn=Color3.fromRGB(70,70,95),Elem=Color3.fromRGB(32,32,40),Text=Color3.fromRGB(200,200,215),TextOn=Color3.fromRGB(255,255,255),Btn=Color3.fromRGB(45,45,60),Accent=Color3.fromRGB(70,140,255)}
local uiT={}local uiS={}

-- ФИКС ОШИБКИ: проверка на IsA("ScrollingFrame")
local function applyTheme()
	M.BackgroundColor3=Th.Main;T.BackgroundColor3=Th.Top;Sb.BackgroundColor3=Th.Side;MC.CornerRadius=UDim.new(0,St.UI.CornerRadius);M.BackgroundTransparency=St.UI.Transparency;T.BackgroundTransparency=St.UI.Transparency
	for n,b in pairs(Tabs)do if CP==Pgs[n]then b.BackgroundColor3=Th.TabOn;b.TextColor3=Th.TextOn else b.BackgroundColor3=Th.Tab;b.TextColor3=Th.Text end end
	for _,p in pairs(Pgs)do 
		for _,c in ipairs(p:GetChildren())do 
			if c:IsA("Frame") and c:FindFirstChildOfClass("TextLabel") and not c:IsA("ScrollingFrame") then 
				c.BackgroundColor3=Th.Elem;c:FindFirstChildOfClass("TextLabel").TextColor3=Th.Text
				for _,ch in ipairs(c:GetChildren())do if ch:IsA("TextButton")and ch.Text==""then local tb,tk=ch:GetAttribute("Tbl"),ch:GetAttribute("Key");if tb and tk then ch.BackgroundColor3=St[tb][tk]and Th.Accent or Th.Btn end end end
			elseif c:IsA("TextButton")then if c.Text~="—"and c.Text~="↑ Up"and c.Text~="↓ Down"and c.Text~="X" and c.Text~="TP" then c.BackgroundColor3=Th.Btn;c.TextColor3=Th.Text end end 
		end 
	end 
end

local function TG(p,l,k,t,o)local r=Instance.new("Frame",p);r.Name=t;r.Size=UDim2.new(1,-8,0,30);r.BackgroundColor3=Th.Elem;r.BorderSizePixel=0;r.LayoutOrder=o;Instance.new("UICorner",r).CornerRadius=UDim.new(0,6);local lb=Instance.new("TextLabel",r);lb.Size=UDim2.new(1,-50,1,0);lb.Position=UDim2.new(0,10,0,0);lb.BackgroundTransparency=1;lb.Text=l;lb.TextColor3=Th.Text;lb.Font=Enum.Font.Gotham;lb.TextSize=13;lb.TextXAlignment=Enum.TextXAlignment.Left;local b=Instance.new("TextButton",r);b.Size=UDim2.new(0,36,0,18);b.Position=UDim2.new(1,-46,0.5,-9);b.BackgroundColor3=Th.Btn;b.Text="";b.BorderSizePixel=0;Instance.new("UICorner",b).CornerRadius=UDim.new(0,9);b:SetAttribute("Tbl",t);b:SetAttribute("Key",k);local d=Instance.new("Frame",b);d.Size=UDim2.new(0,14,0,14);d.Position=UDim2.new(0,2,0.5,-7);d.BackgroundColor3=Color3.fromRGB(180,180,195);d.BorderSizePixel=0;Instance.new("UICorner",d).CornerRadius=UDim.new(0,7);if not uiT[t]then uiT[t]={}end;uiT[t][k]={btn=b,dot=d};local function up(v)b.BackgroundColor3=v and Th.Accent or Th.Btn;d.Position=v and UDim2.new(1,-16,0.5,-7)or UDim2.new(0,2,0.5,-7)end;b.MouseButton1Click:Connect(function()local v=not St[t][k];St[t][k]=v;up(v)end);up(St[t][k])end
local function SL(p,l,k,t,mn,mx,o,f)local r=Instance.new("Frame",p);r.Name=t;r.Size=UDim2.new(1,-8,0,44);r.BackgroundColor3=Th.Elem;r.BorderSizePixel=0;r.LayoutOrder=o;Instance.new("UICorner",r).CornerRadius=UDim.new(0,6);local lb=Instance.new("TextLabel",r);lb.Size=UDim2.new(1,-70,0,20);lb.Position=UDim2.new(0,10,0,2);lb.BackgroundTransparency=1;lb.Text=l;lb.TextColor3=Th.Text;lb.Font=Enum.Font.Gotham;lb.TextSize=13;lb.TextXAlignment=Enum.TextXAlignment.Left;local v=Instance.new("TextLabel",r);v.Size=UDim2.new(0,60,0,20);v.Position=UDim2.new(1,-70,0,2);v.BackgroundTransparency=1;v.Text=tostring(St[t][k]);v.TextColor3=Th.Accent;v.Font=Enum.Font.GothamBold;v.TextSize=13;v.TextXAlignment=Enum.TextXAlignment.Right;local b=Instance.new("Frame",r);b.Size=UDim2.new(1,-20,0,8);b.Position=UDim2.new(0,10,0,30);b.BackgroundColor3=Color3.fromRGB(50,50,65);b.BorderSizePixel=0;Instance.new("UICorner",b).CornerRadius=UDim.new(0,4);local fl=Instance.new("Frame",b);fl.Size=UDim2.new((St[t][k]-mn)/(mx-mn),0,1,0);fl.BackgroundColor3=Th.Accent;fl.BorderSizePixel=0;Instance.new("UICorner",fl).CornerRadius=UDim.new(0,4);if not uiS[t]then uiS[t]={}end;uiS[t][k]={val=v,fill=fl,min=mn,max=mx};local dg=false;local function sf(x)local a=b.AbsolutePosition.X;local w=b.AbsoluteSize.X;local p=math.clamp((x-a)/w,0,1);local vl=mn+p*(mx-mn);if not f then vl=math.floor(vl+0.5)end;St[t][k]=vl;v.Text=f and string.format("%.2f",vl)or tostring(vl);fl.Size=UDim2.new((vl-mn)/(mx-mn),0,1,0)end;b.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=true;sf(i.Position.X)end end)S.InputChanged:Connect(function(i)if dg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then sf(i.Position.X)end end)S.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=false end end)end
local function mkB(p,t,o,cb,color)local b=Instance.new("TextButton",p);b.Size=UDim2.new(1,-8,0,30);b.BackgroundColor3=color or Th.Btn;b.Text=t;b.TextColor3=Th.TextOn;b.Font=Enum.Font.GothamBold;b.TextSize=12;b.BorderSizePixel=0;b.LayoutOrder=o;Instance.new("UICorner",b).CornerRadius=UDim.new(0,6);b.MouseButton1Click:Connect(cb)return b end
local o=0;for _,k in ipairs({"Enable","Box","Highlight","Name","Health","Distance","Tracer","Tool","TeamCheck"})do o=o+1;TG(E,k,k,"ESP",o)end;SL(E,"Max Dist","MaxDist","ESP",50,3000,o+1);SL(E,"Text Size","TextSize","ESP",8,24,o+2)
o=0;for _,k in ipairs({"Enable","FOV","Team","Wall","Silent"})do o=o+1;TG(A,k,k,"Aim",o)end;SL(A,"FOV Size","FOVSize","Aim",20,500,o+1);SL(A,"Smooth %","Smooth","Aim",5,100,o+2)
o=0;for _,k in ipairs({"Fly","Noclip"})do o=o+1;TG(MV,k,k,"Move",o)end;SL(MV,"Fly Speed","FlySpeed","Move",10,300,o+1)
local fu=Instance.new("TextButton",MV);fu.Size=UDim2.new(1,-8,0,30);fu.BackgroundColor3=Th.Btn;fu.Text="↑ Up";fu.TextColor3=Th.TextOn;fu.Font=Enum.Font.GothamBold;fu.TextSize=13;fu.BorderSizePixel=0;fu.LayoutOrder=10;fu.Visible=false;Instance.new("UICorner",fu).CornerRadius=UDim.new(0,6)
local fd=Instance.new("TextButton",MV);fd.Size=UDim2.new(1,-8,0,30);fd.BackgroundColor3=Th.Btn;fd.Text="↓ Down";fd.TextColor3=Th.TextOn;fd.Font=Enum.Font.GothamBold;fd.TextSize=13;fd.BorderSizePixel=0;fd.LayoutOrder=11;fd.Visible=false;Instance.new("UICorner",fd).CornerRadius=UDim.new(0,6)
local up,dn=false,false;fu.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then up=true end end)fu.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then up=false end end)fd.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dn=true end end)fd.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dn=false end end)

-- ==== TP ВКЛАДКА ====
mkB(TP,"TP Outside",1,function()if L.Character and L.Character:FindFirstChild("HumanoidRootPart")then L.Character.HumanoidRootPart.CFrame=CFrame.new(100,5,100)end end)
mkB(TP,"TP Remington 870",2,function()if not L.Character then return end;for _,x in ipairs(workspace:GetDescendants())do if x:IsA("Tool")and(x.Name:lower():find("remington")or x.Name:lower():find("870"))then L.Character.HumanoidRootPart.CFrame=x.Handle.CFrame*CFrame.new(0,0,3);return end end end)
mkB(TP,"TP MP5",3,function()if not L.Character then return end;for _,x in ipairs(workspace:GetDescendants())do if x:IsA("Tool")and x.Name:lower():find("mp5")then L.Character.HumanoidRootPart.CFrame=x.Handle.CFrame*CFrame.new(0,0,3);return end end end)
mkB(TP,"TP to Nearest Guard",4,function()local t=nil;local md=math.huge;local mc=L.Character;if not mc or not mc:FindFirstChild("HumanoidRootPart")then return end;local mp=mc.HumanoidRootPart.Position;for _,p in ipairs(P:GetPlayers())do if p~=L and p.Team and p.Team.Name=="Police" and p.Character then local hr=p.Character:FindFirstChild("HumanoidRootPart");if hr then local d=(hr.Position-mp).Magnitude;if d<md then md=d;t=hr end end end end;if t then mc.HumanoidRootPart.CFrame=t.CFrame*CFrame.new(0,0,3)end end)

-- Система сохранения точек
local savedPoints = {}
local pointInput = Instance.new("TextBox", TP)
pointInput.Size = UDim2.new(1,-8,0,30); pointInput.BackgroundColor3 = Th.Elem; pointInput.Text = ""; pointInput.PlaceholderText = "Point Name..."; pointInput.TextColor3 = Th.Text; pointInput.Font = Enum.Font.Gotham; pointInput.TextSize = 13; pointInput.BorderSizePixel = 0; pointInput.LayoutOrder = 5; Instance.new("UICorner",pointInput).CornerRadius = UDim.new(0,6)

local pointsList = Instance.new("Frame", TP)
pointsList.Size = UDim2.new(1,-8,0,150); pointsList.BackgroundTransparency = 1; pointsList.LayoutOrder = 6
local plLayout = Instance.new("UIListLayout", pointsList); plLayout.SortOrder = Enum.SortOrder.LayoutOrder; plLayout.Padding = UDim.new(0,4)

mkB(TP, "Save Point", 7, function()
	local name = pointInput.Text ~= "" and pointInput.Text or "Point_"..math.random(1,999)
	if L.Character and L.Character:FindFirstChild("HumanoidRootPart") then
		savedPoints[name] = L.Character.HumanoidRootPart.CFrame
		-- Отрисовка кнопки
		local row = Instance.new("Frame", pointsList); row.Size = UDim2.new(1,0,0,30); row.BackgroundColor3 = Th.Elem; row.BorderSizePixel = 0; Instance.new("UICorner", row).CornerRadius = UDim.new(0,6)
		local txt = Instance.new("TextLabel", row); txt.Size = UDim2.new(1,-70,1,0); txt.Position = UDim2.new(0,5,0,0); txt.BackgroundTransparency = 1; txt.Text = name; txt.TextColor3 = Th.Text; txt.Font = Enum.Font.Gotham; txt.TextSize = 12; txt.TextXAlignment = Enum.TextXAlignment.Left
		
		local tpBtn = Instance.new("TextButton", row); tpBtn.Size = UDim2.new(0,30,0,20); tpBtn.Position = UDim2.new(1,-65,0.5,-10); tpBtn.BackgroundColor3 = Th.Accent; tpBtn.Text = "TP"; tpBtn.TextColor3 = Color3.new(1,1,1); tpBtn.TextSize = 10; tpBtn.Font = Enum.Font.GothamBold; tpBtn.BorderSizePixel = 0; Instance.new("UICorner", tpBtn).CornerRadius = UDim.new(0,4)
		tpBtn.MouseButton1Click:Connect(function() if L.Character and L.Character:FindFirstChild("HumanoidRootPart") and savedPoints[name] then L.Character.HumanoidRootPart.CFrame = savedPoints[name] end end)
		
		local delBtn = Instance.new("TextButton", row); delBtn.Size = UDim2.new(0,20,0,20); delBtn.Position = UDim2.new(1,-25,0.5,-10); delBtn.BackgroundColor3 = Color3.fromRGB(200,50,50); delBtn.Text = "X"; delBtn.TextColor3 = Color3.new(1,1,1); delBtn.TextSize = 12; delBtn.Font = Enum.Font.GothamBold; delBtn.BorderSizePixel = 0; Instance.new("UICorner", delBtn).CornerRadius = UDim.new(0,4)
		delBtn.MouseButton1Click:Connect(function() savedPoints[name] = nil; row:Destroy() end)
	end
end)

o=0;TG(MC,"Anti-AFK","AntiAFK","Misc",o+1);TG(MC,"Fullbright","Fullbright","Misc",o+2);TG(MC,"Auto-Clicker","AutoClick","Misc",o+3);SL(MC,"Click Delay","ClickDelay","Misc",0.01,1,o+4,true);TG(MC,"Auto-Farm","AutoFarm","Misc",o+5)
mkB(MC,"Auto-Get Keycard",20,function()local t=nil;local md=math.huge;local mc=L.Character;if not mc or not mc:FindFirstChild("HumanoidRootPart")then return end;local mp=mc.HumanoidRootPart.Position;for _,p in ipairs(P:GetPlayers())do if p~=L and p.Team and p.Team.Name=="Police" and p.Character then local hr=p.Character:FindFirstChild("HumanoidRootPart");if hr then local d=(hr.Position-mp).Magnitude;if d<md then md=d;t=p end end end end;if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart")then mc.HumanoidRootPart.CFrame=t.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,3);task.wait(0.1);local tl=mc:FindFirstChildOfClass("Tool");if tl then tl:Activate()end;for i=1,10 do V:CaptureController();V:ClickButton1(Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2));task.wait(0.1)end end end)
SL(ST,"Opacity","Transparency","UI",0,1,0,true);SL(ST,"Corner Radius","CornerRadius","UI",0,30,1)
local themes={{"Dark",Color3.fromRGB(22,22,28),Color3.fromRGB(30,30,38),Color3.fromRGB(28,28,35),Color3.fromRGB(32,32,40),Color3.fromRGB(70,140,255)},{"Black",Color3.fromRGB(0,0,0),Color3.fromRGB(15,15,15),Color3.fromRGB(10,10,10),Color3.fromRGB(20,20,20),Color3.fromRGB(255,50,50)},{"Blue",Color3.fromRGB(15,20,35),Color3.fromRGB(25,35,55),Color3.fromRGB(20,30,45),Color3.fromRGB(35,45,65),Color3.fromRGB(50,150,255)},{"Red",Color3.fromRGB(30,15,15),Color3.fromRGB(45,20,20),Color3.fromRGB(35,15,15),Color3.fromRGB(50,25,25),Color3.fromRGB(255,70,70)},{"Green",Color3.fromRGB(15,30,20),Color3.fromRGB(20,40,30),Color3.fromRGB(15,35,25),Color3.fromRGB(25,45,35),Color3.fromRGB(70,255,120)}}
for i,t in ipairs(themes)do mkB(ST,t[1],i+10,function()Th.Main=t[2];Th.Top=t[3];Th.Side=t[4];Th.Elem=t[5];Th.Accent=t[6];Th.TabOn=t[6];Th.Btn=t[5];applyTheme()end)end
local cfgs={};local function saveCfg(name)local c={}for t,tbl in pairs(St)do c[t]={}for k,v in pairs(tbl)do c[t][k]=v end end;cfgs[name]=c;print("Saved: "..name)end
local function loadCfg(name)if not cfgs[name]then return end;for t,tbl in pairs(cfgs[name])do for k,v in pairs(tbl)do St[t][k]=v end end;for t,tbl in pairs(uiT)do for k,dt in pairs(tbl)do local v=St[t][k];dt.btn.BackgroundColor3=v and Th.Accent or Th.Btn;dt.dot.Position=v and UDim2.new(1,-16,0.5,-7)or UDim2.new(0,2,0.5,-7)end end;for t,tbl in pairs(uiS)do for k,dt in pairs(tbl)do local v=St[t][k];dt.val.Text=tostring(v);dt.fill.Size=UDim2.new((v-dt.min)/(dt.max-dt.min),0,1,0)end end;print("Loaded: "..name)end
local cfgName="default";local nameBox=Instance.new("TextBox",ST);nameBox.Size=UDim2.new(1,-8,0,30);nameBox.BackgroundColor3=Th.Elem;nameBox.Text=cfgName;nameBox.TextColor3=Th.Text;nameBox.PlaceholderText="Config name...";nameBox.Font=Enum.Font.Gotham;nameBox.TextSize=13;nameBox.BorderSizePixel=0;nameBox.LayoutOrder=50;Instance.new("UICorner",nameBox).CornerRadius=UDim.new(0,6);nameBox.FocusLost:Connect(function()cfgName=nameBox.Text end)
mkB(ST,"Save Config",51,function()saveCfg(cfgName)end,Color3.fromRGB(50,150,50));mkB(ST,"Load Config",52,function()loadCfg(cfgName)end,Color3.fromRGB(50,100,200));mkB(ST,"Delete Config",53,function()cfgs[cfgName]=nil;print("Deleted: "..cfgName)end,Color3.fromRGB(200,50,50));mkB(ST,"Create New Config",54,function()cfgName="new_"..math.random(1000,9999);nameBox.Text=cfgName;saveCfg(cfgName)end,Color3.fromRGB(150,150,50))
local fv;R.Heartbeat:Connect(function()fu.Visible=St.Move.Fly;fd.Visible=St.Move.Fly;if not L.Character then return end;local hr=L.Character:FindFirstChild("HumanoidRootPart");local hm=L.Character:FindFirstChildOfClass("Humanoid");if not hr or not hm then return end;if St.Move.Fly then if not fv then fv=Instance.new("BodyVelocity");fv.MaxForce=Vector3.new(1e5,1e5,1e5);fv.Parent=hr end;local md=hm.MoveDirection;local dr=md.Magnitude>0 and md.Unit or Vector3.new(0,0,0);if up then dr=dr+Vector3.new(0,1,0)end;if dn then dr=dr+Vector3.new(0,-1,0)end;if dr.Magnitude>0 then dr=dr.Unit end;fv.Velocity=dr*St.Move.FlySpeed;hm.PlatformStand=true else if fv then fv:Destroy();fv=nil end;if hm.PlatformStand then hm.PlatformStand=false end end;if St.Move.Noclip then for _,x in ipairs(L.Character:GetDescendants())do if x:IsA("BasePart")and x.CanCollide then x.CanCollide=false end end end end)
task.spawn(function()while task.wait(60)do if St.Misc.AntiAFK then V:CaptureController();V:ClickButton2(Vector2.new())end end end)
R.RenderStepped:Connect(function()if St.Misc.Fullbright then game.Lighting.Ambient=Color3.fromRGB(255,255,255);game.Lighting.OutdoorAmbient=Color3.fromRGB(255,255,255);game.Lighting.Brightness=2 else game.Lighting.Ambient=Color3.fromRGB(70,70,70);game.Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128);game.Lighting.Brightness=1 end end)
task.spawn(function()while task.wait(St.Misc.ClickDelay)do if St.Misc.AutoClick then V:CaptureController();V:ClickButton1(Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2))end;if St.Misc.AutoFarm then V:CaptureController();V:ClickButton1(Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2))end end end)
local at=nil;S.InputBegan:Connect(function(i,g)if g then return end;if(i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch)and St.Aim.Enable and St.Aim.Silent and at then local sc=C.CFrame;C.CFrame=CFrame.new(C.CFrame.Position,at.Position);task.wait();C.CFrame=sc end end)
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
	if at and not St.Aim.Silent then
		local tc=CFrame.new(C.CFrame.Position,at.Position);local sf=1-(St.Aim.Smooth/100)
		C.CFrame=C.CFrame:Lerp(tc,sf*0.5)
	end
end)
local fc=Instance.new("Frame",G);fc.Size=UDim2.new(0,0,0,0);fc.AnchorPoint=Vector2.new(0.5,0.5);fc.BackgroundTransparency=1;fc.BorderSizePixel=0;fc.Visible=false;local fs=Instance.new("UIStroke",fc);fs.Color=Color3.fromRGB(70,140,255);fs.Thickness=2;Instance.new("UICorner",fc).CornerRadius=UDim.new(0,9999)
R.RenderStepped:Connect(function()if St.Aim.FOV and St.Aim.Enable then fc.Visible=true;local s=St.Aim.FOVSize;fc.Size=UDim2.new(0,s*2,0,s*2);fc.Position=UDim2.new(0.5,0,0.5,0)else fc.Visible=false end end)
local df=Instance.new("Folder",G);df.Name="D";local ec={};local function clr()for _,v in pairs(ec)do for _,i in pairs(v)do if i.Parent then i:Destroy()end end end;ec={}end
local function crESP(p,ch)
	if not St.ESP.Enable then return end
	if St.ESP.TeamCheck and p.Team==L.Team then return end
	local hr=ch:FindFirstChild("HumanoidRootPart");local hm=ch:FindFirstChildOfClass("Humanoid")
	if not hr or not hm then return end
	local hl=Instance.new("Highlight",df);hl.Adornee=ch;hl.FillTransparency=1;hl.OutlineTransparency=0;hl.OutlineColor=Color3.fromRGB(70,140,255);hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
	local bx=Instance.new("Frame",df);bx.BackgroundTransparency=1;bx.BorderSizePixel=0
	local bs=Instance.new("UIStroke",bx);bs.Color=Color3.fromRGB(70,140,255);bs.Thickness=1
	local nl=Instance.new("TextLabel",df);nl.BackgroundTransparency=1;nl.Text=p.Name;nl.TextColor3=Color3.fromRGB(255,255,255);nl.Font=Enum.Font.GothamBold;nl.TextStrokeTransparency=0
	local hb=Instance.new("Frame",df);hb.BackgroundColor3=Color3.fromRGB(70,200,70);hb.BorderSizePixel=0
	local dl=Instance.new("TextLabel",df);dl.BackgroundTransparency=1;dl.TextColor3=Color3.fromRGB(200,200,200);dl.Font=Enum.Font.Gotham;dl.TextStrokeTransparency=0
	local tr=Instance.new("Frame",df);tr.BackgroundColor3=Color3.fromRGB(70,140,255);tr.BorderSizePixel=0
	local tl=Instance.new("TextLabel",df);tl.BackgroundTransparency=1;tl.TextColor3=Color3.fromRGB(255,220,120);tl.Font=Enum.Font.Gotham;tl.TextStrokeTransparency=0
	ec[p]={hl,bx,bs,nl,hb,dl,tr,tl}
	local cn;cn=R.RenderStepped:Connect(function()
		if not(St.ESP.Enable and hl.Parent and hr.Parent)then
			for _,i in pairs(ec[p])do i:Destroy()end
			ec[p]=nil;cn:Disconnect();return
		end
		local hd=St.ESP.TeamCheck and p.Team==L.Team
		hl.Enabled=not hd and St.ESP.Highlight;bx.Visible=not hd and St.ESP.Box
		nl.Visible=St.ESP.Name and not hd;hb.Visible=St.ESP.Health and not hd;dl.Visible=St.ESP.Distance and not hd;tr.Visible=St.ESP.Tracer and not hd;tl.Visible=St.ESP.Tool and not hd
		local ps,on=C:WorldToViewportPoint(hr.Position);local d=(C.CFrame.Position-hr.Position).Magnitude
		if d>St.ESP.MaxDist or not on then
			hl.Enabled=false;bx.Visible=false;nl.Visible=false;hb.Visible=false;dl.Visible=false;tr.Visible=false;tl.Visible=false;return
		end
		local h=ch:FindFirstChild("Head");local ty=ps.Y
		if h then local hp,ho=C:WorldToViewportPoint(h.Position+Vector3.new(0,0.5,0));if ho then ty=hp.Y end end
		local ht=math.max(20,(ps.Y-ty)*1.2);local bw=ht*0.5
		bx.Size=UDim2.new(0,bw,0,ht);bx.Position=UDim2.new(0,ps.X-bw/2,0,ty)
		nl.Size=UDim2.new(0,150,0,St.ESP.TextSize+2);nl.TextSize=St.ESP.TextSize;nl.Position=UDim2.new(0,ps.X-75,0,ty-St.ESP.TextSize-4)
		local hpc=hm.Health/hm.MaxHealth
		hb.Size=UDim2.new(0,3,0,ht*hpc);hb.Position=UDim2.new(0,ps.X-bw/2-6,0,ty+ht*(1-hpc));hb.BackgroundColor3=Color3.fromRGB(255*(1-hpc),255*hpc,70)
		dl.Size=UDim2.new(0,100,0,12);dl.TextSize=St.ESP.TextSize-2;dl.Text=math.floor(d).."m";dl.Position=UDim2.new(0,ps.X-50,0,ps.Y+20)
		if St.ESP.Tracer then
			local vp=C.ViewportSize;local sx,sy=vp.X/2,vp.Y
			local dx,dy=ps.X-sx,ps.Y-sy;local ln=math.sqrt(dx*dx+dy*dy)
			tr.Size=UDim2.new(0,1,0,ln);tr.Position=UDim2.new(0,sx,0,sy);tr.Rotation=math.deg(math.atan2(dy,dx))+90
		end
		local t=ch:FindFirstChildOfClass("Tool")
		tl.Size=UDim2.new(0,120,0,12);tl.TextSize=St.ESP.TextSize-2;tl.Text=t and t.Name or "";tl.Position=UDim2.new(0,ps.X-60,0,ps.Y+36)
	end)
end
local function rESP()clr();if not St.ESP.Enable then return end;for _,p in ipairs(P:GetPlayers())do if p~=L and p.Character then crESP(p,p.Character)end end end
local oe=St.ESP.Enable;R.Heartbeat:Connect(function()if St.ESP.Enable~=oe then oe=St.ESP.Enable;rESP()end end)P.PlayerAdded:Connect(function(p)p.CharacterAdded:Connect(function(c)task.wait(0.5);if St.ESP.Enable then crESP(p,c)end end)end)for _,p in ipairs(P:GetPlayers())do if p~=L then p.CharacterAdded:Connect(function(c)task.wait(0.5);if St.ESP.Enable then crESP(p,c)end end)end end
local mi=false;Mn.MouseButton1Click:Connect(function()mi=not mi;Ct.Visible=not mi;M.Size=mi and UDim2.new(0,M.Size.X.Offset,0,36)or UDim2.new(0,500,0,400);if not mi then rescale()end end)
applyTheme()

-- ==== КРАСИВАЯ АНИМАЦИЯ ====
local Sp=Instance.new("Frame",G);Sp.Size=UDim2.new(1,0,1,0);Sp.BackgroundColor3=Color3.fromRGB(8,8,12);Sp.BorderSizePixel=0;Sp.ZIndex=100;Sp.BackgroundTransparency=0
local SpFlash=Instance.new("Frame",Sp);SpFlash.Size=UDim2.new(0,0,0,0);SpFlash.Position=UDim2.new(0.5,0,0.5,0);SpFlash.AnchorPoint=Vector2.new(0.5,0.5);SpFlash.BackgroundColor3=Th.Accent;SpFlash.BorderSizePixel=0;SpFlash.ZIndex=102;SpFlash.BackgroundTransparency=1;Instance.new("UICorner",SpFlash).CornerRadius=UDim.new(0,9999)
local SpLines=Instance.new("Frame",Sp);SpLines.Size=UDim2.new(1,0,1,0);SpLines.BackgroundTransparency=1;SpLines.ZIndex=101
local lineData={}for i=1,12 do local ln=Instance.new("Frame",SpLines);ln.Size=UDim2.new(0,2,0,0);ln.Position=UDim2.new(0.5,0,0.5,0);ln.AnchorPoint=Vector2.new(0.5,1);ln.BackgroundColor3=Th.Accent;ln.BorderSizePixel=0;ln.Rotation=i*30;ln.BackgroundTransparency=1;lineData[i]=ln end
local SpLogo=Instance.new("TextLabel",Sp);SpLogo.Size=UDim2.new(1,0,0,100);SpLogo.Position=UDim2.new(0,0,0.5,-50);SpLogo.BackgroundTransparency=1;SpLogo.Text="HELPER";SpLogo.TextColor3=Th.Accent;SpLogo.Font=Enum.Font.GothamBlack;SpLogo.TextSize=64;SpLogo.TextTransparency=1;SpLogo.ZIndex=103;SpLogo.TextStrokeTransparency=1
local SpSub=Instance.new("TextLabel",Sp);SpSub.Size=UDim2.new(1,0,0,30);SpSub.Position=UDim2.new(0,0,0.5,60);SpSub.BackgroundTransparency=1;SpSub.Text="SYSTEM INITIALIZED";SpSub.TextColor3=Color3.fromRGB(180,180,200);SpSub.Font=Enum.Font.Gotham;SpSub.TextSize=14;SpSub.TextTransparency=1;SpSub.ZIndex=103;SpSub.TextStrokeTransparency=1
SpFlash.BackgroundTransparency=0.8;TS:Create(SpFlash,TweenInfo.new(0.4),{Size=UDim2.new(0,2000,0,2000),BackgroundTransparency=1}):Play()
for i,ln in ipairs(lineData)do TS:Create(ln,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size=UDim2.new(0,2,0,200),BackgroundTransparency=0.3}):Play()end
task.wait(0.2)
for i,ln in ipairs(lineData)do TS:Create(ln,TweenInfo.new(0.6,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{Size=UDim2.new(0,2,0,0),BackgroundTransparency=1}):Play()end
TS:Create(SpLogo,TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{TextTransparency=0,TextStrokeTransparency=0}):Play()
SpLogo.TextStrokeTransparency=0;SpLogo.TextStrokeColor3=Th.Accent;SpLogo.TextStrokeTransparency=1;TS:Create(SpLogo,TweenInfo.new(0.8,Enum.EasingStyle.Back),{TextStrokeTransparency=0.5}):Play()
TS:Create(SpSub,TweenInfo.new(0.5),{TextTransparency=0}):Play()
task.wait(1.2)
TS:Create(Sp,TweenInfo.new(0.5),{BackgroundTransparency=1}):Play()
TS:Create(SpLogo,TweenInfo.new(0.4),{TextTransparency=1,TextStrokeTransparency=1}):Play()
TS:Create(SpSub,TweenInfo.new(0.3),{TextTransparency=1}):Play()
task.wait(0.5);Sp:Destroy()
M.Visible=true;M.Size=UDim2.new(0,0,0,0);M.Position=UDim2.new(0.5,0,0.5,0)
TS:Create(M,TweenInfo.new(0.6,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out),{Size=UDim2.new(0,500,0,400),Position=UDim2.new(0.5,-250,0.5,-200)}):Play()
task.wait(0.6);rescale()
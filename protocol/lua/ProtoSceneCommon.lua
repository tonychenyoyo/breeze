 
Proto4z.SCENE_NONE = 0--无效 
Proto4z.SCENE_HOME = 1--主城 
Proto4z.SCENE_MELEE = 2--乱斗场 
Proto4z.SCENE_ARENA = 3--竞技场 
Proto4z.SCENE_GUILD = 4--公会 
Proto4z.SCENE_MASTER_INSTANCING = 5--主线副本 
Proto4z.SCENE_BRANCH_INSTANCING = 6--支线副本 
Proto4z.SCENE_MAX = 7--最大类型数值. 扩展类型在该枚举之前插入新类型. 
 
Proto4z.SCENE_STATE_NONE = 0--不存在 
Proto4z.SCENE_STATE_MATCHING = 1--匹配中 
Proto4z.SCENE_STATE_CHOISE = 2--选择英雄 
Proto4z.SCENE_STATE_ALLOCATE = 3--服务器分配场景中 
Proto4z.SCENE_STATE_WAIT = 4--等待玩家加入战场 
Proto4z.SCENE_STATE_ACTIVE = 5--战斗中 
 
Proto4z.register(2000,"EntityModel") 
Proto4z.EntityModel = {}  
Proto4z.EntityModel.__protoID = 2000 
Proto4z.EntityModel.__protoName = "EntityModel" 
Proto4z.EntityModel[1] = {name="eid", type="ui64" }  
Proto4z.EntityModel[2] = {name="modelID", type="ui64" }  
Proto4z.EntityModel[3] = {name="modelName", type="string" }  
Proto4z.EntityModel[4] = {name="avatarID", type="ui64" }  
Proto4z.EntityModel[5] = {name="avatarName", type="string" }  
Proto4z.EntityModel[6] = {name="iconID", type="ui64" } --头像 
Proto4z.EntityModel[7] = {name="level", type="double" } --等级 
Proto4z.EntityModel[8] = {name="exp", type="double" } --经验 
Proto4z.EntityModel[9] = {name="gold", type="double" } --金币 
Proto4z.EntityModel[10] = {name="camp", type="ui16" }  
Proto4z.EntityModel[11] = {name="etype", type="ui16" }  
Proto4z.EntityModel[12] = {name="state", type="ui16" }  
 
Proto4z.EntityModelArray = {}  
Proto4z.EntityModelArray.__protoName = "EntityModelArray" 
Proto4z.EntityModelArray.__protoDesc = "array" 
Proto4z.EntityModelArray.__protoTypeV = "EntityModel" 
 
Proto4z.EntityModelMap = {}  
Proto4z.EntityModelMap.__protoName = "EntityModelMap" 
Proto4z.EntityModelMap.__protoDesc = "map" 
Proto4z.EntityModelMap.__protoTypeK = "ui64" 
Proto4z.EntityModelMap.__protoTypeV = "EntityModel" 
 
Proto4z.register(2001,"SceneGroupAvatarInfo") 
Proto4z.SceneGroupAvatarInfo = {}  
Proto4z.SceneGroupAvatarInfo.__protoID = 2001 
Proto4z.SceneGroupAvatarInfo.__protoName = "SceneGroupAvatarInfo" 
Proto4z.SceneGroupAvatarInfo[1] = {name="areaID", type="ui64" } --考虑混服情况,必须指定该玩家来自哪个当前区 
Proto4z.SceneGroupAvatarInfo[2] = {name="model", type="EntityModel" } --玩家基础数据 
Proto4z.SceneGroupAvatarInfo[3] = {name="fixedProps", type="DictProp" } --基础固定属性 
Proto4z.SceneGroupAvatarInfo[4] = {name="growthProps", type="DictProp" } --成长基础属性 
Proto4z.SceneGroupAvatarInfo[5] = {name="growths", type="DictProp" } --成长系数 
Proto4z.SceneGroupAvatarInfo[6] = {name="powerType", type="ui16" } --组队权限: 0普通,1leader,2master 
Proto4z.SceneGroupAvatarInfo[7] = {name="token", type="string" } --scene服务器的口令, 该字段在广播给客户端时需要清空非自己所属的token,否则将会造成token公开. 
 
Proto4z.SceneGroupAvatarInfoArray = {}  
Proto4z.SceneGroupAvatarInfoArray.__protoName = "SceneGroupAvatarInfoArray" 
Proto4z.SceneGroupAvatarInfoArray.__protoDesc = "array" 
Proto4z.SceneGroupAvatarInfoArray.__protoTypeV = "SceneGroupAvatarInfo" 
 
Proto4z.SceneGroupAvatarInfoMap = {}  
Proto4z.SceneGroupAvatarInfoMap.__protoName = "SceneGroupAvatarInfoMap" 
Proto4z.SceneGroupAvatarInfoMap.__protoDesc = "map" 
Proto4z.SceneGroupAvatarInfoMap.__protoTypeK = "ui64" 
Proto4z.SceneGroupAvatarInfoMap.__protoTypeV = "SceneGroupAvatarInfo" 
 
Proto4z.register(2002,"SceneGroupInfo") 
Proto4z.SceneGroupInfo = {} --编队数据 
Proto4z.SceneGroupInfo.__protoID = 2002 
Proto4z.SceneGroupInfo.__protoName = "SceneGroupInfo" 
Proto4z.SceneGroupInfo[1] = {name="groupID", type="ui64" }  
Proto4z.SceneGroupInfo[2] = {name="sceneType", type="ui16" } --场景类型 
Proto4z.SceneGroupInfo[3] = {name="sceneState", type="ui16" } --状态 
Proto4z.SceneGroupInfo[4] = {name="mapID", type="ui64" }  
Proto4z.SceneGroupInfo[5] = {name="lineID", type="ui64" } --分线ID 
Proto4z.SceneGroupInfo[6] = {name="sceneID", type="ui64" } --场景实例ID 
Proto4z.SceneGroupInfo[7] = {name="host", type="string" } --服务器host 
Proto4z.SceneGroupInfo[8] = {name="port", type="ui16" } --服务器port 
Proto4z.SceneGroupInfo[9] = {name="members", type="SceneGroupAvatarInfoMap" } --队友数据 
Proto4z.SceneGroupInfo[10] = {name="invitees", type="ServiceIDMap" } --邀请列表, 如果需要丰富该功能可扩展类型信息 
 
Proto4z.SceneGroupInfoArray = {}  
Proto4z.SceneGroupInfoArray.__protoName = "SceneGroupInfoArray" 
Proto4z.SceneGroupInfoArray.__protoDesc = "array" 
Proto4z.SceneGroupInfoArray.__protoTypeV = "SceneGroupInfo" 
 
Proto4z.SceneGroupInfoMap = {}  
Proto4z.SceneGroupInfoMap.__protoName = "SceneGroupInfoMap" 
Proto4z.SceneGroupInfoMap.__protoDesc = "map" 
Proto4z.SceneGroupInfoMap.__protoTypeK = "ui64" 
Proto4z.SceneGroupInfoMap.__protoTypeV = "SceneGroupInfo" 
 
Proto4z.EntityIDArray = {}  
Proto4z.EntityIDArray.__protoName = "EntityIDArray" 
Proto4z.EntityIDArray.__protoDesc = "array" 
Proto4z.EntityIDArray.__protoTypeV = "ui64" 
 
Proto4z.register(2003,"EPosition") 
Proto4z.EPosition = {}  
Proto4z.EPosition.__protoID = 2003 
Proto4z.EPosition.__protoName = "EPosition" 
Proto4z.EPosition[1] = {name="x", type="double" }  
Proto4z.EPosition[2] = {name="y", type="double" }  
 
Proto4z.EPositionArray = {}  
Proto4z.EPositionArray.__protoName = "EPositionArray" 
Proto4z.EPositionArray.__protoDesc = "array" 
Proto4z.EPositionArray.__protoTypeV = "EPosition" 
 
Proto4z.SkillIDArray = {} --技能ID数组 
Proto4z.SkillIDArray.__protoName = "SkillIDArray" 
Proto4z.SkillIDArray.__protoDesc = "array" 
Proto4z.SkillIDArray.__protoTypeV = "ui64" 
 
Proto4z.BuffIDArray = {} --buff ID 数组 
Proto4z.BuffIDArray.__protoName = "BuffIDArray" 
Proto4z.BuffIDArray.__protoDesc = "array" 
Proto4z.BuffIDArray.__protoTypeV = "ui64" 
 
Proto4z.ENTITY_STATE_NONE = 0--无效 
Proto4z.ENTITY_STATE_FREEZING = 1--冻结, 不可被攻击,不可主动移动,攻击等 
Proto4z.ENTITY_STATE_ACTIVE = 2--活跃状态 
Proto4z.ENTITY_STATE_LIE = 3--跪, 不计死亡次数 
Proto4z.ENTITY_STATE_DIED = 4--死, 记死亡次数 
 
Proto4z.ENTITY_NONE = 0 
Proto4z.ENTITY_PLAYER = 1 
Proto4z.ENTITY_AI = 2 
Proto4z.ENTITY_FLIGHT = 3--飞行道具 
 
Proto4z.ENTITY_CAMP_NONE = 0 
Proto4z.ENTITY_CAMP_RED = 1--红方 
Proto4z.ENTITY_CAMP_BLUE = 2--蓝方 
Proto4z.ENTITY_CAMP_NEUTRAL = 1000--[0~ENTITY_CAMP_NEUTRAL)阵营相互敌对, [ENTITY_CAMP_NEUTRAL~)中立温和阵营 
 
Proto4z.MOVE_ACTION_IDLE = 0--空闲 
Proto4z.MOVE_ACTION_FOLLOW = 1--跟随 
Proto4z.MOVE_ACTION_PATH = 2--路径 
Proto4z.MOVE_ACTION_PASV_PATH = 3--不可取消, 直线移动一次. 
Proto4z.MOVE_ACTION_FORCE_PATH = 4--不可取消&穿越地形, 直线移动一次 
 
Proto4z.SCENE_EVENT_LIE = 0 
Proto4z.SCENE_EVENT_DIED = 1 
Proto4z.SCENE_EVENT_FREEZE = 2 
Proto4z.SCENE_EVENT_REBIRTH = 3 
Proto4z.SCENE_EVENT_HARM_ATTACK = 4 
Proto4z.SCENE_EVENT_HARM_HILL = 5 
Proto4z.SCENE_EVENT_HARM_MISS = 6 
Proto4z.SCENE_EVENT_HARM_CRITICAL = 7 
 
Proto4z.register(2008,"SceneEventInfo") 
Proto4z.SceneEventInfo = {} --伤害数据 
Proto4z.SceneEventInfo.__protoID = 2008 
Proto4z.SceneEventInfo.__protoName = "SceneEventInfo" 
Proto4z.SceneEventInfo[1] = {name="src", type="ui64" } --eid 
Proto4z.SceneEventInfo[2] = {name="dst", type="ui64" } --eid 
Proto4z.SceneEventInfo[3] = {name="ev", type="ui16" } --事件类型 
Proto4z.SceneEventInfo[4] = {name="val", type="double" } --数值 
Proto4z.SceneEventInfo[5] = {name="mix", type="string" } --数值 
 
Proto4z.SceneEventInfoArray = {}  
Proto4z.SceneEventInfoArray.__protoName = "SceneEventInfoArray" 
Proto4z.SceneEventInfoArray.__protoDesc = "array" 
Proto4z.SceneEventInfoArray.__protoTypeV = "SceneEventInfo" 
 
Proto4z.register(2011,"EntityState") 
Proto4z.EntityState = {} --EntityState 
Proto4z.EntityState.__protoID = 2011 
Proto4z.EntityState.__protoName = "EntityState" 
Proto4z.EntityState[1] = {name="eid", type="ui64" } --eid 
Proto4z.EntityState[2] = {name="camp", type="ui16" } --阵营 
Proto4z.EntityState[3] = {name="groupID", type="ui64" } --组队ID 
Proto4z.EntityState[4] = {name="etype", type="ui16" } --实体类型 
Proto4z.EntityState[5] = {name="state", type="ui16" } --状态 
Proto4z.EntityState[6] = {name="foe", type="ui64" } --锁定的敌人 
Proto4z.EntityState[7] = {name="leader", type="ui64" } --实体的老大, 如果是飞行道具 这个指向施放飞行道具的人 
Proto4z.EntityState[8] = {name="curHP", type="double" } --当前的血量 
 
Proto4z.EntityStateArray = {}  
Proto4z.EntityStateArray.__protoName = "EntityStateArray" 
Proto4z.EntityStateArray.__protoDesc = "array" 
Proto4z.EntityStateArray.__protoTypeV = "EntityState" 
 
Proto4z.register(2012,"EntityMove") 
Proto4z.EntityMove = {} --EntityMove 
Proto4z.EntityMove.__protoID = 2012 
Proto4z.EntityMove.__protoName = "EntityMove" 
Proto4z.EntityMove[1] = {name="eid", type="ui64" } --eid 
Proto4z.EntityMove[2] = {name="position", type="EPosition" } --当前坐标 
Proto4z.EntityMove[3] = {name="action", type="ui16" } --移动状态 
Proto4z.EntityMove[4] = {name="realSpeed", type="double" } --实时速度 
Proto4z.EntityMove[5] = {name="expectSpeed", type="double" } --期望速度 
Proto4z.EntityMove[6] = {name="waypoints", type="EPositionArray" } --移动路点 
Proto4z.EntityMove[7] = {name="follow", type="ui64" } --eid 
 
Proto4z.EntityMoveArray = {}  
Proto4z.EntityMoveArray.__protoName = "EntityMoveArray" 
Proto4z.EntityMoveArray.__protoDesc = "array" 
Proto4z.EntityMoveArray.__protoTypeV = "EntityMove" 
 
Proto4z.register(2013,"EntityReport") 
Proto4z.EntityReport = {} --EntityReport 
Proto4z.EntityReport.__protoID = 2013 
Proto4z.EntityReport.__protoName = "EntityReport" 
Proto4z.EntityReport[1] = {name="eid", type="ui64" } --eid 
Proto4z.EntityReport[2] = {name="killOtherCount", type="ui64" } --杀死其他玩家次数 
Proto4z.EntityReport[3] = {name="killOtherTime", type="ui64" } --杀死其他玩家的时间 
Proto4z.EntityReport[4] = {name="diedCount", type="ui64" } --死亡次数 
Proto4z.EntityReport[5] = {name="topMultiKills", type="ui64" } --最高连杀次数 
Proto4z.EntityReport[6] = {name="curMultiKills", type="ui64" } --当前连杀次数 
 
Proto4z.EntityReportArray = {}  
Proto4z.EntityReportArray.__protoName = "EntityReportArray" 
Proto4z.EntityReportArray.__protoDesc = "array" 
Proto4z.EntityReportArray.__protoTypeV = "EntityReport" 
 
Proto4z.register(2014,"EntityFullData") 
Proto4z.EntityFullData = {} --EntityFullData 
Proto4z.EntityFullData.__protoID = 2014 
Proto4z.EntityFullData.__protoName = "EntityFullData" 
Proto4z.EntityFullData[1] = {name="model", type="EntityModel" } --玩家基础数据 
Proto4z.EntityFullData[2] = {name="fixedProps", type="DictProp" } --基础固定属性 
Proto4z.EntityFullData[3] = {name="growthProps", type="DictProp" } --成长基础属性 
Proto4z.EntityFullData[4] = {name="growths", type="DictProp" } --成长系数 
Proto4z.EntityFullData[5] = {name="props", type="DictProp" } --当前 
Proto4z.EntityFullData[6] = {name="state", type="EntityState" }  
Proto4z.EntityFullData[7] = {name="mv", type="EntityMove" }  
Proto4z.EntityFullData[8] = {name="report", type="EntityReport" }  
 
Proto4z.EntityFullDataArray = {}  
Proto4z.EntityFullDataArray.__protoName = "EntityFullDataArray" 
Proto4z.EntityFullDataArray.__protoDesc = "array" 
Proto4z.EntityFullDataArray.__protoTypeV = "EntityFullData" 
 
Proto4z.register(2015,"SceneSection") 
Proto4z.SceneSection = {} --场景全景切片数据 
Proto4z.SceneSection.__protoID = 2015 
Proto4z.SceneSection.__protoName = "SceneSection" 
Proto4z.SceneSection[1] = {name="sceneID", type="ui64" }  
Proto4z.SceneSection[2] = {name="sceneType", type="ui16" }  
Proto4z.SceneSection[3] = {name="sceneState", type="ui16" }  
Proto4z.SceneSection[4] = {name="sceneStartTime", type="double" } --服务器战场开始时间 
Proto4z.SceneSection[5] = {name="sceneEndTime", type="double" } --服务器战场结束时间 
Proto4z.SceneSection[6] = {name="serverTime", type="double" } --服务器当前时间 
Proto4z.SceneSection[7] = {name="entitys", type="EntityFullDataArray" } --这里包含有所有当前场景下的实体属性和状态数据 

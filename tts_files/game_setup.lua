function Set_Event_Variables(player, option, id)
    Global.setVar("Event_Name", option)
    self.UI.setValue("event", option)
    self.UI.setValue("fevent", option)
    local Events = Global.getTable("Events")
    for event in ipairs(Events) do
      if Events[event].Name == option then
        if Events[event].Villain != "" then
          self.UI.setValue("villain", Events[event].Villain)
          self.UI.setAttribute("villain_d", "interactable", false)
          self.UI.setAttribute("villain_r", "interactable", false)
          Global.setVar("Villain_Name", Events[event].Villain)
        end

        if Events[event].Environment != nil then
          self.UI.setValue("environment", Events[event].Environment)
          self.UI.setAttribute("environment_d", "interactable", false)
          Global.setVar("Environment_Name", Events[event].Environment)
        end

        self.UI.setValue("setup_button", "See Collections")
        break
      else
        self.UI.setAttribute("villain_r", "interactable", true)
        self.UI.setAttribute("villain_d", "interactable", true)
        self.UI.setAttribute("environment_d", "interactable", true)
        self.UI.setValue("setup_button", "Select Heroes")
      end
    end
  end

  ---go to first menu
  function Start_Over()
    self.UI.setAttribute("setup", "visibility", "")
    self.UI.setAttribute("event_select", "visibility", "invisible")
    self.UI.setAttribute("collections", "visibility", "invisible")
    self.UI.setAttribute("Heroes", "visibility", "invisible")
    self.UI.setAttribute("Final_review", "visibility", "invisible")
  end

  --change collection value
  function Set_collection_Variables(player, option, id)
    self.UI.setValue(string.sub(id, 1, 11), option)
    self.UI.setValue("f"..string.sub(id, 1, 11), option)
  end

  --change hero value
  function Set_hero_Variables(player, option, id)
    local stop = string.find(id, "_")
    self.UI.setValue(string.sub(id,1,stop-1).."_sel", option)
    self.UI.setValue("f"..string.sub(id,1,stop-1), option)
  end

  --change environment value
  function Set_Environment_Variables(player, option, id)
    Global.setVar("Environment_Name", option)
    self.UI.setValue("environment", option)
    self.UI.setValue("fenvironment", option)
  end

  --change villain variable
  function Set_Villain_Variables(player, option, id)
    Global.setVar("Villain_Name", option)
    self.UI.setValue("villain", option)
    self.UI.setValue("fvillain", option)

    local Events = Global.getTable("Events")

    for count = 1, #Events do
      if Events[count].Villain == option and Events[count].Tooltip == 'Story Event' then
        self.UI.setValue("vevent", "Event:" .. Events[count].Name)
      end

      if Events[count].Villain == option and Events[count].Tooltip == 'Critical Event' then
        self.UI.setValue("vce", "Critical Event:" .. Events[count].Name)
      end
    end
  end


  function update_isOn(player, toggleStatus, toggleID)
      local GameExpansions = Global.getTable("GameExpansions")

      GameExpansions[toggleID] = toggleStatus
      Global.setTable("GameExpansions", GameExpansions)
  end

  function go_to_events()
    self.UI.setAttribute("setup", "visibility", "invisible")
    self.UI.setAttribute("event_select", "visibility", "")
  end
  --change UI To check for collections
  function go_to_collections()
    local check = nil
    local Events = Global.getTable("Events")
    local Random = nil
    local Event_Name = self.UI.getValue('event')
    local collection_count = nil
    local GameExpansions = Global.getTable("GameExpansions")

    if Event_Name == "None" then
      go_to_heroes()
    else

     if Event_Name == 'Random' then
       randomize_event(Event_Name)
      --[[  while Random == nil do
          Random_Num = math.random(#Events)
          Random = Events[Random_Num].Name
          Random_Set = Events[Random_Num].Set

          if GameExpansions[Random_Set .. '_V_toggle'] != 'True' then
            Random = nil
          end
        end
          Event_Name = Random
          Random = nil]]
      end

      for event in ipairs(Events) do
        if Events[event].Name == Event_Name then
          collection_count = Events[event].Set_Collection
          self.UI.setValue('villain', Events[event].Villain)
          self.UI.setValue('fvillain', Events[event].Villain)
          break
        end
      end

      self.UI.setAttribute("event_select", "visibility", "invisible")
      self.UI.setAttribute("collections", "visibility", "")
      self.UI.setValue('collection_number', 'For the ' .. Event_Name .. ' event. Select up to ' .. collection_count .. ' collection(s)')

      if collection_count != nil and collection_count > 0 then
        for number = 1,collection_count do
          self.UI.setAttribute('collection'.. number ..'_d', "interactable", true)
        end
      end
    end
  end

  function go_to_heroes(player, option, id)
    for number = 1,5 do
      if self.UI.getValue('collection'..number) == self.UI.getValue("event") and self.UI.getValue('event') != "None" then
        broadcastToAll('You cannot use the collection for the event of the same name')
        return
      elseif (self.UI.getValue('collection1') == self.UI.getValue('collection2') and self.UI.getValue('collection2') != "None" and self.UI.getValue('collection2') != "Random")
        or (self.UI.getValue('collection1') == self.UI.getValue('collection3') and self.UI.getValue('collection3') != "None" and self.UI.getValue('collection3') != "Random")
        or (self.UI.getValue('collection1') == self.UI.getValue('collection4') and self.UI.getValue('collection4') != "None" and self.UI.getValue('collection4') != "Random")
        or (self.UI.getValue('collection1') == self.UI.getValue('collection5') and self.UI.getValue('collection5') != "None" and self.UI.getValue('collection5') != "Random")
        or (self.UI.getValue('collection2') == self.UI.getValue('collection3') and self.UI.getValue('collection3') != "None" and self.UI.getValue('collection3') != "Random")
        or (self.UI.getValue('collection2') == self.UI.getValue('collection4') and self.UI.getValue('collection4') != "None" and self.UI.getValue('collection4') != "Random")
        or (self.UI.getValue('collection2') == self.UI.getValue('collection5') and self.UI.getValue('collection5') != "None" and self.UI.getValue('collection5') != "Random")
        or (self.UI.getValue('collection3') == self.UI.getValue('collection4') and self.UI.getValue('collection4') != "None" and self.UI.getValue('collection4') != "Random")
        or (self.UI.getValue('collection3') == self.UI.getValue('collection5') and self.UI.getValue('collection5') != "None" and self.UI.getValue('collection5') != "Random")
        or (self.UI.getValue('collection4') == self.UI.getValue('collection5') and self.UI.getValue('collection5') != "None" and self.UI.getValue('collection5') != "Random")
        then
          broadcastToAll('Duplicate Collections found, please sell one')
          return
      end
    end

    local Environments = Global.getTable("Environments")
    local Villains = Global.getTable("Villains")
    local GameExpansions = Global.getTable("GameExpansions")
    local Villain_select = self.UI.getValue("villain")
    local Environment_select = self.UI.getValue("environment")

    --Randomize Villain selection button
  --[[  if Villain_select == 'Random' then
      while Random == nil do
        Random_Num = math.random(#Villains)
        Random = Villains[Random_Num].Name
        Random_Set = Villains[Random_Num].Set

        if GameExpansions[Random_Set .. '_V_toggle'] != 'True' then
          Random = nil
        end
      end

        Villain_Name = Random
        Random = nil
        self.UI.setValue('villain', Villain_Name)
        self.UI.setValue('fvillain', Villain_Name)
    else
      Villain_Name = Villain_select
    end
  ]]
    --Randomize environment selection button
  --[[  if Environment_select == 'Random' then
      while Random == nil do
        Random_Num = math.random(#Environments)
        Random = Environments[Random_Num].Name
        Random_Set = Environments[Random_Num].Set

        if GameExpansions[Random_Set .. '_E_toggle'] != 'True' then
          Random = nil
        end
      end
        Environment_Name = Random
        Random = nil
        self.UI.setValue('environment', Environment_Name)
        self.UI.setValue('fenvironment', Environment_Name)
    else
      Environment_Name = Environment_select
    end]]

    if self.UI.getValue('event') == 'Training Bot' then
       self.UI.setAttribute("Red_Seat", "interactable", false)
       self.UI.setAttribute("Red", "interactable", false)
       self.UI.setAttribute("Yellow_Seat", "interactable", false)
       self.UI.setAttribute("Yellow", "interactable", false)
       self.UI.setAttribute("Blue_Seat", "interactable", false)
       self.UI.setAttribute("Blue", "interactable", false)
       self.UI.setAttribute("Purple_Seat", "interactable", false)
       self.UI.setAttribute("Purple", "interactable", false)
    end
    self.UI.setAttribute("collections", "visibility", "invisible")
    self.UI.setAttribute("Heroes", "visibility", "")
  end

  ----Final Review
  function go_to_final_review()
      local Players = Global.getTable('Players_Active')
      local Heroes = Global.getTable('Heroes')
      local Random = nil
      local Hero_Index = nil
      local GameExpansions = Global.getTable('GameExpansions')

  --[[  for count= 1,5 do
      local player_color = Players[count].Color
      local Hero_Name = self.UI.getValue(player_color)

      --Randomize hero selection button
      if Hero_Name == 'Random' then
        while Random == nil do
          Random_Num = math.random(#Heroes)
          Random = Heroes[Random_Num].Name
          Random_Set = Heroes[Random_Num].Set

          if GameExpansions[Random_Set .. '_' .. player_color .. '_H_toggle'] != 'True' then
            Random = nil
          end
        end
        Hero_Name = Random
        Random = nil

        self.UI.setValue("f"..player_color, Hero_Name)
        self.UI.setValue(player_color, Hero_Name)

        for hero in ipairs(Heroes) do
          if Heroes[hero].Name == Hero_Name then
            Hero_Index = hero
            break
          end
        end
      remove_hero(Heroes, Hero_Index)
      end
    end
  ]]

    self.UI.setAttribute("Heroes", "visibility", "invisible")
    self.UI.setAttribute("Final_review", "visibility", "")

  end

  --------------------------------------------------------------------------------
  ----------------------------Randomize Functions---------------------------------
  --------------------------------------------------------------------------------
  function randomize_event()
    local Event_Name = nil
    local Random = nil
    local Events = Global.getTable("Events")
    local GameExpansions = Global.getTable("GameExpansions")
    local Villain = nil

    while Random == nil do
      Random_Num = math.random(#Events)
      Random = Events[Random_Num].Name
      Random_Set = Events[Random_Num].Set

      if GameExpansions[Random_Set .. '_V_toggle'] != 'True' then
        Random = nil
      end
    end
    Event_Name = Random
    Random = nil

    self.UI.setValue('event', Event_Name)
    self.UI.setValue('fevent', Event_Name)
    self.UI.setAttribute("villain_d", "interactable", false)
    self.UI.setAttribute("villain_r", "interactable", false)

    for event in ipairs(Events) do
      if Events[event].Name == Event_Name then
        self.UI.setValue('villain', Events[event].Villain)
        self.UI.setValue('fvillain', Events[event].Villain)
        Villain = Events[event].Villain
        break
      end
    end

    for count = 1, #Events do
      if Events[count].Villain == Villain and Events[count].Tooltip == 'Story Event' then
        self.UI.setValue("vevent", "Event:" .. Events[count].Name)
      end

      if Events[count].Villain == Villain and Events[count].Tooltip == 'Critical Event' then
        self.UI.setValue("vce", "Critical Event:" .. Events[count].Name)
      end
    end
  end

  function randomize_environment()
    local Environments = Global.getTable("Environments")
    local Random = nil
    local Random_Set = nil
    local GameExpansions = Global.getTable("GameExpansions")

    while Random == nil do
      Random_Num = math.random(#Environments)
      Random = Environments[Random_Num].Name
      Random_Set = Environments[Random_Num].Set

      if GameExpansions[Random_Set .. '_E_toggle'] != 'True' then
        Random = nil
      end
    end

      self.UI.setValue('environment', Random)
      self.UI.setValue('fenvironment', Random)

  end

  function randomize_villain()
    local Event_Name = nil
    local Random = nil
    local Random_Set = nil
    local Villains = Global.getTable("Villains")
    local GameExpansions = Global.getTable("GameExpansions")
    local Events = Global.getTable("Events")

    while Random == nil do
      Random_Num = math.random(#Villains)
      Random = Villains[Random_Num].Name
      Random_Set = Villains[Random_Num].Set

      if GameExpansions[Random_Set .. '_V_toggle'] != 'True' then
        Random = nil
      end
    end

    self.UI.setValue('villain', Random)
    self.UI.setValue('fvillain', Random)

    local vevent = 'n'
    local vce = 'n'

    for count = 1, #Events do
      if Events[count].Villain == Random and Events[count].Tooltip == 'Story Event' then
        self.UI.setValue("vevent", "Event:" .. Events[count].Name)
        vevent='y'
      elseif count == #Events and vevent == 'n' then
        self.UI.setValue("vevent", "Event:")
      end

      if Events[count].Villain == Random and Events[count].Tooltip == 'Critical Event' then
        self.UI.setValue("vce", "Critical Event:" .. Events[count].Name)
        vce='y'
      elseif count == #Events and vce =='n' then
        self.UI.setValue("vce", "CE:")
      end
    end
  end

  function randomize_hero(Player,click,player_color)
    local Random = nil
    local Random_Set = nil
    local Heroes = Global.getTable("Heroes")
    local GameExpansions = Global.getTable("GameExpansions")

    while Random == nil do
      Random_Num = math.random(#Heroes)
      Random = Heroes[Random_Num].Name
      Random_Set = Heroes[Random_Num].Set

      local toggleTag = Random_Set .. '_' .. player_color .. '_H_toggle'

      if GameExpansions[Random_Set .. '_' .. player_color .. '_H_toggle'] != 'True' then
        Random = nil
      end
    end
    Hero_Name = Random
    Random = nil

    self.UI.setValue("f"..player_color, Hero_Name)
    self.UI.setValue(player_color.."_sel", Hero_Name)

  end
  --------------------------------------------------------------------------------
  ---------------------------Start Game-------------------------------------------
  --------------------------------------------------------------------------------
  function start_game()

  --Check for duplicate heroes
    for number = 1,5 do
      if (self.UI.getValue('Red_sel') == self.UI.getValue("Yellow_sel") and self.UI.getValue('Yellow_sel') != "None")
        or (self.UI.getValue('Red_sel') == self.UI.getValue('Green_sel') and self.UI.getValue('Green_sel') != "None")
        or (self.UI.getValue('Red_sel') == self.UI.getValue('Blue_sel') and self.UI.getValue('Blue_sel') != "None")
        or (self.UI.getValue('Red_sel') == self.UI.getValue('Purple_sel') and self.UI.getValue('Purple_sel') != "None")
        or (self.UI.getValue('Yellow_sel') == self.UI.getValue('Green_sel') and self.UI.getValue('Green_sel') != "None")
        or (self.UI.getValue('Yellow_sel') == self.UI.getValue('Blue_sel') and self.UI.getValue('Blue_sel') != "None")
        or (self.UI.getValue('Yellow_sel') == self.UI.getValue('Purple_sel') and self.UI.getValue('Purple_sel') != "None")
        or (self.UI.getValue('Green_sel') == self.UI.getValue('Blue_sel') and self.UI.getValue('Blue_sel') != "None")
        or (self.UI.getValue('Green_sel') == self.UI.getValue('Blue_sel') and self.UI.getValue('Blue_sel') != "None")
        or (self.UI.getValue('Blue_sel') == self.UI.getValue('Purple_sel') and self.UI.getValue('Purple_sel') != "None")
        then
          broadcastToAll('Duplicate decks found. Go back and try again.')
          return
      end
    end

    if self.UI.getValue('villain') != "Training Bot" then
      if self.UI.getValue('villain') == "None" or self.UI.getValue('environment') == "None" then
        broadcastToAll("Go find a villain and where they are to fight")
        return
      end
    end

    local Players = Global.getTable('Players_Active')
    local count = nil
    local H = 0
    for count=1,5 do
      Color = Players[count].Color
      if self.UI.getValue(Color.."_sel") != "None" then
        H = H +1
      end
    end

  if self.UI.getValue('event') == 'Training Bot' then
    select_event(self.UI.getValue("event"))
  else
    if H < 3 then
      broadcastToAll('More heroes are needed in the fight')
      return
    end

    if self.UI.getValue("event") == "None" then
      select_environment(self.UI.getValue("environment"))
      select_villain(self.UI.getValue("villain"))
    else
      select_event(self.UI.getValue("event"))
      local Collection_Modifier = 0
      for number = 1,5 do
        select_collection(self.UI.getValue('collection'..number),Collection_Modifier)
        Collection_Modifier = Collection_Modifier - 10
      end
    end
  end

    self.UI.setAttribute("Final_review", "visibility", "invisible")
    self.UI.setAttribute("Heroes", "visibility", "invisible")
    self.UI.setAttribute("collections", "visibility", "invisible")
    self.UI.setAttribute("setup", "visibility", "invisible")
    self.UI.setAttribute("event_select", "visibility", "invisible")

    for count= 1,5 do
      local Color = Players[count].Color
      if self.UI.getValue(Color.."_sel") != "None" then
        select_hero(self.UI.getValue(Color.."_sel"), Color)
      end
    end
  end

  --------------------------------------------------------------------------------
  ---------------------------------Select Event-----------------------------------
  --------------------------------------------------------------------------------
  function select_event(Event_select)
    local Events = Global.getTable("Events")
    local Random = nil
    local Event_Index = nil

    for event in ipairs(Events) do
      if Events[event].Name == Event_select then
        Event_Index = event
        break
      end
    end

    if Events[Event_Index].Tooltip == "Critical Event" then
      Global.setVar("Event_Count", 2)
    else
      Global.setVar("Event_Count", 1)
    end

    Global.setVar("Event_Index", Event_Index)
    if self.UI.getValue('event') == 'Training Bot' then
      select_villain(self.UI.getValue("villain"))
    else
      select_villain(self.UI.getValue("villain"))
      select_environment(self.UI.getValue("environment"))
    end
    local Event_Assets = getObjectFromGUID(Global.getVar("Event_Bag"))
    local Send_to = Global.getTable('Villain_Zone')

    local Event_Take_Params = {
        position = Vec_sum(Send_to, {-26,0,-3.5}),
        rotation = {0,180,0},
        guid = Events[Event_Index].Card
      }
    Event_Assets.takeObject(Event_Take_Params)

    broadcastToAll('Read the front of the event card before clicking "Start Game"')
  end

  --------------------------------------------------------------------------------
  -------------------------------Select Environment-------------------------------
  --------------------------------------------------------------------------------
  function select_environment(Environment_select)
    local Environments = Global.getTable("Environments")
    local Random = nil
    local Environment_Name = nil
    local Environment_Index = nil
    local GameExpansions = Global.getTable('GameExpansions')

    for setting in ipairs(Environments) do
      if Environments[setting].Name == Environment_select then
        Environment_Index = setting
        break
      end
    end

    Global.setVar('Environment_Index', Environment_Index)
    local Environment_Assets = getObjectFromGUID(Global.getVar("Environment_Bag"))
    local Send_to = Global.getTable("Environment_Zone")

      --Get Assets from Bag
    local Deck_Take_Params = {
        position = Send_to,
        rotation = {0,180,180},
        guid = Environments[Environment_Index].Deck
      }

      Environment_Assets.takeObject(Deck_Take_Params)
      Environment_Deck = getObjectFromGUID(Environments[Environment_Index].Deck)
      Environment_Deck.shuffle()

    Global.setVar("Environment_Count", 1)
  end

  --------------------------------------------------------------------------------
  -----------------------------Select Villain-------------------------------------
  --------------------------------------------------------------------------------
  function select_villain(Villain_select)
    local Villains = Global.getTable("Villains")
    local Random = nil
    local Villain_Name = nil
    local Villain_Index = nil
    local GameExpansions = Global.getTable('GameExpansions')

    for villain in ipairs(Villains) do
      if Villains[villain].Name == Villain_select then
        Villain_Index = villain
        break
      end
    end

    Global.setVar("Villain_Index", Villain_Index)

    local Villain_Assets = getObjectFromGUID(Global.getVar("Villain_Bag"))
    local Send_to = Global.getTable("Villain_Zone")

      --Get Assets from Bag
    local Card_Take_Params = {
      position = Vec_sum(Send_to, {0,0,0}),
      rotation = {0,180,0},
      guid = Villains[Villain_Index].Card
    }
    local Deck_Take_Params = {
      position = Vec_sum(Send_to, {-15.2,0,-3.8}),
      rotation = {0,180,180},
      guid = Villains[Villain_Index].Deck
    }

    if Villains[Villain_Index].Deck2 != nil then
      local Deck2_Take_Params = {
        position = Vec_sum(Send_to, {-15.2,0,3.8}),
        rotation = {0,180,180},
        guid = Villains[Villain_Index].Deck2
      }
      Villain_Assets.takeObject(Deck2_Take_Params)
      getObjectFromGUID(Villains[Villain_Index].Deck2).shuffle()
    end
    --take villains assets from bag
    Villain_Assets.takeObject(Card_Take_Params)
    Villain_Assets.takeObject(Deck_Take_Params)

    Villain_Card = getObjectFromGUID(Villains[Villain_Index].Card)
    --serperate cards if needed

    if Villain_Card.getQuantity() > -1  and Global.getVar("Event_Count") != 2 then
      local Villains = {}
      local adjust = 0

      for card in ipairs(Villain_Card.getObjects()) do
        table.insert(Villains, Villain_Card.getObjects()[card].guid)
      end

      for count = #Villains,1,-1 do
        local Villain_Position = Vec_sum(Send_to,{adjust, 0, 0})
        if count == 1 then
            getObjectFromGUID(Villains[1]).setPosition(Villain_Position)
        else
            Villain_Card.takeObject({
              guid = Villains[count],
              position = Villain_Position,
              smooth = false
              })
            adjust = adjust + 20
        end
      end
    end

    --Send play area to player
    Villain_Deck = getObjectFromGUID(Villains[Villain_Index].Deck)
    Villain_Deck.shuffle()

    local Players_Active = Global.getTable('Players_Active')
    Players_Active[7].Name = Villain_select
    Global.setTable('Players_Active', Players_Active)

    Global.setVar("Villain_Count", Global.getVar("Villain_Count") + 1)

  end

  --------------------------------------------------------------------------------
  -------------------------------Select Collections-------------------------------
  --------------------------------------------------------------------------------
  function select_collection(Collection_Name, Collection_Modifier)

    local Collections = Global.getTable("Collections")
    local Collection_Index = nil
    local GameExpansions = Global.getTable('GameExpansions')

    if Collection_Name != 'None' then
      if Collection_Name == 'Random' then
        while Random == nil do
          Random_Num = math.random(#Collections)
          Random = Collections[Random_Num].Name
          Random_Set = Collections[Random_Num].Set

          if GameExpansions[Random_Set .. '_C_toggle'] != 'True' then
            Random = nil
          end
        end
        Collection_Name = Random
        Random = nil
      end

      for books in ipairs(Collections) do
        if Collections[books].Name == Collection_Name then
          Collection_Index = books
          break
        end
      end

      local Collection_Assets = getObjectFromGUID(Global.getVar("Event_Bag"))
      local Send_to = getObjectFromGUID(Global.getVar("Collection_Zone")).getPosition()

      --Set Collection
      local Card_Take_Params = {
         position = Vec_sum(Send_to, {0,0,Collection_Modifier}),
         rotation = {0,90,0},
         guid = Collections[Collection_Index].Card,
         smooth = false
       }
      Collection_Assets.takeObject(Card_Take_Params)
      getObjectFromGUID(Collections[Collection_Index].Card).setState(2)


      table.remove(Collections, Collection_Index)
      Global.setTable("Collections", Collections)
    end



    Collection_Index = nil
  end

  --------------------------------------------------------------------------------
  -----------------------------Hero Selection-------------------------------------
  --------------------------------------------------------------------------------

  function select_hero(Hero_Name, player_color)
    local Player_Zone = Global.getTable('Player_Zone')
    local Random = nil
    local Heroes = Global.getTable('Heroes')
    local Hero_Index = nil
    local GameExpansions = Global.getTable('GameExpansions')

    for hero in ipairs(Heroes) do
      if Heroes[hero].Name == Hero_Name then
        Hero_Index = hero
        break
      end
    end

    local Hero_Assets = getObjectFromGUID(Global.getVar('Hero_Bag'))
    local Send_to = Player_Zone[player_color]

    --Get Assets from Bag
    local Card_Take_Params = {
      position = Vec_sum(Send_to, {0,0,0}),
      rotation = {0,180,0},
      guid = Heroes[Hero_Index].guid,
      smooth = false
    }

    local Deck_Take_Params = {
      position = Vec_sum(Send_to, {0,0,-7.6}),
      rotation = {0,180,180},
      guid = Heroes[Hero_Index].Deck
    }


    Hero_Assets.takeObject(Card_Take_Params)
    Hero_Assets.takeObject(Deck_Take_Params)

    if Heroes[Hero_Index].Deck2 != nil then
      local Deck_Take_Params = {
        position = Vec_sum(Send_to, {-5.7,0,-7.6}),
        rotation = {0,180,180},
        guid = Heroes[Hero_Index].Deck2
      }
      Hero_Assets.takeObject(Deck_Take_Params)
      getObjectFromGUID(Heroes[Hero_Index].Deck2).shuffle()

    end

    local Character_Card = getObjectFromGUID(Heroes[Hero_Index].guid)
    local Character_Deck = getObjectFromGUID(Heroes[Hero_Index].Deck)

    if Heroes[Hero_Index].guid2 != nil then
      Card_Take_Params = {
       position = Vec_sum(Send_to, {-7.6,0,0}),
       rotation = {0,180,0},
       guid = Heroes[Hero_Index].guid2,
       smooth = false
      }
      Hero_Assets.takeObject(Card_Take_Params)

      local Character_Card2 = getObjectFromGUID(Heroes[Hero_Index].guid2)

      --variant_layout(Character_Card2, Character_Deck, player_color, Vec_sum(Send_to, {0,0,14}), 2)
    end

    Global.setVar('Player_Deck['..player_color..']', Character_Deck)
    --Send play area to player
    Character_Deck.shuffle()

    Global.setVar('Hero_Count', Global.getVar('Hero_Count') + 1)

    variant_layout(Character_Card, Character_Deck, player_color, Send_to, 1)

    Player[player_color].lookAt({
      position = Send_to,
      pitch = 75,
      yaw = 0,
      distance = 20
    })

    local Players_Active = Global.getTable('Players_Active')
    for count = 1,5 do
      if Players_Active[count].Color == player_color then
        Players_Active[count].Active = true
        Players_Active[count].Name = Hero_Name
        break
      end
    end

    Global.setTable('Players_Active', Players_Active)
    Global.setTable('Heroes', Heroes)
  end

  --------------------------------------------------------------------------------
  -----------------------------Variant Selection----------------------------------
  --------------------------------------------------------------------------------
  function variant_layout(Character_Card, Character_Deck, player_color, Send_to, Card_Num)
    if Character_Card.getQuantity() == -1 then
      Global.setVar('Variant_Count', Global.getVar('Variant_Count') + 1)
      Character_Deck.deal(4, player_color)

    else
      -- Spread out all the variants in front of player
      local Variants = {}

      for card in ipairs(Character_Card.getObjects()) do
        table.insert(Variants, Character_Card.getObjects()[card].guid)
      end
      --store variants for later
      local Player_Variants = Global.getTable('Player_Variants')
      Player_Variants[player_color..Card_Num] = Variants
      Global.setTable('Player_Variants', Player_Variants)

      adjust = -5

      for count = 1,#Variants do
        local Variant_Position = Vec_sum(Send_to,{adjust, 0, 8})
        if count == #Variants then
            getObjectFromGUID(Variants[#Variants]).setPosition(Variant_Position)
        else
            Character_Card.takeObject({
              guid = Variants[count],
              position = Variant_Position,
              smooth = false
              })
            adjust = adjust + 6
        end

        getObjectFromGUID(Variants[count]).createButton({
          click_function = 'select_variant',
          function_owner = self,
          label          = "Select",
          position       = {0,0.35,-1.5},
          rotation       = {0,0,0},
          width          = 1000,
          height         = 400,
          font_size      = 200,
          color          = {1,1,1,1},
        --  font_color     = -- Color,
          hover_color    = {0,1,0,1},
        --  press_color    = $(13:-- Color},
          tooltip        = 'Select this variant'
        })
      end
    end
  end

  function select_variant(variant_select)
    local Player_Variants = Global.getTable('Player_Variants')
    local player_color = nil
    local Player_Zone = Global.getTable('Player_Zone')

    for color in pairs(Player_Variants) do

      for variant in ipairs(Player_Variants[color]) do
        if Player_Variants[color][variant] == variant_select.guid then
          player_color = string.sub(color,1,-2)
          card_num = tonumber(string.sub(color,-1,-1))
          Variant_Table = Player_Variants[color]
          break
        end
      end
    end
    Card_Pos = Vec_sum(Player_Zone[player_color], {7.6*(card_num-1),0,0})

    for variant in ipairs(Variant_Table) do
      if Variant_Table[variant] == variant_select.guid then
        variant_selected = getObjectFromGUID(variant_select.guid)
        variant_selected.setPosition(Card_Pos)
        variant_selected.removeButton(0)
        Hero_Name = variant_selected.getName()
        local start_value = string.find(variant_selected.getDescription(), '*')+1
        Player_Health_Num = tonumber(string.sub(variant_selected.getDescription(), start_value, start_value+2))
        Global.setVar('Variant_Count', Global.getVar('Variant_Count') + 1)

      --[[variant_selected.createButton({
          label=Player_Health_Num,
          click_function="add_subtract",
          tooltip='Left Click to Decrease.\nRight Click to Increase.',
          function_owner=Global,
          position={0,0.15,-2.3},
          height=600,
          width=600,
          alignment = 3,
          font_size=600,
          font_color={0,0,0,95},
          color=player_color --{0,1,0,1}
        })]]

      --[[local Players_Active = Global.getTable('Players_Active')
        for count = 1,5 do
          if Players_Active[count].Color == player_color then
            Hero_Name = Players_Active[count].Name
            break
          end
        end
        Global.setTable('Players_Active', Players_Active)]]

        --[[Health_Tracker_Add(
          Hero_Name,
          Player_Health_Num,
          Variant_Table[variant],
          'H'
        )]]

      else
        getObjectFromGUID(Variant_Table[variant]).removeButton(0)
        getObjectFromGUID(Variant_Table[variant]).setPosition(Vec_sum(getObjectFromGUID('3a1690').getPosition(),{0,2,0}))
      end
    end
    local Character_Deck = Global.getVar('Player_Deck['..player_color..']')
    if card_num == 1 then
      Character_Deck.deal(4, player_color)
    end
  end

  --------------------------------Sums vecotrs------------------------------------
  function Vec_sum(vec1,vec2)
      return {vec1[1]+vec2[1], vec1[2]+vec2[2],  vec1[3]+vec2[3]}
  end

  -----------------------Remove Index from Table----------------------------------
  function remove_hero(Table, Index)

    local reindex = 0
    local H = #Table

    for count = 1,H do
      if Table[count].Name != Table[Index].Name then
        reindex = reindex + 1
        Table[reindex] = Table[count]
      end
    end

    for count = reindex + 1, H do
      Table[count] = nil
    end
  end

  function Health_Tracker_Add(Hero_Name, Health_Num, card_guid, category)

    local Health_Tracker = Global.getTable('Health_Tracker')
    table.insert(Health_Tracker, #Health_Tracker+1,{
      Name = Hero_Name,
      Health = Health_Num,
      guid = card_guid,
      Category = category
    })
    Global.setTable('Health_Tracker', Health_Tracker)

  end
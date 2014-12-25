<GameProjectFile>
  <PropertyGroup Type="Scene" Name="MainScene" ID="d7c84420-8b53-4110-89b1-261b82cd17ac" Version="2.0.6.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="15" Speed="1.0000">
        <Timeline ActionTag="1957003617" FrameType="PositionFrame">
          <PointFrame FrameIndex="15" X="104.7726" Y="157.0007" />
        </Timeline>
      </Animation>
      <ObjectData Name="Scene" FrameEvent="" Tag="6" ctype="SingleNodeObjectData">
        <Position X="0.0000" Y="0.0000" />
        <Scale ScaleX="1.0000" ScaleY="1.0000" />
        <AnchorPoint />
        <CColor A="255" R="255" G="255" B="255" />
        <Size X="480.0000" Y="320.0000" />
        <PrePosition X="0.0000" Y="0.0000" />
        <PreSize X="0.0000" Y="0.0000" />
        <Children>
          <NodeObjectData Name="Sprite_1" ActionTag="1957003617" FrameEvent="" Tag="7" ObjectIndex="1" ctype="SpriteObjectData">
            <Position X="104.7726" Y="157.0007" />
            <Scale ScaleX="0.0803" ScaleY="0.0761" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="500.0000" Y="500.0000" />
            <PrePosition X="0.2183" Y="0.4906" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="terisiagit.png" />
          </NodeObjectData>
          <NodeObjectData Name="Sprite_2" ActionTag="-1051953586" FrameEvent="" Tag="8" ObjectIndex="2" ctype="SpriteObjectData">
            <Position X="65.8918" Y="64.5702" />
            <Scale ScaleX="0.2218" ScaleY="0.2255" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="500.0000" Y="500.0000" />
            <PrePosition X="0.1373" Y="0.2018" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="terisiagit.png" />
          </NodeObjectData>
          <NodeObjectData Name="BTN" ActionTag="-177197656" FrameEvent="" Tag="5" ObjectIndex="1" TouchEnable="True" FontSize="14" ButtonText="Quit" Scale9Width="46" Scale9Height="36" ctype="ButtonObjectData">
            <Position X="430.0002" Y="32.0005" />
            <Scale ScaleX="1.7391" ScaleY="1.2778" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="46.0000" Y="36.0000" />
            <PrePosition X="0.8958" Y="0.1000" />
            <PreSize X="0.0000" Y="0.0000" />
            <NormalFileData Type="Default" Path="Default/Button_Normal.png" />
            <PressedFileData Type="Default" Path="Default/Button_Press.png" />
            <DisabledFileData Type="Default" Path="Default/Button_Disable.png" />
            <TextColor A="255" R="65" G="65" B="70" />
          </NodeObjectData>
          <NodeObjectData Name="Particle_1" ActionTag="-538652731" FrameEvent="" Tag="6" ObjectIndex="1" ctype="ParticleObjectData">
            <Position X="439.0001" Y="280.0010" />
            <Scale ScaleX="1.1154" ScaleY="1.1154" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="0.0000" Y="0.0000" />
            <PrePosition X="0.9146" Y="0.8750" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Default" Path="Default/defaultParticle.plist" />
          </NodeObjectData>
          <NodeObjectData Name="START" ActionTag="-1656600375" FrameEvent="" Tag="8" ObjectIndex="2" TouchEnable="True" FontSize="14" ButtonText="始める" Scale9Width="46" Scale9Height="36" ctype="ButtonObjectData">
            <Position X="233.9999" Y="166.0001" />
            <Scale ScaleX="3.4706" ScaleY="3.1250" />
            <AnchorPoint ScaleX="0.5052" ScaleY="0.4889" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="46.0000" Y="36.0000" />
            <PrePosition X="0.4875" Y="0.5188" />
            <PreSize X="0.0000" Y="0.0000" />
            <NormalFileData Type="Default" Path="Default/Button_Normal.png" />
            <PressedFileData Type="Default" Path="Default/Button_Press.png" />
            <DisabledFileData Type="Default" Path="Default/Button_Disable.png" />
            <TextColor A="255" R="65" G="65" B="70" />
          </NodeObjectData>
          <NodeObjectData Name="LoadingBar_1" ActionTag="1284251901" FrameEvent="" Tag="9" ObjectIndex="1" ctype="LoadingBarObjectData">
            <Position X="241.2817" Y="23.6468" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="200.0000" Y="14.0000" />
            <PrePosition X="0.5027" Y="0.0739" />
            <PreSize X="0.0000" Y="0.0000" />
            <ImageFileData Type="Default" Path="Default/LoadingBarFile.png" />
          </NodeObjectData>
          <NodeObjectData Name="Slider_1" ActionTag="1075302294" FrameEvent="" Tag="10" ObjectIndex="1" TouchEnable="True" PercentInfo="50" ctype="SliderObjectData">
            <Position X="112.2817" Y="301.6469" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="200.0000" Y="14.0000" />
            <PrePosition X="0.2339" Y="0.9426" />
            <PreSize X="0.0000" Y="0.0000" />
            <BackGroundData Type="Default" Path="Default/Slider_Back.png" />
            <ProgressBarData Type="Default" Path="Default/Slider_PressBar.png" />
            <BallNormalData Type="Default" Path="Default/SliderNode_Normal.png" />
            <BallPressedData Type="Default" Path="Default/SliderNode_Press.png" />
            <BallDisabledData Type="Default" Path="Default/SliderNode_Disable.png" />
          </NodeObjectData>
          <NodeObjectData Name="TextField_1" ActionTag="-2015469323" FrameEvent="" Tag="11" ObjectIndex="1" TouchEnable="True" FontSize="20" IsCustomSize="True" LabelText="" PlaceHolderText="Text Field" MaxLengthText="10" ctype="TextFieldObjectData">
            <Position X="62.2817" Y="267.6469" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="100.0000" Y="27.0000" />
            <PrePosition X="0.1298" Y="0.8364" />
            <PreSize X="0.0000" Y="0.0000" />
          </NodeObjectData>
          <NodeObjectData Name="ListView_1" ActionTag="-938088053" FrameEvent="" Tag="12" ObjectIndex="1" TouchEnable="True" BackColorAlpha="102" ComboBoxIndex="1" ColorAngle="90.0000" ScrollDirectionType="0" DirectionType="Vertical" ctype="ListViewObjectData">
            <Position X="325.2825" Y="80.6464" />
            <Scale ScaleX="0.7050" ScaleY="0.7600" />
            <AnchorPoint />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="200.0000" Y="200.0000" />
            <PrePosition X="0.6777" Y="0.2520" />
            <PreSize X="0.0000" Y="0.0000" />
            <SingleColor A="255" R="150" G="150" B="255" />
            <FirstColor A="255" R="150" G="150" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </NodeObjectData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameProjectFile>
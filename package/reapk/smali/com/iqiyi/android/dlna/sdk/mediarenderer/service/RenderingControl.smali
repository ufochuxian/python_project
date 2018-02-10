.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;
.super Lorg/cybergarage/upnp/Service;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/ServiceInterface;
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# instance fields
.field private mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 1
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;-><init>()V

    .line 60
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->mutex:Lorg/cybergarage/util/Mutex;

    .line 35
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    .line 36
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->initService()V

    .line 37
    invoke-virtual {p0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 38
    return-void
.end method

.method private setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 0
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .line 49
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 13
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "actionName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 83
    const/4 v6, 0x0

    .line 177
    :cond_0
    :goto_0
    return v6

    .line 84
    :cond_1
    const/4 v6, 0x0

    .line 85
    .local v6, "isActionSuccess":Z
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    move-result-object v4

    .line 87
    .local v4, "dmr":Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    const-string v11, "GetMute"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Process RC actionControlReceived() action: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 91
    const-string v11, "InstanceID"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v5

    .line 92
    .local v5, "instanceID":I
    const-string v11, "Channel"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "channel":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 95
    .local v8, "outCurrentMute":Ljava/lang/Boolean;
    const/4 v6, 0x1

    .line 97
    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v10

    .line 100
    .local v10, "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v10, :cond_2

    .line 102
    invoke-interface {v10, v5, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->GetMute(ILjava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 106
    .end local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_2
    const-string v11, "CurrentMute"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 170
    .end local v1    # "channel":Ljava/lang/String;
    .end local v5    # "instanceID":I
    .end local v8    # "outCurrentMute":Ljava/lang/Boolean;
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v7

    .line 173
    .local v7, "listener":Lorg/cybergarage/upnp/control/ActionListener;
    if-eqz v7, :cond_0

    .line 174
    invoke-interface {v7, p1}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    goto :goto_0

    .line 106
    .end local v7    # "listener":Lorg/cybergarage/upnp/control/ActionListener;
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v5    # "instanceID":I
    .restart local v8    # "outCurrentMute":Ljava/lang/Boolean;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 107
    .end local v1    # "channel":Ljava/lang/String;
    .end local v5    # "instanceID":I
    .end local v8    # "outCurrentMute":Ljava/lang/Boolean;
    :cond_5
    const-string v11, "GetVolume"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Process RC actionControlReceived() action: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 111
    const-string v11, "InstanceID"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v5

    .line 112
    .restart local v5    # "instanceID":I
    const-string v11, "Channel"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "channel":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 115
    .local v9, "outCurrentVolume":Ljava/lang/Integer;
    const/4 v6, 0x1

    .line 117
    if-eqz v4, :cond_6

    .line 119
    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v10

    .line 120
    .restart local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v10, :cond_6

    .line 122
    invoke-interface {v10, v5, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->GetVolume(ILjava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 126
    .end local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_6
    const-string v11, "CurrentVolume"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    goto :goto_2

    .line 127
    .end local v1    # "channel":Ljava/lang/String;
    .end local v5    # "instanceID":I
    .end local v9    # "outCurrentVolume":Ljava/lang/Integer;
    :cond_7
    const-string v11, "SetMute"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Process RC actionControlReceived() action: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 131
    const-string v11, "InstanceID"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v5

    .line 132
    .restart local v5    # "instanceID":I
    const-string v11, "Channel"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1    # "channel":Ljava/lang/String;
    const-string v11, "DesiredMute"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v2

    .line 135
    .local v2, "desireMute":I
    const/4 v6, 0x1

    .line 137
    if-eqz v4, :cond_3

    .line 139
    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v10

    .line 140
    .restart local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v10, :cond_3

    .line 142
    if-nez v2, :cond_8

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v10, v5, v1, v11}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->SetMute(ILjava/lang/String;Z)V

    goto/16 :goto_2

    :cond_8
    const/4 v11, 0x1

    goto :goto_3

    .line 145
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "desireMute":I
    .end local v5    # "instanceID":I
    .end local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_9
    const-string v11, "SetVolume"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Process RC actionControlReceived() action: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 149
    const-string v11, "InstanceID"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v5

    .line 150
    .restart local v5    # "instanceID":I
    const-string v11, "Channel"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "channel":Ljava/lang/String;
    const-string v11, "DesiredVolume"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v3

    .line 153
    .local v3, "desiredVolume":I
    const/4 v6, 0x1

    .line 155
    if-eqz v4, :cond_3

    .line 157
    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v10

    .line 158
    .restart local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v10, :cond_3

    .line 160
    invoke-interface {v10, v5, v1, v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->SetVolume(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 165
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "desiredVolume":I
    .end local v5    # "instanceID":I
    .end local v10    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unknown RC actionControlReceived() action: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 166
    const/4 v6, 0x0

    .line 167
    const/16 v11, 0x191

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto/16 :goto_2
.end method

.method public getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    return-object v0
.end method

.method public initService()V
    .locals 2

    .prologue
    .line 189
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setServiceType(Ljava/lang/String;)V

    .line 190
    const-string v1, "urn:upnp-org:serviceId:RenderingControl"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setServiceID(Ljava/lang/String;)V

    .line 191
    const-string v1, "_urn:schemas-upnp-org:service:RenderingControl_control"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setControlURL(Ljava/lang/String;)V

    .line 192
    const-string v1, "_urn:schemas-upnp-org:service:RenderingControl_scpd.xml"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setSCPDURL(Ljava/lang/String;)V

    .line 193
    const-string v1, "_urn:schemas-upnp-org:service:RenderingControl_event"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->setEventSubURL(Ljava/lang/String;)V

    .line 197
    :try_start_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\r\n  <specVersion>\r\n    <major>1</major>\r\n    <minor>0</minor>\r\n  </specVersion>\r\n  <actionList>\r\n    <action>\r\n      <name>GetMute</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Channel</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentMute</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>Mute</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetVolume</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Channel</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentVolume</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>Volume</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetVolumeDB</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Channel</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentVolume</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetVolumeDBRange</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Channel</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>MinValue</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>MaxValue</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>ListPresets</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentPresetNameList</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>PresetNameList</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>SelectPreset</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PresetName</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_PresetName</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>SetMute</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Channel</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>DesiredMute</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>Mute</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>SetVolume</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Channel</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>DesiredVolume</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>Volume</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n  </actionList>\r\n  <serviceStateTable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>LastChange</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_Channel</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>Master</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_InstanceID</name>\r\n      <dataType>ui4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>Volume</name>\r\n      <dataType>ui2</dataType>\r\n      <allowedValueRange>\r\n        <minimum>0</minimum>\r\n        <maximum>100</maximum>\r\n        <step>1</step>\r\n      </allowedValueRange>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>Mute</name>\r\n      <dataType>boolean</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>PresetNameList</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>FactoryDefaults</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_PresetName</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>FactoryDefaults</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>VolumeDB</name>\r\n      <dataType>i2</dataType>\r\n      <allowedValueRange>\r\n        <minimum>-32767</minimum>\r\n        <maximum>32767</maximum>\r\n      </allowedValueRange>\r\n    </stateVariable>\r\n  </serviceStateTable>\r\n</scpd>"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->loadSCPD(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/cybergarage/upnp/device/InvalidDescriptionException;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 65
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 70
    return-void
.end method

.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;
.super Lorg/cybergarage/upnp/Service;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/ServiceInterface;
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# static fields
.field private static final GENA_PAUSED_PLAYBACK:I = 0x5

.field private static final GENA_PLAY:I = 0x0

.field private static final GENA_PLAYING_STATE_CHANGE:I = 0x3

.field private static final GENA_PLAY_STATE:I = 0x2

.field private static final GENA_STATE_UPDATE_DURATION:I = 0x4

.field private static final GENA_STATE_UPDATE_DURATION_0:I = 0x1

.field private static absCount:Ljava/lang/String;

.field private static absTime:Ljava/lang/String;

.field private static currentTransportActions:Ljava/lang/String;

.field private static instance:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

.field private static lastChangenotifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

.field private static relCount:Ljava/lang/String;

.field private static relTime:Ljava/lang/String;

.field private static track:Ljava/lang/String;

.field private static trackDuration:Ljava/lang/String;

.field private static trackMetadata:Ljava/lang/String;

.field private static trackUri:Ljava/lang/String;

.field private static transportPlaySpeed:Ljava/lang/String;

.field private static transportState:Ljava/lang/String;

.field private static transportStatus:Ljava/lang/String;


# instance fields
.field private avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isKugouMusic:Z

.field private mHandler:Landroid/os/Handler;

.field private mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    sput-object v1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->instance:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    .line 47
    const-string v0, "NO_MEDIA_PRESENT"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    .line 61
    const-string v0, "OK"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportStatus:Ljava/lang/String;

    .line 62
    const-string v0, "1"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportPlaySpeed:Ljava/lang/String;

    .line 63
    const-string v0, "NOT_IMPLEMENTED"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackMetadata:Ljava/lang/String;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackUri:Ljava/lang/String;

    .line 65
    const-string v0, "1"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->track:Ljava/lang/String;

    .line 68
    const-string v0, "00:00:00"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    .line 76
    sput-object v1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->lastChangenotifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 102
    const-string v0, "00:00:00"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->relTime:Ljava/lang/String;

    .line 103
    const-string v0, "00:00:00"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->absTime:Ljava/lang/String;

    .line 111
    const-string v0, "2147483647"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->relCount:Ljava/lang/String;

    .line 112
    const-string v0, "2147483647"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->absCount:Ljava/lang/String;

    .line 114
    const-string v0, "Stop,Pause,Seek"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->currentTransportActions:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 2
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->isKugouMusic:Z

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GENA"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->handlerThread:Landroid/os/HandlerThread;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mutex:Lorg/cybergarage/util/Mutex;

    .line 118
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    .line 119
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    .line 120
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->initService()V

    .line 121
    invoke-virtual {p0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 122
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->handlerThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 123
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport$1;

    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport$1;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method private SendGENAEvent(I)V
    .locals 9
    .param p1, "action"    # I

    .prologue
    const/4 v8, 0x0

    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SendGENAEvent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v3

    .line 771
    .local v3, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    const/4 v0, 0x0

    .line 772
    .local v0, "lastChangeExpected":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 775
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackUri:Ljava/lang/String;

    .line 776
    .local v2, "resourceURI":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<Event xmlns=\"urn:schemas-upnp-org:metadata-1-0/AVT/\"><InstanceID val=\"0\"><AVTransportURI val=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<CurrentTrackURI val=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 778
    const-string v7, "<TransportState val=\"STOPPED\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<CurrentTransportActions val=\"Play\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</InstanceID>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 779
    const-string v7, "</Event>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 776
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .end local v2    # "resourceURI":Ljava/lang/String;
    :goto_0
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->lastChangenotifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    if-nez v6, :cond_8

    .line 815
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v4

    .line 816
    .local v4, "tableSize":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    if-lt v1, v4, :cond_6

    .line 828
    .end local v1    # "n":I
    .end local v4    # "tableSize":I
    :cond_0
    :goto_2
    return-void

    .line 780
    :cond_1
    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 782
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<Event xmlns=\"urn:schemas-upnp-org:metadata-1-0/AVT/\"><InstanceID val=\"0\"><TransportState val=\"PLAYING\"/><CurrentTransportActions val=\"Stop,Pause,Seek\"/><CurrentTrackDuration val=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    sget-object v7, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<CurrentMediaDuration val=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 785
    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</InstanceID>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</Event>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 782
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 788
    const-string v0, "<Event xmlns=\"urn:schemas-upnp-org:metadata-1-0/AVT/\"><InstanceID val=\"0\"><CurrentTrackDuration val=\"00:00:00\"/><CurrentMediaDuration val=\"00:00:00\"/></InstanceID></Event>"

    .line 791
    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 793
    const-string v0, "<Event xmlns=\"urn:schemas-upnp-org:metadata-1-0/AVT/\"><InstanceID val=\"0\"><TransportState val=\"PLAYING\"/><CurrentTransportActions val=\"Stop,Pause,Seek\"/></InstanceID></Event>"

    .line 796
    goto :goto_0

    :cond_4
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5

    .line 799
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<Event xmlns=\"urn:schemas-upnp-org:metadata-1-0/AVT/\"><InstanceID val=\"0\"><TransportState val=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    sget-object v7, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 801
    const-string v7, "<CurrentTransportActions val=\"Stop,Pause,Seek,Play\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</InstanceID>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</Event>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 799
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    goto :goto_0

    :cond_5
    const/4 v6, 0x5

    if-ne p1, v6, :cond_0

    .line 805
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<Event xmlns=\"urn:schemas-upnp-org:metadata-1-0/AVT/\"><InstanceID val=\"0\"><TransportState val=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    sget-object v7, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<CurrentTransportActions val=\"Play,Stop\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 807
    const-string v7, "</InstanceID>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</Event>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 805
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    goto/16 :goto_0

    .line 818
    .restart local v1    # "n":I
    .restart local v4    # "tableSize":I
    :cond_6
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    .line 819
    .local v5, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "LastChange"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 821
    sput-object v5, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->lastChangenotifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 822
    invoke-virtual {v5, v0, v8}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 816
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 827
    .end local v1    # "n":I
    .end local v4    # "tableSize":I
    .end local v5    # "var":Lorg/cybergarage/upnp/StateVariable;
    :cond_8
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->lastChangenotifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    invoke-virtual {v6, v0, v8}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;I)V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->SendGENAEvent(I)V

    return-void
.end method

.method private canPause(Ljava/lang/String;)Z
    .locals 2
    .param p1, "transportState"    # Ljava/lang/String;

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process Avt canPause() state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 730
    const-string v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x1

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canPlay(Ljava/lang/String;)Z
    .locals 2
    .param p1, "transportState"    # Ljava/lang/String;

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process Avt canPausPlay() state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 718
    const-string v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    const-string v0, "PAUSED_PLAYBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const-string v0, "NO_MEDIA_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    const/4 v0, 0x1

    .line 724
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSeek(Ljava/lang/String;)Z
    .locals 2
    .param p1, "transportState"    # Ljava/lang/String;

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process Avt canSeek() state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method private canStop(Ljava/lang/String;)Z
    .locals 2
    .param p1, "transportState"    # Ljava/lang/String;

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process Avt canStop() state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 743
    const-string v0, "PAUSED_PLAYBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    :cond_0
    const/4 v0, 0x1

    .line 747
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFromMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
    .locals 8
    .param p1, "uriMetaData"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v5, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;-><init>()V

    .line 590
    .local v5, "mediainfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 593
    .local v0, "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const-string v6, "&"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "&amp;"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 595
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 600
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 601
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 602
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 603
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {v5, p2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->setUrl(Ljava/lang/String;)V

    .line 604
    const-string v6, "dc:title"

    invoke-static {v1, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->setTitle(Ljava/lang/String;)V

    .line 605
    const-string v6, "upnp:artist"

    invoke-static {v1, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->setArtist(Ljava/lang/String;)V

    .line 606
    const-string v6, "upnp:album"

    invoke-static {v1, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->setAlbum(Ljava/lang/String;)V

    .line 607
    const-string v6, "upnp:albumArtURI"

    invoke-static {v1, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->setAlbumUri(Ljava/lang/String;)V

    .line 608
    const-string v6, "upnp:class"

    invoke-static {v1, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->setObjectClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v5

    .line 610
    :catch_0
    move-exception v3

    .line 612
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 620
    .local v3, "containers":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 630
    const-string v5, ""

    :goto_1
    return-object v5

    .line 622
    :cond_0
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 623
    .local v2, "container":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 624
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eqz v5, :cond_1

    .line 626
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 627
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 620
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->instance:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    return-object v0
.end method

.method public static getInstance(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;
    .locals 1
    .param p0, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 83
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->instance:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->instance:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    .line 87
    :cond_0
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->instance:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    return-object v0
.end method

.method private isContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "upnpClass"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v0, "object.container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private updatePlayRelaVariable(ILjava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # I
    .param p2, "speed"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 703
    const-string v0, "TransportPlaySpeed"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 704
    const-string v0, "TransportState"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    const-string v1, "PLAYING"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 705
    sput-object p2, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportPlaySpeed:Ljava/lang/String;

    .line 707
    return-void
.end method

.method private updateSetAVTransportURIRelaVariable(Lorg/cybergarage/upnp/Action;)V
    .locals 8
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/4 v7, 0x0

    .line 635
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;-><init>()V

    .line 636
    .local v0, "avTransInfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    const-string v5, "InstanceID"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setInstanceID(I)V

    .line 637
    const-string v5, "CurrentURI"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "currentUri":Ljava/lang/String;
    const-string v5, "pubnet.sandai.net"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "s"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "uri":Ljava/lang/String;
    sput-object v1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackUri:Ljava/lang/String;

    .line 644
    invoke-virtual {v0, v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURI(Ljava/lang/String;)V

    .line 648
    .end local v4    # "uri":Ljava/lang/String;
    :goto_0
    const-string v5, "CurrentURIMetaData"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "metadataUri":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 652
    :cond_0
    const-string v5, "MetadataUri xunlei"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 653
    const-string v2, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\"xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\"xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\"><item id=\"1.flv\" parentID=\"-1\" restricted=\"1\"><dc:title>DLNA</dc:title><upnp:class>object.item.videoItem.movie</upnp:class></item></DIDL-Lite>"

    .line 661
    .local v2, "meta":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURIMetaData(Ljava/lang/String;)V

    .line 665
    .end local v2    # "meta":Ljava/lang/String;
    :goto_1
    iput-boolean v7, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->isKugouMusic:Z

    .line 666
    const-string v5, "kugou"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 667
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->isKugouMusic:Z

    .line 669
    :cond_1
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setCurrentAvTransInfo(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;)V

    .line 671
    const-string v5, "AVTransportURI"

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 672
    const-string v5, "AVTransportURIMetaData"

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURIMetaData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 673
    const-string v5, "CurrentTrack"

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(I)V

    .line 674
    const-string v5, "CurrentTrackDuration"

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    const-string v6, "NOT_IMPLEMENTED"

    invoke-virtual {v5, v6, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 675
    const-string v5, "CurrentTrackMetaData"

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURIMetaData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 676
    const-string v5, "CurrentTrackURI"

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 680
    const-string v5, "pubnet.sandai.net"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 681
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackUri:Ljava/lang/String;

    .line 682
    :cond_2
    return-void

    .line 646
    .end local v3    # "metadataUri":Ljava/lang/String;
    :cond_3
    const-string v5, "CurrentURI"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    .restart local v3    # "metadataUri":Ljava/lang/String;
    :cond_4
    const-string v5, "CurrentURIMetaData"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURIMetaData(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private updateSetNextAVTransportURIRelaVariable(Lorg/cybergarage/upnp/Action;)V
    .locals 4
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/4 v3, 0x0

    .line 686
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;-><init>()V

    .line 687
    .local v0, "avTransInfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    const-string v1, "InstanceID"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setInstanceID(I)V

    .line 688
    const-string v1, "NextURI"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURI(Ljava/lang/String;)V

    .line 689
    const-string v1, "NextURIMetaData"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURIMetaData(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setNextAvTransInfo(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;)V

    .line 692
    const-string v1, "NextAVTransportURI"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 693
    const-string v1, "NextAVTransportURIMetaData"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURIMetaData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 694
    return-void
.end method

.method private updateSetPlayModeRelaVariable(ILjava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # I
    .param p2, "playMode"    # Ljava/lang/String;

    .prologue
    .line 698
    const-string v0, "CurrentPlayMode"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 699
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 21
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "actionName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 222
    const/4 v8, 0x0

    .line 584
    :cond_0
    :goto_0
    return v8

    .line 224
    :cond_1
    const/4 v8, 0x0

    .line 226
    .local v8, "isActionSuccess":Z
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    move-result-object v6

    .line 230
    .local v6, "dmr":Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    const-string v18, "SetAVTransportURI"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 232
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->updateSetAVTransportURIRelaVariable(Lorg/cybergarage/upnp/Action;)V

    .line 234
    const/4 v8, 0x1

    .line 236
    if-eqz v6, :cond_2

    .line 238
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 239
    .local v15, "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_2

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getCurrentAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURIMetaData()Ljava/lang/String;

    move-result-object v18

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getCurrentAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v19

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->createFromMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;

    move-result-object v10

    .line 245
    .local v10, "metaData":Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getCurrentAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getInstanceID()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getCurrentAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v19

    .line 246
    invoke-virtual/range {v19 .. v19}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v19

    .line 245
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1, v10}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->SetAVTransportURI(ILjava/lang/String;Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;)V

    .line 253
    .end local v10    # "metaData":Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_2
    const-string v18, "SetNextAVTransportURI"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 255
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 256
    invoke-direct/range {p0 .. p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->updateSetNextAVTransportURIRelaVariable(Lorg/cybergarage/upnp/Action;)V

    .line 257
    const/4 v8, 0x1

    .line 259
    if-eqz v6, :cond_3

    .line 261
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 262
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_3

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getNextAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURIMetaData()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getNextAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v19

    .line 266
    invoke-virtual/range {v19 .. v19}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v19

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->createFromMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;

    move-result-object v10

    .line 268
    .restart local v10    # "metaData":Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getNextAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getInstanceID()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getNextAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v19

    .line 269
    invoke-virtual/range {v19 .. v19}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURI()Ljava/lang/String;

    move-result-object v19

    .line 268
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1, v10}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->SetNextAVTransportURI(ILjava/lang/String;Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;)V

    .line 277
    .end local v10    # "metaData":Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_3
    const-string v18, "SetPlayMode"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 279
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 281
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 282
    .local v7, "instanceID":I
    const-string v18, "NewPlayMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 283
    .local v12, "newPlayMode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->updateSetPlayModeRelaVariable(ILjava/lang/String;)V

    .line 284
    const/4 v8, 0x1

    .line 285
    if-eqz v6, :cond_4

    .line 287
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 288
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_4

    .line 290
    invoke-interface {v15, v7, v12}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->SetPlayMode(ILjava/lang/String;)V

    .line 298
    .end local v7    # "instanceID":I
    .end local v12    # "newPlayMode":Ljava/lang/String;
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_4
    const-string v18, "GetMediaInfo"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 300
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 301
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 302
    .restart local v7    # "instanceID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 304
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->size()I

    move-result v5

    .line 305
    .local v5, "avTransInfoCnt":I
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    if-lt v11, v5, :cond_15

    .line 327
    const/4 v8, 0x1

    .line 302
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v5    # "avTransInfoCnt":I
    .end local v7    # "instanceID":I
    .end local v11    # "n":I
    :cond_5
    const-string v18, "Play"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 336
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 337
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->canPlay(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 340
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 341
    .restart local v7    # "instanceID":I
    const-string v18, "Speed"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 342
    .local v14, "speed":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->updatePlayRelaVariable(ILjava/lang/String;)V

    .line 343
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    const-string v19, "PAUSED_PLAYBACK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 344
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    const-string v19, "PLAYING"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 346
    const-string v18, "00:00:00"

    sput-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    :cond_6
    const/4 v8, 0x1

    .line 352
    if-eqz v6, :cond_7

    .line 354
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 355
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_7

    .line 357
    invoke-interface {v15, v7, v14}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->Play(ILjava/lang/String;)V

    .line 371
    .end local v7    # "instanceID":I
    .end local v14    # "speed":Ljava/lang/String;
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_7
    :goto_2
    const-string v18, "Next"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 373
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 374
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 375
    .restart local v7    # "instanceID":I
    const/4 v8, 0x1

    .line 377
    if-eqz v6, :cond_8

    .line 379
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 380
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_8

    .line 382
    invoke-interface {v15, v7}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->Next(I)V

    .line 390
    .end local v7    # "instanceID":I
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_8
    const-string v18, "Previous"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 392
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 393
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 394
    .restart local v7    # "instanceID":I
    const/4 v8, 0x1

    .line 396
    if-eqz v6, :cond_9

    .line 398
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 399
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_9

    .line 401
    invoke-interface {v15, v7}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->Previous(I)V

    .line 409
    .end local v7    # "instanceID":I
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_9
    const-string v18, "Stop"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 411
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 412
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->canStop(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 415
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 416
    .restart local v7    # "instanceID":I
    const-string v18, "TransportState"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v18

    const-string v19, "STOPPED"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 418
    const/4 v8, 0x1

    .line 420
    if-eqz v6, :cond_a

    .line 422
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 423
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_a

    .line 425
    invoke-interface {v15, v7}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->Stop(I)V

    .line 435
    .end local v7    # "instanceID":I
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_a
    :goto_3
    const-string v18, "00:00:00"

    sput-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    .line 436
    const-string v18, "00:00:00"

    sput-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->relTime:Ljava/lang/String;

    .line 437
    const-string v18, "00:00:00"

    sput-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->absTime:Ljava/lang/String;

    .line 443
    :cond_b
    const-string v18, "Pause"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 445
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 446
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->canPause(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 449
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 450
    .restart local v7    # "instanceID":I
    const-string v18, "TransportState"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v18

    const-string v19, "PAUSED_PLAYBACK"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 451
    const/4 v8, 0x1

    .line 453
    if-eqz v6, :cond_c

    .line 455
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 456
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_c

    .line 458
    invoke-interface {v15, v7}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->Pause(I)V

    .line 472
    .end local v7    # "instanceID":I
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    :cond_c
    :goto_4
    const-string v18, "Seek"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 474
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 475
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->canSeek(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 477
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v7

    .line 478
    .restart local v7    # "instanceID":I
    const-string v18, "Unit"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 479
    .local v17, "unit":Ljava/lang/String;
    const-string v18, "Target"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 480
    .local v16, "target":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt seek unit: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " target: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 481
    const/4 v8, 0x1

    .line 482
    if-eqz v6, :cond_d

    .line 484
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    move-result-object v15

    .line 485
    .restart local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    if-eqz v15, :cond_d

    .line 488
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v7, v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;->Seek(IILjava/lang/String;)V

    .line 499
    .end local v7    # "instanceID":I
    .end local v15    # "standardDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    .end local v16    # "target":Ljava/lang/String;
    .end local v17    # "unit":Ljava/lang/String;
    :cond_d
    :goto_5
    const-string v18, "GetPositionInfo"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 501
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 503
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 505
    .restart local v7    # "instanceID":I
    const-string v18, "Track"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->track:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v18, "TrackDuration"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v18, "TrackMetaData"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackMetadata:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v18, "TrackURI"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackUri:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v18, "RelTime"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->relTime:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v18, "AbsTime"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->absTime:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v18, "RelCount"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->relCount:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v18, "AbsCount"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->absCount:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v8, 0x1

    .line 516
    .end local v7    # "instanceID":I
    :cond_e
    const-string v18, "GetTransportInfo"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 518
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 520
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 522
    .restart local v7    # "instanceID":I
    const-string v18, "CurrentTransportState"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v18, "CurrentTransportStatus"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportStatus:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v18, "CurrentSpeed"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportPlaySpeed:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v8, 0x1

    .line 528
    .end local v7    # "instanceID":I
    :cond_f
    const-string v18, "GetDeviceCapabilities"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 530
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 532
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 534
    .restart local v7    # "instanceID":I
    const-string v18, "PossiblePlaybackStorageMedia"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/upnp/StateVariable;->getValue_dlna()Ljava/lang/String;

    move-result-object v13

    .line 535
    .local v13, "playbackStorageMeida":Ljava/lang/String;
    const-string v18, "PlayMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v18, "RecMedia"

    const-string v19, "NOT_IMPLEMENTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v18, "RecQualityModes"

    const-string v19, "NOT_IMPLEMENTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v8, 0x1

    .line 541
    .end local v7    # "instanceID":I
    .end local v13    # "playbackStorageMeida":Ljava/lang/String;
    :cond_10
    const-string v18, "Record"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 543
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 545
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 547
    .restart local v7    # "instanceID":I
    const/4 v8, 0x1

    .line 550
    .end local v7    # "instanceID":I
    :cond_11
    const-string v18, "GetTransportSettings"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 552
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 554
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 556
    .restart local v7    # "instanceID":I
    const/4 v8, 0x1

    .line 559
    .end local v7    # "instanceID":I
    :cond_12
    const-string v18, "SetRecordQualityMode"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 561
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 563
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 565
    .restart local v7    # "instanceID":I
    const/4 v8, 0x1

    .line 568
    .end local v7    # "instanceID":I
    :cond_13
    const-string v18, "GetCurrentTransportActions"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 570
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Process Avt actionControlReceived() action: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 572
    const-string v18, "InstanceID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v7

    .line 573
    .restart local v7    # "instanceID":I
    const-string v18, "Actions"

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->currentTransportActions:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v8, 0x1

    .line 577
    .end local v7    # "instanceID":I
    :cond_14
    if-eqz v6, :cond_0

    .line 579
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v9

    .line 580
    .local v9, "listener":Lorg/cybergarage/upnp/control/ActionListener;
    if-eqz v9, :cond_0

    .line 581
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    goto/16 :goto_0

    .line 307
    .end local v9    # "listener":Lorg/cybergarage/upnp/control/ActionListener;
    .restart local v5    # "avTransInfoCnt":I
    .restart local v7    # "instanceID":I
    .restart local v11    # "n":I
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->getAVTransportInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v4

    .line 308
    .local v4, "avTransInfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    if-nez v4, :cond_17

    .line 305
    :cond_16
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 310
    :cond_17
    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getInstanceID()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v7, :cond_16

    .line 314
    sget-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    const-string v20, "00:00:00"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->isKugouMusic:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 316
    const-string v18, "actionControl kugou trackDuration"

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 317
    const-string v18, ""

    sput-object v18, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    .line 319
    :cond_18
    const-string v18, "NrTracks"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 320
    const-string v18, "MediaDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 321
    const-string v18, "CurrentURI"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackUri:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 322
    const-string v18, "CurrentURIMetaData"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->getURIMetaData()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 323
    const-string v18, "PlayMedium"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    const-string v20, "NONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 324
    const-string v18, "RecordMedium"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    const-string v20, "NOT_IMPLEMENTED"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 325
    const-string v18, "WriteStatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v18

    const-string v20, "NOT_IMPLEMENTED"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 302
    .end local v4    # "avTransInfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    .end local v5    # "avTransInfoCnt":I
    .end local v11    # "n":I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 362
    .end local v7    # "instanceID":I
    :cond_19
    const/4 v8, 0x0

    .line 363
    const/16 v18, 0x2bd

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto/16 :goto_2

    .line 431
    :cond_1a
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 465
    :cond_1b
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 493
    :cond_1c
    const/4 v8, 0x0

    .line 494
    const/16 v18, 0x2bd

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto/16 :goto_5
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 137
    return-void
.end method

.method public getAvTransInfoList()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    return-object v0
.end method

.method public getCurrentAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "avTransInfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 187
    monitor-exit v2

    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->getAVTransportInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v0

    .line 184
    monitor-exit v2

    move-object v1, v0

    .line 190
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    return-object v0
.end method

.method public getNextAvTransInfo()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "avTransInfo":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 209
    monitor-exit v2

    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->getAVTransportInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    move-result-object v0

    .line 206
    monitor-exit v2

    move-object v1, v0

    .line 212
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initService()V
    .locals 2

    .prologue
    .line 834
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setServiceType(Ljava/lang/String;)V

    .line 835
    const-string v1, "urn:upnp-org:serviceId:AVTransport"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setServiceID(Ljava/lang/String;)V

    .line 836
    const-string v1, "_urn:schemas-upnp-org:service:AVTransport_control"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setControlURL(Ljava/lang/String;)V

    .line 837
    const-string v1, "_urn:schemas-upnp-org:service:AVTransport_scpd.xml"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setSCPDURL(Ljava/lang/String;)V

    .line 838
    const-string v1, "_urn:schemas-upnp-org:service:AVTransport_event"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->setEventSubURL(Ljava/lang/String;)V

    .line 842
    :try_start_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\r\n  <specVersion>\r\n    <major>1</major>\r\n    <minor>0</minor>\r\n  </specVersion>\r\n  <actionList>\r\n    <action>\r\n      <name>GetCurrentTransportActions</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Actions</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentTransportActions</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetDeviceCapabilities</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PlayMedia</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>PossiblePlaybackStorageMedia</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RecMedia</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>PossibleRecordStorageMedia</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RecQualityModes</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>PossibleRecordQualityModes</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetMediaInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>NrTracks</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>NumberOfTracks</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>MediaDuration</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentMediaDuration</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentURI</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>AVTransportURI</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentURIMetaData</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>NextURI</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>NextAVTransportURI</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>NextURIMetaData</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>NextAVTransportURIMetaData</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PlayMedium</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>PlaybackStorageMedium</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RecordMedium</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>RecordStorageMedium</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>WriteStatus</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>RecordMediumWriteStatus</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetPositionInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Track</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentTrack</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>TrackDuration</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentTrackDuration</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>TrackMetaData</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentTrackMetaData</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>TrackURI</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentTrackURI</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RelTime</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>RelativeTimePosition</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>AbsTime</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>AbsoluteTimePosition</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RelCount</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>RelativeCounterPosition</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>AbsCount</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>AbsoluteCounterPosition</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetTransportInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentTransportState</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>TransportState</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentTransportStatus</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>TransportStatus</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentSpeed</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetTransportSettings</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PlayMode</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentPlayMode</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RecQualityMode</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentRecordQualityMode</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>Next</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>Pause</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>Play</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Speed</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>Previous</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>Seek</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Unit</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_SeekMode</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Target</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_SeekTarget</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>SetAVTransportURI</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentURI</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>AVTransportURI</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>CurrentURIMetaData</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>SetPlayMode</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>NewPlayMode</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>CurrentPlayMode</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>Stop</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>InstanceID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n  </actionList>\r\n  <serviceStateTable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentPlayMode</name>\r\n      <dataType>string</dataType>\r\n      <defaultValue>NORMAL</defaultValue>\r\n      <allowedValueList>\r\n        <allowedValue>NORMAL</allowedValue>\r\n        <allowedValue>REPEAT_ONE</allowedValue>\r\n        <allowedValue>REPEAT_ALL</allowedValue>\r\n        <allowedValue>SHUFFLE</allowedValue>\r\n        <allowedValue>SHUFFLE_NOREPEAT</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>RecordStorageMedium</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>LastChange</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>RelativeTimePosition</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentTrackURI</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentTrackDuration</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentRecordQualityMode</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentMediaDuration</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>AbsoluteCounterPosition</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>RelativeCounterPosition</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_InstanceID</name>\r\n      <dataType>ui4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>AVTransportURI</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>TransportState</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>STOPPED</allowedValue>\r\n        <allowedValue>PAUSED_PLAYBACK</allowedValue>\r\n        <allowedValue>PLAYING</allowedValue>\r\n        <allowedValue>TRANSITIONING</allowedValue>\r\n        <allowedValue>NO_MEDIA_PRESENT</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentTrackMetaData</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>NextAVTransportURI</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>PossibleRecordQualityModes</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentTrack</name>\r\n      <dataType>ui4</dataType>\r\n      <allowedValueRange>\r\n        <minimum>0</minimum>\r\n        <maximum>65535</maximum>\r\n        <step>1</step>\r\n      </allowedValueRange>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>AbsoluteTimePosition</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>NextAVTransportURIMetaData</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>PlaybackStorageMedium</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NONE</allowedValue>\r\n        <allowedValue>UNKNOWN</allowedValue>\r\n        <allowedValue>CD-DA</allowedValue>\r\n        <allowedValue>HDD</allowedValue>\r\n        <allowedValue>NETWORK</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>CurrentTransportActions</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>RecordMediumWriteStatus</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>PossiblePlaybackStorageMedia</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NONE</allowedValue>\r\n        <allowedValue>UNKNOWN</allowedValue>\r\n        <allowedValue>CD-DA</allowedValue>\r\n        <allowedValue>HDD</allowedValue>\r\n        <allowedValue>NETWORK</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>AVTransportURIMetaData</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>NumberOfTracks</name>\r\n      <dataType>ui4</dataType>\r\n      <allowedValueRange>\r\n        <minimum>0</minimum>\r\n        <maximum>65535</maximum>\r\n      </allowedValueRange>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_SeekMode</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>REL_TIME</allowedValue>\r\n        <allowedValue>TRACK_NR</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_SeekTarget</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>PossibleRecordStorageMedia</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>TransportStatus</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>OK</allowedValue>\r\n        <allowedValue>ERROR_OCCURRED</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>TransportPlaySpeed</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>1</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n  </serviceStateTable>\r\n</scpd>"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->loadSCPD(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Lorg/cybergarage/upnp/device/InvalidDescriptionException;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 156
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentAvTransInfo(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;)V
    .locals 3
    .param p1, "avTransInfo"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getAvTransInfoList()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    move-result-object v0

    .line 173
    .local v0, "avTransInfoList":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;
    monitor-enter v0

    .line 175
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->insertElementAt(Ljava/lang/Object;I)V

    .line 173
    monitor-exit v0

    .line 179
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 0
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .line 144
    return-void
.end method

.method public setNextAvTransInfo(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;)V
    .locals 3
    .param p1, "avTransInfo"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    monitor-enter v1

    .line 197
    const/4 v0, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->remove(I)Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->avTransInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->insertElementAt(Ljava/lang/Object;I)V

    .line 195
    monitor-exit v1

    .line 201
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlayingState(Ljava/lang/String;)V
    .locals 2
    .param p1, "playingstate"    # Ljava/lang/String;

    .prologue
    .line 51
    sput-object p1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->transportState:Ljava/lang/String;

    .line 52
    const-string v0, "PLAYING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "PAUSED_PLAYBACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 107
    sput-object p1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->relTime:Ljava/lang/String;

    .line 108
    sput-object p1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->absTime:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTrackDuration(Ljava/lang/String;)V
    .locals 2
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 98
    sput-object p1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->trackDuration:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 161
    return-void
.end method

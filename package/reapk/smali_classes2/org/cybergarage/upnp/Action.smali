.class public Lorg/cybergarage/upnp/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "action"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TIMER_INTERVAL:J = 0x1f4L


# instance fields
.field private final MAX_ADJUST_TIME_COUNT:J

.field private final MIN_ADJUST_TIMNE_COUNT:J

.field private actionNode:Lorg/cybergarage/xml/Node;

.field private actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

.field private adjustingCount:J

.field private differenceTime:J

.field public isKeepAlive:Ljava/lang/Boolean;

.field private isTimeoutTriggered:Z

.field private mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

.field private mTimer:Ljava/util/Timer;

.field private mTimerBeginTime:J

.field private mTimerTask:Ljava/util/TimerTask;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/Action;)V
    .locals 6
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    .line 59
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .line 131
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mutex:Lorg/cybergarage/util/Mutex;

    .line 482
    iput-wide v4, p0, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    .line 483
    iput-wide v4, p0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    .line 484
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->MIN_ADJUST_TIMNE_COUNT:J

    .line 485
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->MAX_ADJUST_TIME_COUNT:J

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    .line 528
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    .line 529
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    .line 735
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    .line 801
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 823
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 123
    invoke-direct {p1}, Lorg/cybergarage/upnp/Action;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 124
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->actionNode:Lorg/cybergarage/xml/Node;

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 6
    .param p1, "serviceNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    .line 59
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .line 131
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mutex:Lorg/cybergarage/util/Mutex;

    .line 482
    iput-wide v4, p0, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    .line 483
    iput-wide v4, p0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    .line 484
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->MIN_ADJUST_TIMNE_COUNT:J

    .line 485
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->MAX_ADJUST_TIME_COUNT:J

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    .line 528
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    .line 529
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    .line 735
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    .line 801
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 823
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lorg/cybergarage/upnp/Action;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 112
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "action"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->actionNode:Lorg/cybergarage/xml/Node;

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 6
    .param p1, "serviceNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "actionNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    .line 59
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .line 131
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mutex:Lorg/cybergarage/util/Mutex;

    .line 482
    iput-wide v4, p0, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    .line 483
    iput-wide v4, p0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    .line 484
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->MIN_ADJUST_TIMNE_COUNT:J

    .line 485
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->MAX_ADJUST_TIME_COUNT:J

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    .line 528
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    .line 529
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    .line 735
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    .line 801
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 823
    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lorg/cybergarage/upnp/Action;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 118
    iput-object p2, p0, Lorg/cybergarage/upnp/Action;->actionNode:Lorg/cybergarage/xml/Node;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lorg/cybergarage/upnp/Action;)J
    .locals 2

    .prologue
    .line 527
    iget-wide v0, p0, Lorg/cybergarage/upnp/Action;->mTimerBeginTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lorg/cybergarage/upnp/Action;)Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    return v0
.end method

.method static synthetic access$2(Lorg/cybergarage/upnp/Action;Z)V
    .locals 0

    .prologue
    .line 526
    iput-boolean p1, p0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    return-void
.end method

.method private clearOutputAgumentValues()V
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 303
    .local v1, "allArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v0

    .line 304
    .local v0, "allArgCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 311
    return-void

    .line 306
    :cond_0
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 307
    .local v2, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getActionData()Lorg/cybergarage/upnp/xml/ActionData;
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 336
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/ActionData;

    .line 337
    .local v1, "userData":Lorg/cybergarage/upnp/xml/ActionData;
    if-nez v1, :cond_0

    .line 339
    new-instance v1, Lorg/cybergarage/upnp/xml/ActionData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/ActionData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/ActionData;-><init>()V

    .line 340
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/ActionData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/ActionData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 343
    :cond_0
    return-object v1
.end method

.method private getControlResponse()Lorg/cybergarage/upnp/control/ControlResponse;
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getActionData()Lorg/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ActionData;->getControlResponse()Lorg/cybergarage/upnp/control/ControlResponse;

    move-result-object v0

    return-object v0
.end method

.method private getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public static isActionNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 149
    const-string v0, "action"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private resetTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 702
    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->stopTimer()V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    .line 704
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    .line 705
    new-instance v0, Lorg/cybergarage/upnp/Action$1;

    invoke-direct {v0, p0}, Lorg/cybergarage/upnp/Action$1;-><init>(Lorg/cybergarage/upnp/Action;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cybergarage/upnp/Action;->mTimerBeginTime:J

    .line 732
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 733
    return-void
.end method

.method private setControlResponse(Lorg/cybergarage/upnp/control/ControlResponse;)V
    .locals 1
    .param p1, "res"    # Lorg/cybergarage/upnp/control/ControlResponse;

    .prologue
    .line 470
    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getActionData()Lorg/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ActionData;->setControlResponse(Lorg/cybergarage/upnp/control/ControlResponse;)V

    .line 471
    return-void
.end method

.method private setRealTimeStrategy(Lorg/cybergarage/upnp/control/ActionRequest;)V
    .locals 4
    .param p1, "ctrlReq"    # Lorg/cybergarage/upnp/control/ActionRequest;

    .prologue
    .line 533
    sget-boolean v0, Lorg/cybergarage/upnp/ControlPoint;->isOpenRealTime:Z

    if-eqz v0, :cond_0

    .line 535
    iget-wide v0, p0, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 537
    if-eqz p1, :cond_0

    .line 539
    const-string v0, "MAXDELAYTIME"

    sget-wide v2, Lorg/cybergarage/upnp/ControlPoint;->maxDelayTime:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/cybergarage/upnp/control/ActionRequest;->setHeader(Ljava/lang/String;J)V

    .line 540
    const-string v0, "DMCTIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/cybergarage/upnp/control/ActionRequest;->setHeader(Ljava/lang/String;J)V

    .line 541
    const-string v0, "DIFFTIME"

    iget-wide v2, p0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/cybergarage/upnp/control/ActionRequest;->setHeader(Ljava/lang/String;J)V

    .line 545
    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 693
    iput-object v1, p0, Lorg/cybergarage/upnp/Action;->mTimerTask:Ljava/util/TimerTask;

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 696
    iput-object v1, p0, Lorg/cybergarage/upnp/Action;->mTimer:Ljava/util/Timer;

    .line 698
    :cond_1
    return-void
.end method


# virtual methods
.method public getActionListener()Lorg/cybergarage/upnp/control/ActionListener;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getActionData()Lorg/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ActionData;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method public getActionNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->actionNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getActionRequest()Lorg/cybergarage/upnp/control/ActionRequest;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    .line 742
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->setVersion(Ljava/lang/String;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->actionRequest:Lorg/cybergarage/upnp/control/ActionRequest;

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 244
    .local v1, "argList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v4

    .line 245
    .local v4, "nArgs":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 254
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 247
    :cond_0
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 248
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "argName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 245
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1
.end method

.method public getArgumentIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 324
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 326
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v1

    goto :goto_0
.end method

.method public getArgumentList()Lorg/cybergarage/upnp/ArgumentList;
    .locals 8

    .prologue
    .line 174
    new-instance v1, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 175
    .local v1, "argumentList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "argumentList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 176
    .local v2, "argumentListNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_1

    .line 187
    :cond_0
    return-object v1

    .line 178
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v5

    .line 179
    .local v5, "nodeCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 181
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 182
    .local v4, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v4}, Lorg/cybergarage/upnp/Argument;->isArgumentNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 179
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Argument;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/cybergarage/upnp/Argument;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 185
    .local v0, "argument":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getArgumentValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 316
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_0

    .line 317
    const-string v1, ""

    .line 318
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getControlStatus()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getControlResponse()Lorg/cybergarage/upnp/control/ControlResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPError()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v0

    return-object v0
.end method

.method public getInputArgumentList()Lorg/cybergarage/upnp/ArgumentList;
    .locals 6

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 214
    .local v1, "allArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v0

    .line 215
    .local v0, "allArgCnt":I
    new-instance v3, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 216
    .local v3, "argList":Lorg/cybergarage/upnp/ArgumentList;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 223
    return-object v3

    .line 218
    :cond_0
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 219
    .local v2, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->isInDirection()Z

    move-result v5

    if-nez v5, :cond_1

    .line 216
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputArgumentList()Lorg/cybergarage/upnp/ArgumentList;
    .locals 6

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 229
    .local v1, "allArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v0

    .line 230
    .local v0, "allArgCnt":I
    new-instance v3, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 231
    .local v3, "argList":Lorg/cybergarage/upnp/ArgumentList;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 238
    return-object v3

    .line 233
    :cond_0
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 234
    .local v2, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getPostActionFailedReason()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    return-object v0
.end method

.method public getService()Lorg/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/cybergarage/upnp/Service;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getStatus()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isKeepAlive()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 136
    return-void
.end method

.method public performActionListener(Lorg/cybergarage/upnp/control/ActionRequest;)Z
    .locals 28
    .param p1, "actionReq"    # Lorg/cybergarage/upnp/control/ActionRequest;

    .prologue
    .line 365
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v13

    .line 366
    .local v13, "listener":Lorg/cybergarage/upnp/control/ActionListener;
    if-nez v13, :cond_0

    .line 367
    const/16 v25, 0x0

    .line 456
    :goto_0
    return v25

    .line 369
    :cond_0
    new-instance v6, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v6}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 370
    .local v6, "actionRes":Lorg/cybergarage/upnp/control/ActionResponse;
    const/16 v25, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    .line 371
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->clearOutputAgumentValues()V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 377
    .local v16, "dmrTimes":J
    const-string v25, "REPLY"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v22

    .line 379
    .local v22, "replyHeader":Lorg/cybergarage/http/HTTPHeader;
    const-string v25, "MAXDELAYTIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v18

    .line 380
    .local v18, "maxDelayHeader":Lorg/cybergarage/http/HTTPHeader;
    if-eqz v18, :cond_4

    .line 382
    const-string v25, "DMCTIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v9

    .line 383
    .local v9, "dmcTimeHeader":Lorg/cybergarage/http/HTTPHeader;
    const-string v25, "DIFFTIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v7

    .line 384
    .local v7, "diffTimeHeader":Lorg/cybergarage/http/HTTPHeader;
    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    .line 386
    invoke-virtual {v9}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, "dmcTimeValue":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, "diffTimeValue":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 389
    .local v19, "maxDelayTimeValue":Ljava/lang/String;
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    if-eqz v19, :cond_4

    .line 391
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 392
    .local v14, "dmcTimes":J
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 393
    .local v10, "diffTimes":J
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 395
    .local v20, "maxDelayTimes":J
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "dmc:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 396
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "diffTimes:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 397
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "maxDelayTimes:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 398
    sub-long v26, v16, v14

    sub-long v26, v26, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 399
    .local v4, "absDelayTime":J
    cmp-long v25, v4, v20

    if-lez v25, :cond_3

    .line 401
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "delay times is:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 402
    const-string v23, ""

    .line 403
    .local v23, "replyValue":Ljava/lang/String;
    if-eqz v22, :cond_1

    .line 405
    invoke-virtual/range {v22 .. v22}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 407
    :cond_1
    const-string v25, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_2

    .line 409
    const-string v25, "give up message to DMR!but reply to dmc!"

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lorg/cybergarage/upnp/control/ActionResponse;->setResponse(Lorg/cybergarage/upnp/Action;)V

    .line 411
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/control/ActionRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    move-result v25

    goto/16 :goto_0

    .line 413
    :cond_2
    const-string v25, "give up the message!!"

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 414
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 417
    .end local v23    # "replyValue":Ljava/lang/String;
    :cond_3
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "delay times is:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 423
    .end local v4    # "absDelayTime":J
    .end local v7    # "diffTimeHeader":Lorg/cybergarage/http/HTTPHeader;
    .end local v8    # "diffTimeValue":Ljava/lang/String;
    .end local v9    # "dmcTimeHeader":Lorg/cybergarage/http/HTTPHeader;
    .end local v10    # "diffTimes":J
    .end local v12    # "dmcTimeValue":Ljava/lang/String;
    .end local v14    # "dmcTimes":J
    .end local v19    # "maxDelayTimeValue":Ljava/lang/String;
    .end local v20    # "maxDelayTimes":J
    :cond_4
    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 428
    if-eqz v22, :cond_5

    .line 430
    invoke-virtual/range {v22 .. v22}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 431
    .restart local v23    # "replyValue":Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 433
    const-string v25, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_5

    .line 435
    const-string v25, "DMR\u4e0d\u9700\u8981\u56de\u590d\u6d88\u606f"

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 436
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 445
    .end local v23    # "replyValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lorg/cybergarage/upnp/control/ActionResponse;->setResponse(Lorg/cybergarage/upnp/Action;)V

    .line 452
    :goto_1
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 453
    invoke-virtual {v6}, Lorg/cybergarage/upnp/control/ActionResponse;->print()V

    .line 456
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/control/ActionRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    move-result v25

    goto/16 :goto_0

    .line 448
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->getStatus()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v24

    .line 449
    .local v24, "upnpStatus":Lorg/cybergarage/upnp/UPnPStatus;
    invoke-virtual/range {v24 .. v24}, Lorg/cybergarage/upnp/UPnPStatus;->getCode()I

    move-result v25

    invoke-virtual/range {v24 .. v24}, Lorg/cybergarage/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v26

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/cybergarage/upnp/control/ActionResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public postControlAction()Z
    .locals 32

    .prologue
    .line 586
    sget-object v23, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_UNKOWN:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setPostFailedReason(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 587
    const-string v23, "do postControlAction()"

    invoke-static/range {v23 .. v23}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 589
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    .line 592
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v4

    .line 593
    .local v4, "actionArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->getInputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v5

    .line 595
    .local v5, "actionInputArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->getActionRequest()Lorg/cybergarage/upnp/control/ActionRequest;

    move-result-object v8

    .line 596
    .local v8, "ctrlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    const-string v23, "REPLY"

    const-string v28, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5}, Lorg/cybergarage/upnp/control/ActionRequest;->setRequest(Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)V

    .line 599
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 600
    invoke-virtual {v8}, Lorg/cybergarage/upnp/control/ActionRequest;->print()V

    .line 604
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/upnp/Action;->setRealTimeStrategy(Lorg/cybergarage/upnp/control/ActionRequest;)V

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 608
    .local v6, "beginsendTime":J
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->resetTimer()V

    .line 610
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/cybergarage/upnp/control/ActionRequest;->post(ZZ)Lorg/cybergarage/upnp/control/ActionResponse;

    move-result-object v9

    .line 612
    .local v9, "ctrlRes":Lorg/cybergarage/upnp/control/ActionResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 613
    invoke-virtual {v9}, Lorg/cybergarage/upnp/control/ActionResponse;->print()V

    .line 615
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/cybergarage/upnp/Action;->setControlResponse(Lorg/cybergarage/upnp/control/ControlResponse;)V

    .line 617
    invoke-virtual {v9}, Lorg/cybergarage/upnp/control/ActionResponse;->getStatusCode()I

    move-result v22

    .line 618
    .local v22, "statCode":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 621
    .local v16, "receiveTime":J
    sub-long v18, v16, v6

    .line 623
    .local v18, "responeTime":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cybergarage/upnp/Action;->isTimeoutTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 625
    invoke-static {}, Lorg/cybergarage/upnp/NetworkMonitor;->getInstance()Lorg/cybergarage/upnp/NetworkMonitor;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/NetworkMonitor;->notifyResponseTime(J)V

    .line 628
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Action;->stopTimer()V

    .line 630
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v28, "responseTime:"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v9}, Lorg/cybergarage/upnp/control/ActionResponse;->isSuccessful()Z

    move-result v23

    if-nez v23, :cond_4

    .line 633
    invoke-virtual {v9}, Lorg/cybergarage/upnp/control/ActionResponse;->getStatusCode()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setPostFailedReasonByErrorCode(I)V

    .line 634
    const/16 v23, 0x0

    .line 683
    :goto_0
    return v23

    .line 638
    :cond_4
    const-string v23, "DMRTIME"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/cybergarage/upnp/control/ActionResponse;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v12

    .line 639
    .local v12, "dmrTimeHeader":Lorg/cybergarage/http/HTTPHeader;
    if-eqz v12, :cond_6

    const-wide/16 v28, 0x3e8

    cmp-long v23, v18, v28

    if-gez v23, :cond_6

    .line 641
    invoke-virtual {v12}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 642
    .local v13, "dmrTimeStr":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 644
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 645
    .local v10, "dmrTime":J
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v20, v0

    .line 646
    .local v20, "sendTime":J
    sub-long v28, v10, v6

    sub-long v24, v28, v20

    .line 647
    .local v24, "tmptime":J
    sub-long v28, v16, v10

    sub-long v26, v28, v20

    .line 648
    .local v26, "tmptime1":J
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v28, "dmrTime:"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 649
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v28, "sendTime:"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 650
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v28, "tmpTime:"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 651
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    sub-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    const-wide/16 v30, 0x64

    cmp-long v23, v28, v30

    if-gez v23, :cond_6

    .line 653
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v23, v28, v30

    if-nez v23, :cond_7

    .line 655
    const-wide/16 v28, 0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    .line 656
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cybergarage/upnp/Action;->differenceTime:J

    .line 668
    :cond_5
    :goto_1
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v28, "DMC diff DMR Time is:"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 673
    .end local v10    # "dmrTime":J
    .end local v13    # "dmrTimeStr":Ljava/lang/String;
    .end local v20    # "sendTime":J
    .end local v24    # "tmptime":J
    .end local v26    # "tmptime1":J
    :cond_6
    invoke-virtual {v9}, Lorg/cybergarage/upnp/control/ActionResponse;->getResponse()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v15

    .line 676
    .local v15, "outArgList":Lorg/cybergarage/upnp/ArgumentList;
    :try_start_0
    invoke-virtual {v4, v15}, Lorg/cybergarage/upnp/ArgumentList;->setResArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 659
    .end local v15    # "outArgList":Lorg/cybergarage/upnp/ArgumentList;
    .restart local v10    # "dmrTime":J
    .restart local v13    # "dmrTimeStr":Ljava/lang/String;
    .restart local v20    # "sendTime":J
    .restart local v24    # "tmptime":J
    .restart local v26    # "tmptime1":J
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x64

    cmp-long v23, v28, v30

    if-gez v23, :cond_5

    .line 661
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cybergarage/upnp/Action;->differenceTime:J

    move-wide/from16 v28, v0

    cmp-long v23, v28, v24

    if-lez v23, :cond_8

    .line 663
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cybergarage/upnp/Action;->differenceTime:J

    .line 665
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cybergarage/upnp/Action;->adjustingCount:J

    goto :goto_1

    .line 677
    .end local v10    # "dmrTime":J
    .end local v13    # "dmrTimeStr":Ljava/lang/String;
    .end local v20    # "sendTime":J
    .end local v24    # "tmptime":J
    .end local v26    # "tmptime1":J
    .restart local v15    # "outArgList":Lorg/cybergarage/upnp/ArgumentList;
    :catch_0
    move-exception v14

    .line 679
    .local v14, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v23, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_BAD_RESOPNSE_PARAMETER:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->setPostFailedReason(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 680
    const/16 v23, 0x192

    const-string v28, "Action succesfully delivered but invalid arguments returned."

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 681
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method public postControlActionNoReply()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 753
    iget-object v3, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 754
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    .line 756
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getInputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v0

    .line 760
    .local v0, "actionInputArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionRequest()Lorg/cybergarage/upnp/control/ActionRequest;

    move-result-object v1

    .line 762
    .local v1, "ctrlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    const-string v3, "REPLY"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/cybergarage/upnp/control/ActionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v1, p0, v0}, Lorg/cybergarage/upnp/control/ActionRequest;->setRequest(Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)V

    .line 766
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 767
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/ActionRequest;->print()V

    .line 769
    :cond_1
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/Action;->setRealTimeStrategy(Lorg/cybergarage/upnp/control/ActionRequest;)V

    .line 771
    iget-object v3, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/control/ActionRequest;->post(ZZ)Lorg/cybergarage/upnp/control/ActionResponse;

    move-result-object v3

    if-nez v3, :cond_2

    .line 775
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public print()V
    .locals 10

    .prologue
    .line 784
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Action : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 786
    .local v1, "argList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v4

    .line 787
    .local v4, "nArgs":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 795
    return-void

    .line 789
    :cond_0
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 790
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v5

    .line 791
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 792
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getDirection()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, "dir":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/cybergarage/upnp/Action;->getActionData()Lorg/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ActionData;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 358
    return-void
.end method

.method public setArgumentList(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 5
    .param p1, "al"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    const-string v4, "argumentList"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 193
    .local v1, "argumentListNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lorg/cybergarage/xml/Node;

    .end local v1    # "argumentListNode":Lorg/cybergarage/xml/Node;
    const-string v3, "argumentList"

    invoke-direct {v1, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v1    # "argumentListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 201
    :goto_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 202
    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    return-void

    .line 199
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->removeAllNodes()V

    goto :goto_0

    .line 204
    .restart local v2    # "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Argument;

    .line 205
    .local v0, "a":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/Argument;->setService(Lorg/cybergarage/upnp/Service;)V

    .line 206
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_1
.end method

.method public setArgumentValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 297
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 290
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArgumentValues(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 1
    .param p1, "argList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/ArgumentList;->set(Lorg/cybergarage/upnp/ArgumentList;)V

    .line 265
    return-void
.end method

.method public setInArgumentValues(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 1
    .param p1, "argList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/ArgumentList;->setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V

    .line 275
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "keepAlive"    # Z

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->isKeepAlive:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setOutArgumentValues(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 1
    .param p1, "argList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/ArgumentList;->setResArgs(Lorg/cybergarage/upnp/ArgumentList;)V

    .line 285
    return-void
.end method

.method public setPostFailedReason(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V
    .locals 0
    .param p1, "reason"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .prologue
    .line 553
    iput-object p1, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .line 554
    return-void
.end method

.method public setPostFailedReasonByErrorCode(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 558
    sparse-switch p1, :sswitch_data_0

    .line 579
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_UNKOWN:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .line 582
    :goto_0
    return-void

    .line 561
    :sswitch_0
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_100:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    goto :goto_0

    .line 564
    :sswitch_1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_400:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    goto :goto_0

    .line 567
    :sswitch_2
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_404:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    goto :goto_0

    .line 570
    :sswitch_3
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_412:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    goto :goto_0

    .line 573
    :sswitch_4
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_416:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    goto :goto_0

    .line 576
    :sswitch_5
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_POST_ACTION_BY_ERROR_500:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    iput-object v0, p0, Lorg/cybergarage/upnp/Action;->mPostActionFailedReson:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x190 -> :sswitch_1
        0x194 -> :sswitch_2
        0x19c -> :sswitch_3
        0x1a0 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method setService(Lorg/cybergarage/upnp/Service;)V
    .locals 3
    .param p1, "s"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Action;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 82
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    return-void

    .line 85
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Argument;

    .line 86
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Argument;->setService(Lorg/cybergarage/upnp/Service;)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 811
    invoke-static {p1}, Lorg/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 812
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "descr"    # Ljava/lang/String;

    .prologue
    .line 805
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 806
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 827
    iput-object p1, p0, Lorg/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 828
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/cybergarage/upnp/Action;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 141
    return-void
.end method

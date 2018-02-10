.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/IStdDmrController;


# static fields
.field private static final RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

.field private static final START_POSITION:Ljava/lang/String; = "00:00:00"


# instance fields
.field protected mAvailableFunctions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetDmrDevice:Lorg/cybergarage/upnp/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v1, 0x0

    const-string v2, ""

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v1, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 20
    return-void
.end method

.method protected constructor <init>(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "targetDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    .line 24
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isSuitableDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    .line 27
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->checkAviliableFunctions(Lorg/cybergarage/upnp/Device;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    goto :goto_0
.end method


# virtual methods
.method protected checkAviliableFunctions(Lorg/cybergarage/upnp/Device;)V
    .locals 5
    .param p1, "targetDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 37
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    .line 38
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 42
    return-void

    .line 38
    :cond_0
    aget-object v0, v2, v1

    .line 40
    .local v0, "function":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAvailableFunctions()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    return-object v0
.end method

.method public getMediaDuration()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 209
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 214
    :goto_0
    return-object v1

    .line 213
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 214
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaUri()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 220
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIAURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 225
    :goto_0
    return-object v1

    .line 224
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIAINFO:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 225
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public getPosition()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 5

    .prologue
    .line 162
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETPOSITION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 201
    :cond_0
    :goto_0
    return-object v1

    .line 167
    :cond_1
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONABS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 168
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v3, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    .line 170
    .local v1, "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    if-nez v1, :cond_2

    .line 172
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    .end local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 173
    .restart local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v3, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_NOT_IMPLEMENTED:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->getResultDescription()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 179
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    .end local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 180
    .restart local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v3, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_3
    const-string v3, "00:00:00"

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->getResultString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    .end local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 194
    .restart local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v3, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v2

    .line 195
    .local v2, "actionResultRel":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 201
    goto :goto_0
.end method

.method public getTransportState()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 151
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 156
    :goto_0
    return-object v1

    .line 155
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 156
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public getVolume()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 294
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 299
    :goto_0
    return-object v1

    .line 298
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getSoundArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 299
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method protected isConnectedToDevice()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isSuitableDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    return v0
.end method

.method public isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z
    .locals 1
    .param p1, "function"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isSuitableDevice(Lorg/cybergarage/upnp/Device;)Z
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    return v0
.end method

.method public pause()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 129
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 134
    :goto_0
    return-object v1

    .line 133
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 134
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public play()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 118
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 123
    :goto_0
    return-object v1

    .line 122
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getPlayArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 123
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public playMedia(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    .prologue
    .line 80
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAYMEDIA:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->pushUrl(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v0

    .line 87
    .local v0, "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->play()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v0

    goto :goto_0
.end method

.method public pushUrl(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    .prologue
    .line 101
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 112
    :goto_0
    return-object v1

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    if-nez p2, :cond_2

    .line 108
    :cond_1
    new-instance v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v2, 0x0

    const-string v3, ""

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v1, v2, v3, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {p1, p2, p3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getPushUrlArgumentValues(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 112
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public seek(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 4
    .param p1, "targetPosition"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 250
    :cond_0
    :goto_0
    return-object v1

    .line 236
    :cond_1
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isValidPositionStr(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    new-instance v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v2, 0x0

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v1, v2, p1, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 241
    :cond_2
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getSeekRELArgumentValues(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 243
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v2, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    .line 245
    .local v1, "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    :cond_3
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    .end local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getSeekABSArgumentValues(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 248
    .restart local v0    # "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v2, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public setVolume(I)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 267
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 277
    :goto_0
    return-object v1

    .line 271
    :cond_0
    if-ltz p1, :cond_1

    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    .line 273
    :cond_1
    new-instance v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v1, v2, v3, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 276
    :cond_2
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getSetVolumeArgumentValues(I)Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 277
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public stop()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 3

    .prologue
    .line 140
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->RESULT_UNAVAILABLE_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .line 145
    :goto_0
    return-object v1

    .line 144
    :cond_0
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;-><init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V

    .line 145
    .local v0, "actionData":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->mTargetDmrDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v1

    goto :goto_0
.end method

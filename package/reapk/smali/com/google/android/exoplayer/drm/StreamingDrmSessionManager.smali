.class public Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmSessionManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field final callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private final mediaDrm:Landroid/media/MediaDrm;

.field final mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Landroid/os/Handler;

.field final postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 58
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x65fb0f8667bfbd7aL

    const-wide v4, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "playbackLooper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 105
    iput-object p3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 106
    iput-object p4, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 107
    iput-object p5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 108
    iput-object p6, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    .line 110
    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    invoke-direct {v1, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    new-instance v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 117
    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {v1, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    .line 118
    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {v1, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    .line 119
    iput v4, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 120
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    new-instance v1, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v1, v4, v0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 113
    .end local v0    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public static newPlayReadyInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .param p0, "playbackLooper"    # Landroid/os/Looper;
    .param p1, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p2, "customData"    # Ljava/lang/String;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "PRCustomData"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V

    return-object v0

    .line 172
    .end local v4    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .param p0, "playbackLooper"    # Landroid/os/Looper;
    .param p1, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$2;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 414
    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x4

    .line 367
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_1

    .line 391
    .end local p1    # "response":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 372
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 373
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 378
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 379
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 380
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 394
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 332
    iput-boolean v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 333
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 353
    .end local p1    # "response":Ljava/lang/Object;
    :goto_0
    return-void

    .line 338
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 339
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 344
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 345
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-ne v1, v3, :cond_2

    .line 346
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/media/DeniedByServerException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 348
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_1
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private openInternal(Z)V
    .locals 4
    .param p1, "allowProvisioning"    # Z

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    .line 308
    new-instance v1, Landroid/media/MediaCrypto;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-direct {v1, v2, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 309
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 310
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 317
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postKeyRequest()V
    .locals 8

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v3, v3, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v7

    .line 360
    .local v7, "keyRequest":Landroid/media/MediaDrm$KeyRequest;
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v7    # "keyRequest":Landroid/media/MediaDrm$KeyRequest;
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v6

    .line 362
    .local v6, "e":Landroid/media/NotProvisionedException;
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postProvisionRequest()V
    .locals 3

    .prologue
    .line 323
    iget-boolean v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 327
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 328
    .local v0, "request":Landroid/media/MediaDrm$ProvisionRequest;
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 293
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 295
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 296
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 297
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 298
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 301
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    goto :goto_0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 4
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    const/4 v3, 0x1

    .line 255
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v1, v3, :cond_0

    .line 281
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 259
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v1, :cond_3

    .line 264
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 265
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v1, :cond_2

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media does not support uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 269
    :cond_2
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3

    .line 271
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v1, v1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    sget-object v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 272
    .local v0, "psshData":[B
    if-nez v0, :cond_4

    .line 279
    .end local v0    # "psshData":[B
    :cond_3
    :goto_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 280
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_0

    .line 275
    .restart local v0    # "psshData":[B
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    goto :goto_1
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 251
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

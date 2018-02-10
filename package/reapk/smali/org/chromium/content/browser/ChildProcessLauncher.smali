.class public Lorg/chromium/content/browser/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;,
        Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;,
        Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CALLBACK_FOR_DOWNLOAD_PROCESS:I = 0x4

.field static final CALLBACK_FOR_GPU_PROCESS:I = 0x1

.field static final CALLBACK_FOR_RENDERER_PROCESS:I = 0x2

.field static final CALLBACK_FOR_UNKNOWN_PROCESS:I = 0x0

.field static final CALLBACK_FOR_UTILITY_PROCESS:I = 0x3

.field private static final FREE_CONNECTION_DELAY_MILLIS:J = 0x1L

.field private static final NULL_PROCESS_HANDLE:I = 0x0

.field private static final NUM_PRIVILEGED_SERVICES_KEY:Ljava/lang/String; = "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

.field private static final NUM_SANDBOXED_SERVICES_KEY:Ljava/lang/String; = "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

.field private static final SANDBOXED_SERVICES_NAME_KEY:Ljava/lang/String; = "org.chromium.content.browser.SANDBOXED_SERVICES_NAME"

.field public static final SWITCH_NUM_SANDBOXED_SERVICES_FOR_TESTING:Ljava/lang/String; = "num-sandboxed-services"
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field public static final SWITCH_SANDBOXED_SERVICES_NAME_FOR_TESTING:Ljava/lang/String; = "sandboxed-services-name"

.field private static final TAG:Ljava/lang/String; = "ChildProcLauncher"

.field private static sApplicationInForeground:Z

.field private static sBindingManager:Lorg/chromium/content/browser/BindingManager;

.field private static sLinkerInitialized:Z

.field private static sLinkerLoadAddress:J

.field private static sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content/browser/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private static sSurfaceTextureSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    .line 389
    sput-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 390
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 488
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    .line 492
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 495
    invoke-static {}, Lorg/chromium/content/browser/BindingManagerImpl;->createBindingManager()Lorg/chromium/content/browser/BindingManagerImpl;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 498
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    .line 502
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    .line 506
    sput-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "x4"    # J
    .param p6, "x5"    # I
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 50
    invoke-static/range {p0 .. p8}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;)V

    return-void
.end method

.method static synthetic access$1300()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(JI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V

    return-void
.end method

.method static synthetic access$1600(ILandroid/view/Surface;II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$1700(I)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 50
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getViewSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(IILandroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1900(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "inSandbox"    # Z
    .param p3, "alwaysInForeground"    # Z
    .param p4, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 422
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    .line 423
    .local v0, "chromiumLinkerParams":Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {p0, p2, v0, p3, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    .line 425
    .local v1, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v1, :cond_0

    .line 426
    invoke-interface {v1, p1}, Lorg/chromium/content/browser/ChildProcessConnection;->start([Ljava/lang/String;)V

    .line 428
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-static {v2, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->isFreeConnectionAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    sget-object v3, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v3}, Lorg/chromium/content/browser/BindingManager;->releaseAllModerateBindings()V

    .line 438
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static allocateBoundConnectionForTesting(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method private static allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "chromiumLinkerParams"    # Lorg/chromium/content/app/ChromiumLinkerParams;
    .param p3, "alwaysInForeground"    # Z
    .param p4, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 370
    new-instance v2, Lorg/chromium/content/browser/ChildProcessLauncher$1;

    invoke-direct {v2}, Lorg/chromium/content/browser/ChildProcessLauncher$1;-><init>()V

    .line 381
    .local v2, "deathCallback":Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v6}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;ZLjava/lang/String;)V

    .line 384
    invoke-static {v6, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0

    .line 381
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method static allocateConnectionForTesting(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 989
    const/4 v0, 0x1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method static allocatedSandboxedConnectionsCountForTesting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1016
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1017
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocatedConnectionsCountForTesting()I

    move-result v0

    return v0
.end method

.method static connectedServicesCountForTesting()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1024
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static crashProcessForTesting(I)Z
    .locals 4
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1048
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1056
    :goto_0
    return v1

    .line 1051
    :cond_0
    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->crashServiceForTesting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    const/4 v1, 0x1

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move v1, v2

    .line 1053
    goto :goto_0
.end method

.method private static createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 1
    .param p0, "childProcessId"    # I
    .param p1, "callbackType"    # I

    .prologue
    .line 894
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$4;

    invoke-direct {v0, p1, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$4;-><init>(II)V

    return-object v0
.end method

.method private static createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 563
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    .line 564
    return-void
.end method

.method protected static createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "commandLine"    # [Ljava/lang/String;
    .param p1, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p2, "sharedRelros"    # Landroid/os/Bundle;

    .prologue
    .line 827
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 829
    const-string v1, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 830
    const-string v1, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 831
    const-string v1, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getMask()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 832
    const-string v1, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 833
    return-object v0
.end method

.method private static destroySurfaceTextureSurface(II)V
    .locals 0
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 568
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    .line 569
    return-void
.end method

.method public static determinedVisibility(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 599
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->determinedVisibility(I)V

    .line 600
    return-void
.end method

.method static enqueuePendingSpawnForTesting(Landroid/content/Context;[Ljava/lang/String;Lorg/chromium/content/browser/ChildProcessCreationParams;Z)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;
    .param p3, "inSandbox"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 999
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getPendingSpawnQueue(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    move-result-object v14

    .line 1003
    .local v14, "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    iget-object v15, v14, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1004
    :try_start_0
    new-instance v3, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-array v7, v4, [Lorg/chromium/content/browser/FileDescriptorInfo;

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v13}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;Lorg/chromium/content/browser/ChildProcessLauncher$1;)V

    invoke-virtual {v14, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 1007
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    return-void

    .line 999
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v14    # "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1007
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v14    # "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 4
    .param p0, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 444
    const-class v2, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v2

    .line 445
    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 446
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    move-object v0, p0

    .line 454
    .local v0, "conn":Lorg/chromium/content/browser/ChildProcessConnection;
    new-instance v1, Lorg/chromium/content/browser/ChildProcessLauncher$2;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$2;-><init>(Lorg/chromium/content/browser/ChildProcessConnection;)V

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 471
    return-void

    .line 446
    .end local v0    # "conn":Lorg/chromium/content/browser/ChildProcessConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 4
    .param p0, "conn"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 474
    invoke-interface {p0}, Lorg/chromium/content/browser/ChildProcessConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    .line 476
    .local v0, "allocator":Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 477
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->getPendingSpawnQueue()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    move-result-object v1

    .line 478
    .local v1, "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    iget-object v3, v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 479
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->free(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 480
    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->dequeueLocked()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 481
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getClassNameOfService(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const-class v4, Lorg/chromium/content/app/PrivilegedProcessService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 315
    :goto_0
    return-object v3

    .line 285
    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v4

    const-string v5, "sandboxed-services-name"

    invoke-virtual {v4, v5}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v4

    const-string v5, "sandboxed-services-name"

    invoke-virtual {v4, v5}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 290
    :cond_1
    const/4 v3, 0x0

    .line 292
    .local v3, "serviceName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 293
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 295
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 296
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "org.chromium.content.browser.SANDBOXED_SERVICES_NAME"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 302
    :cond_2
    if-eqz v3, :cond_3

    .line 305
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 308
    new-instance v4, Landroid/content/ComponentName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Illegal meta data value: the child service doesn\'t exist"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 299
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get application info."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    const-class v4, Lorg/chromium/content/app/SandboxedProcessService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getConnectionAllocator(Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "inSandbox"    # Z

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 355
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0
.end method

.method private static getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 393
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    if-nez v1, :cond_1

    .line 394
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/base/library_loader/Linker;->getBaseLoadAddress()J

    move-result-wide v2

    sput-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 396
    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 397
    const-string v1, "ChildProcLauncher"

    const-string v2, "Shared RELRO support disabled!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    sput-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 403
    :cond_1
    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 414
    .local v7, "waitForSharedRelros":Z
    :goto_0
    return-object v1

    .line 406
    .end local v7    # "waitForSharedRelros":Z
    :cond_2
    const/4 v7, 0x1

    .line 407
    .restart local v7    # "waitForSharedRelros":Z
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->areTestsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 409
    .local v0, "linker":Lorg/chromium/base/library_loader/Linker;
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getTestRunnerClassNameForTesting()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getImplementationForTesting()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZLjava/lang/String;I)V

    goto :goto_0

    .line 414
    .end local v0    # "linker":Lorg/chromium/base/library_loader/Linker;
    :cond_3
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-direct {v1, v2, v3, v4}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZ)V

    goto :goto_0
.end method

.method private static getNumberOfServices(Landroid/content/Context;ZLjava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v2, -0x1

    .line 248
    .local v2, "numServices":I
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v5

    const-string v6, "num-sandboxed-services"

    invoke-virtual {v5, v6}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v5

    const-string v6, "num-sandboxed-services"

    invoke-virtual {v5, v6}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 255
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 274
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    if-gez v2, :cond_3

    .line 275
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Illegal meta data value for number of child services"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "ChildProcLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The value of --num-sandboxed-services is formatted wrongly: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 264
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 266
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 267
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v5, "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

    :goto_1
    const/4 v7, -0x1

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    const-string v5, "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 270
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get application info"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    return v2
.end method

.method private static getPendingSpawnQueue(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inSandbox"    # Z

    .prologue
    .line 363
    invoke-static {p0, p2, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;ZLjava/lang/String;)V

    .line 364
    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->getPendingSpawnQueue()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    move-result-object v0

    return-object v0
.end method

.method private static getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 5
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 574
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 577
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 578
    const-string v2, "ChildProcLauncher"

    const-string v3, "Invalid Id for surface texture."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const/4 v2, 0x0

    .line 582
    :goto_0
    return-object v2

    .line 581
    :cond_0
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 582
    :cond_1
    new-instance v2, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v2, v1}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private static getViewSurface(I)Landroid/view/Surface;
    .locals 5
    .param p0, "surfaceId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 533
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 534
    .local v0, "surface":Landroid/view/Surface;
    if-nez v0, :cond_1

    .line 535
    const-string v2, "ChildProcLauncher"

    const-string v3, "Invalid surfaceId."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 542
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    :goto_0
    return-object v0

    .line 538
    .restart local v0    # "surface":Landroid/view/Surface;
    :cond_1
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    const-string v2, "ChildProcLauncher"

    const-string v3, "Requested surface is not valid."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 540
    goto :goto_0
.end method

.method private static initConnectionAllocatorsIfNecessary(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 321
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 322
    if-eqz p1, :cond_2

    .line 323
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;

    .line 327
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const-string v0, "ChildProcLauncher"

    const-string v2, "Create a new ChildConnectionAllocator with package name = %s, inSandbox = true"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocatorMap:Ljava/util/Map;

    new-instance v2, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v4, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {p0, v5, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getClassNameOfService(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZILjava/lang/String;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_1
    :goto_0
    monitor-exit v1

    .line 344
    return-void

    .line 336
    :cond_2
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v4, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getClassNameOfService(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isApplicationInForeground()Z
    .locals 1

    .prologue
    .line 639
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return v0
.end method

.method private static isOomProtected(I)Z
    .locals 1
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 516
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->isOomProtected(I)Z

    move-result v0

    return v0
.end method

.method static logPidWarning(ILjava/lang/String;)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 975
    if-lez p0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeIsSingleProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const-string v0, "ChildProcLauncher"

    const-string v1, "%s, pid=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    :cond_0
    return-void
.end method

.method private static makeFdInfo(IIZJJ)Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 9
    .param p0, "id"    # I
    .param p1, "fd"    # I
    .param p2, "autoClose"    # Z
    .param p3, "offset"    # J
    .param p5, "size"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 666
    if-eqz p2, :cond_0

    .line 668
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 677
    .local v3, "pFd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    new-instance v1, Lorg/chromium/content/browser/FileDescriptorInfo;

    move v2, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/FileDescriptorInfo;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    .end local v3    # "pFd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v1

    .line 671
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "pFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 672
    .end local v3    # "pFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ChildProcLauncher"

    const-string v2, "Invalid FD provided for process connection, aborting connection."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method private static native nativeIsSingleProcess()Z
.end method

.method private static native nativeOnChildProcessStarted(JI)V
.end method

.method public static onBroughtToForeground()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 632
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onBroughtToForeground()V

    .line 633
    return-void
.end method

.method public static onSentToBackground()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 607
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onSentToBackground()V

    .line 608
    return-void
.end method

.method static pendingSpawnsCountForTesting(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inSandbox"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1036
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getPendingSpawnQueue(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    move-result-object v0

    .line 1037
    .local v0, "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    iget-object v2, v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1038
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sizeLocked()I

    move-result v1

    monitor-exit v2

    return v1

    .line 1039
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 547
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method

.method private static registerViewSurface(ILandroid/view/Surface;)V
    .locals 2
    .param p0, "surfaceId"    # I
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to register invalid Surface."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method public static setBindingManagerForTesting(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0
    .param p0, "manager"    # Lorg/chromium/content/browser/BindingManager;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 510
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 511
    return-void
.end method

.method public static setInForeground(IZ)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "inForeground"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 591
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/BindingManager;->setInForeground(IZ)V

    .line 592
    return-void
.end method

.method private static start(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;J)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "clientContext"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 694
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 696
    :cond_0
    const/4 v6, 0x0

    .line 697
    .local v6, "callbackType":I
    const/4 v7, 0x1

    .line 698
    .local v7, "inSandbox":Z
    const-string v0, "type"

    invoke-static {p1, v0}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 700
    .local v10, "processType":Ljava/lang/String;
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParams;->get()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v8

    .line 701
    .local v8, "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    if-eqz v8, :cond_1

    .line 702
    invoke-virtual {v8}, Lorg/chromium/content/browser/ChildProcessCreationParams;->copy()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v8

    .line 704
    :cond_1
    const-string v0, "renderer"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    const/4 v6, 0x2

    :cond_2
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    .line 733
    invoke-static/range {v0 .. v8}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;)V

    .line 735
    return-void

    .line 707
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 719
    new-instance v9, Lorg/chromium/content/browser/ChildProcessCreationParams;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getExtraBindFlags()I

    move-result v1

    invoke-virtual {v8}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getLibraryProcessType()I

    move-result v2

    invoke-direct {v9, v0, v1, v2}, Lorg/chromium/content/browser/ChildProcessCreationParams;-><init>(Ljava/lang/String;II)V

    .end local v8    # "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    .local v9, "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    move-object v8, v9

    .line 722
    .end local v9    # "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    .restart local v8    # "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    :cond_4
    const-string v0, "gpu-process"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 723
    const/4 v6, 0x1

    .line 724
    const/4 v7, 0x0

    goto :goto_0

    .line 725
    :cond_5
    const-string v0, "utility"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 727
    const/4 v6, 0x3

    goto :goto_0

    .line 729
    :cond_6
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static startDownloadProcessIfNecessary(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 748
    sget-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 749
    :cond_0
    const-string v4, "type"

    invoke-static {p1, v4}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "processType":Ljava/lang/String;
    sget-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const-string v4, "download"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 753
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 754
    .local v1, "intent":Landroid/content/Intent;
    const-class v4, Lorg/chromium/content/app/DownloadProcessService;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v4, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const/4 v4, 0x0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/chromium/content/browser/ChildProcessLauncher;->createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 760
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "com.google.android.apps.chrome.extra.child_process_callback"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v5

    invoke-interface {v5}, Lorg/chromium/content/common/IChildProcessCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 762
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 763
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v2

    .line 764
    .local v2, "linkerParams":Lorg/chromium/content/app/ChromiumLinkerParams;
    if-eqz v2, :cond_2

    .line 765
    invoke-virtual {v2, v1}, Lorg/chromium/content/app/ChromiumLinkerParams;->addIntentExtras(Landroid/content/Intent;)V

    .line 767
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 768
    return-void
.end method

.method private static startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "clientContext"    # J
    .param p6, "callbackType"    # I
    .param p7, "inSandbox"    # Z
    .param p8, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 780
    :try_start_0
    const-string v8, "ChildProcessLauncher.startInternal"

    invoke-static {v8}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 782
    const/4 v7, 0x0

    .line 783
    .local v7, "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 785
    .local v19, "packageName":Ljava/lang/String;
    :goto_0
    const-class v9, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 786
    if-eqz p7, :cond_0

    :try_start_1
    sget-object v8, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v8, :cond_0

    sget-object v8, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v8}, Lorg/chromium/content/browser/ChildProcessConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 788
    sget-object v7, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 789
    const/4 v8, 0x0

    sput-object v8, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 791
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    if-nez v7, :cond_4

    .line 793
    const/16 v18, 0x0

    .line 794
    .local v18, "alwaysInForeground":Z
    const/4 v8, 0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_1

    const/16 v18, 0x1

    .line 795
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p7

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getPendingSpawnQueue(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    move-result-object v20

    .line 797
    .local v20, "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 798
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    move/from16 v3, v18

    move-object/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    .line 800
    .end local v7    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .local v6, "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v6, :cond_3

    .line 801
    :try_start_4
    const-string v8, "ChildProcLauncher"

    const-string v9, "Allocation of new service failed. Queuing up pending spawn."

    invoke-static {v8, v9}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v7, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    invoke-direct/range {v7 .. v17}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;Lorg/chromium/content/browser/ChildProcessLauncher$1;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 805
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 815
    const-string v8, "ChildProcessLauncher.startInternal"

    invoke-static {v8}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move-object v7, v6

    .line 817
    .end local v6    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v18    # "alwaysInForeground":Z
    .end local v20    # "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    .restart local v7    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :goto_1
    return-void

    .line 783
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v19

    goto :goto_0

    .line 791
    .restart local v19    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 815
    .end local v7    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v19    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v8

    const-string v9, "ChildProcessLauncher.startInternal"

    invoke-static {v9}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v8

    .line 807
    .restart local v6    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v18    # "alwaysInForeground":Z
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    :cond_3
    :try_start_8
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v7, v6

    .line 810
    .end local v6    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v18    # "alwaysInForeground":Z
    .end local v20    # "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    .restart local v7    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :cond_4
    :try_start_9
    const-string v8, "ChildProcLauncher"

    const-string v9, "Setting up connection to process: slot=%d"

    invoke-interface {v7}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p6

    move-wide/from16 v12, p4

    .line 812
    invoke-static/range {v7 .. v13}, Lorg/chromium/content/browser/ChildProcessLauncher;->triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 815
    const-string v8, "ChildProcessLauncher.startInternal"

    invoke-static {v8}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_1

    .line 807
    .restart local v18    # "alwaysInForeground":Z
    .restart local v20    # "pendingSpawnQueue":Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    :catchall_2
    move-exception v8

    :goto_2
    :try_start_a
    monitor-exit v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local v7    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v6    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :catchall_3
    move-exception v8

    move-object v7, v6

    .end local v6    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v7    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    goto :goto_2
.end method

.method public static startModerateBindingManagement(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moderateBindingTillBackgrounded"    # Z

    .prologue
    .line 622
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lorg/chromium/content/browser/BindingManager;->startModerateBindingManagement(Landroid/content/Context;IZ)V

    .line 625
    return-void
.end method

.method static stop(I)V
    .locals 4
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 878
    const-string v1, "ChildProcLauncher"

    const-string v2, "stopping child connection: pid=%d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnection;

    .line 880
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 881
    const-string v1, "Tried to stop non-existent connection"

    invoke-static {p0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->logPidWarning(ILjava/lang/String;)V

    .line 887
    :goto_0
    return-void

    .line 884
    :cond_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v1, p0}, Lorg/chromium/content/browser/BindingManager;->clearConnection(I)V

    .line 885
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->stop()V

    .line 886
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method static triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    .locals 7
    .param p0, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "callbackType"    # I
    .param p5, "clientContext"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 844
    new-instance v4, Lorg/chromium/content/browser/ChildProcessLauncher$3;

    invoke-direct {v4, p5, p6, p4, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$3;-><init>(JILorg/chromium/content/browser/ChildProcessConnection;)V

    .line 863
    .local v4, "connectionCallback":Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 864
    :cond_0
    invoke-static {p2, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v3

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessConnection;->setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V

    .line 869
    return-void
.end method

.method private static unregisterSurfaceTextureSurface(II)V
    .locals 4
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I

    .prologue
    .line 552
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 553
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 554
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 557
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0
.end method

.method private static unregisterViewSurface(I)V
    .locals 2
    .param p0, "surfaceId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    return-void
.end method

.method public static warmUp(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 649
    const-class v2, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v2

    .line 650
    :try_start_0
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 651
    :cond_0
    :try_start_1
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v1, :cond_2

    .line 652
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParams;->get()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v0

    .line 653
    .local v0, "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessCreationParams;->copy()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v0

    .line 656
    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    sput-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 659
    .end local v0    # "params":Lorg/chromium/content/browser/ChildProcessCreationParams;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    return-void
.end method

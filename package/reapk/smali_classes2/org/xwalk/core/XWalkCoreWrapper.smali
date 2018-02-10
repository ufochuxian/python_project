.class Lorg/xwalk/core/XWalkCoreWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;
    }
.end annotation


# static fields
.field private static final BRIDGE_PACKAGE:Ljava/lang/String; = "org.xwalk.core.internal"

.field private static final TAG:Ljava/lang/String; = "XWalkLib"

.field private static final WRAPPER_PACKAGE:Ljava/lang/String; = "org.xwalk.core"

.field private static final XWALK_CORE_CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field private static sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

.field private static sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

.field private static sReservedActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sReservedActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApiVersion:I

.field private mBridgeContext:Landroid/content/Context;

.field private mBridgeLoader:Ljava/lang/ClassLoader;

.field private mCoreStatus:I

.field private mMinApiVersion:I

.field private mWrapperContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minApiVersion"    # I

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/16 v0, 0x8

    iput v0, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mApiVersion:I

    .line 224
    if-lez p2, :cond_0

    iget v0, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mApiVersion:I

    if-gt p2, v0, :cond_0

    .end local p2    # "minApiVersion":I
    :goto_0
    iput p2, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mMinApiVersion:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    .line 227
    iput-object p1, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mWrapperContext:Landroid/content/Context;

    .line 228
    return-void

    .line 224
    .restart local p2    # "minApiVersion":I
    :cond_0
    iget p2, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mApiVersion:I

    goto :goto_0
.end method

.method public static attachXWalkCore()I
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertFalse(Z)V

    .line 158
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 160
    const-string v0, "XWalkLib"

    const-string v1, "Attach xwalk core"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 162
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-direct {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->findEmbeddedCore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    iget v0, v0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    .line 188
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-direct {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->findDownloadedCore()Z

    .line 168
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    iget v0, v0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->is64bitDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v1, "org.xwalk.core"

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkCoreWrapper;->findSharedCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    :cond_2
    :goto_1
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    iget v0, v0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    goto :goto_0

    .line 177
    :cond_3
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v1, "org.xwalk.core64"

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkCoreWrapper;->findSharedCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isIaDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v1, "org.xwalk.core64.ia"

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkCoreWrapper;->findSharedCore(Ljava/lang/String;)Z

    goto :goto_1

    .line 183
    :cond_4
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v1, "org.xwalk.core"

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkCoreWrapper;->findSharedCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isIaDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v1, "org.xwalk.core.ia"

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkCoreWrapper;->findSharedCore(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private checkCoreArchitecture()Z
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 333
    :try_start_0
    const-string v6, "XWalkViewDelegate"

    invoke-virtual {p0, v6}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 334
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Lorg/xwalk/core/ReflectMethod;

    const-string v6, "loadXWalkLibrary"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-direct {v5, v1, v6, v9}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 337
    .local v5, "method":Lorg/xwalk/core/ReflectMethod;
    const/4 v0, 0x0

    .line 338
    .local v0, "architectureMatched":Z
    const/4 v4, 0x0

    .line 339
    .local v4, "libDir":Ljava/lang/String;
    iget-object v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 343
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-ge v6, v9, :cond_0

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/lib"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 360
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 361
    const-string v6, "XWalkLib"

    const-string v8, "Mismatch of CPU architecture"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v6, 0x6

    iput v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v7

    .line 376
    .end local v0    # "architectureMatched":Z
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "libDir":Ljava/lang/String;
    .end local v5    # "method":Lorg/xwalk/core/ReflectMethod;
    :goto_1
    return v6

    .line 349
    .restart local v0    # "architectureMatched":Z
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "libDir":Ljava/lang/String;
    .restart local v5    # "method":Lorg/xwalk/core/ReflectMethod;
    :cond_2
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 354
    :goto_2
    if-nez v0, :cond_1

    :try_start_2
    iget-object v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mWrapperContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 355
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getPrivateDataDir()Ljava/lang/String;

    move-result-object v4

    .line 356
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v3

    .line 351
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v6, "XWalkLib"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 365
    .end local v0    # "architectureMatched":Z
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .end local v4    # "libDir":Ljava/lang/String;
    .end local v5    # "method":Lorg/xwalk/core/ReflectMethod;
    :catch_1
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v6, "XWalkLib"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v6, :cond_3

    .line 368
    iput v12, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    move v6, v7

    .line 369
    goto :goto_1

    .line 371
    :cond_3
    const/4 v6, 0x5

    iput v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    move v6, v7

    .line 372
    goto :goto_1

    .line 375
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "architectureMatched":Z
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "libDir":Ljava/lang/String;
    .restart local v5    # "method":Lorg/xwalk/core/ReflectMethod;
    :cond_4
    const-string v6, "XWalkLib"

    const-string v7, "XWalk core architecture matched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 376
    goto :goto_1
.end method

.method private checkCorePackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 382
    :try_start_0
    iget-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mWrapperContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 384
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v3, "SHA-256"

    const-string v4, "6fd3002c5ca9a1f55ed51e92233ed4626120c266efea9d9746058c995ece68c4"

    invoke-direct {p0, v1, v3, v4}, Lorg/xwalk/core/XWalkCoreWrapper;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    const-string v3, "XWalkLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature verification failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v3, 0x7

    iput v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "XWalkLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mWrapperContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    const-string v2, "XWalkLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created package context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v2, 0x1

    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "XWalkLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCoreVersion()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 291
    const-string v6, "XWalkLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Environment] SDK:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v6, "XWalkLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[App Version] build:23.53.589.4, api:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mApiVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min_api:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mMinApiVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    const-string v6, "XWalkCoreVersion"

    invoke-virtual {p0, v6}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 297
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .local v1, "buildVersion":Ljava/lang/String;
    :try_start_1
    new-instance v6, Lorg/xwalk/core/ReflectField;

    const-string v8, "XWALK_BUILD_VERSION"

    invoke-direct {v6, v2, v8}, Lorg/xwalk/core/ReflectField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/xwalk/core/ReflectField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    :goto_0
    :try_start_2
    new-instance v6, Lorg/xwalk/core/ReflectField;

    const-string v8, "API_VERSION"

    invoke-direct {v6, v2, v8}, Lorg/xwalk/core/ReflectField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/xwalk/core/ReflectField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 303
    .local v4, "libVersion":I
    new-instance v6, Lorg/xwalk/core/ReflectField;

    const-string v8, "MIN_API_VERSION"

    invoke-direct {v6, v2, v8}, Lorg/xwalk/core/ReflectField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/xwalk/core/ReflectField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 304
    .local v5, "minLibVersion":I
    const-string v6, "XWalkLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Lib Version] build:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", api:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min_api:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadModeUpdate()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "23.53.589.4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 310
    const/16 v6, 0x8

    iput v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    move v6, v7

    .line 328
    .end local v1    # "buildVersion":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "libVersion":I
    .end local v5    # "minLibVersion":I
    :goto_1
    return v6

    .line 314
    .restart local v1    # "buildVersion":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "libVersion":I
    .restart local v5    # "minLibVersion":I
    :cond_0
    iget v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mMinApiVersion:I

    if-le v6, v4, :cond_1

    .line 315
    const/4 v6, 0x3

    iput v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    move v6, v7

    .line 316
    goto :goto_1

    .line 317
    :cond_1
    iget v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mApiVersion:I

    if-ge v6, v5, :cond_2

    .line 318
    const/4 v6, 0x4

    iput v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v7

    .line 319
    goto :goto_1

    .line 321
    .end local v1    # "buildVersion":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "libVersion":I
    .end local v5    # "minLibVersion":I
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v6, "XWalkLib"

    const-string v8, "XWalk core not found"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v6, 0x2

    iput v6, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    move v6, v7

    .line 324
    goto :goto_1

    .line 327
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "buildVersion":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "libVersion":I
    .restart local v5    # "minLibVersion":I
    :cond_2
    const-string v6, "XWalkLib"

    const-string v7, "XWalk core version matched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v6, 0x1

    goto :goto_1

    .line 300
    .end local v4    # "libVersion":I
    .end local v5    # "minLibVersion":I
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public static dockXWalkCore()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 196
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 198
    const-string v0, "XWalkLib"

    const-string v1, "Dock xwalk core"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    sput-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 200
    const/4 v0, 0x0

    sput-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 201
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-direct {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->initCoreBridge()V

    .line 202
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-direct {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->initXWalkView()V

    .line 203
    return-void
.end method

.method private findDownloadedCore()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 274
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getExtractedCoreDir()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "libDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "classes.dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "dexPath":Ljava/lang/String;
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getOptimizedDexDir()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "dexOutputPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 278
    .local v3, "localClassLoader":Ljava/lang/ClassLoader;
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-direct {v5, v1, v0, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    .line 280
    invoke-direct {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCoreVersion()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCoreArchitecture()Z

    move-result v5

    if-nez v5, :cond_1

    .line 281
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    .line 282
    const/4 v4, 0x0

    .line 287
    :goto_0
    return v4

    .line 285
    :cond_1
    const-string v5, "XWalkLib"

    const-string v6, "Running in downloaded mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput v4, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    goto :goto_0
.end method

.method private findEmbeddedCore()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 245
    iput-object v2, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    .line 247
    const-class v1, Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    .line 248
    invoke-direct {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCoreVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCoreArchitecture()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    iput-object v2, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    .line 250
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 253
    :cond_1
    const-string v1, "XWalkLib"

    const-string v2, "Running in embedded mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput v0, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    goto :goto_0
.end method

.method private findSharedCore(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCorePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    .line 262
    invoke-direct {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCoreVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->checkCoreArchitecture()Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    :cond_1
    iput-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    .line 264
    iput-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 268
    :cond_2
    const-string v0, "XWalkLib"

    const-string v2, "Running in shared mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput v1, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public static getCoreStatus()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    iget v0, v0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sProvisionalInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    iget v0, v0, Lorg/xwalk/core/XWalkCoreWrapper;->mCoreStatus:I

    goto :goto_0
.end method

.method public static getInstance()Lorg/xwalk/core/XWalkCoreWrapper;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    return-object v0
.end method

.method public static handlePostInit(Ljava/lang/String;)V
    .locals 10
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 120
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Post init xwalk core in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v5, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v5, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 126
    .local v4, "reservedActions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;

    .line 127
    .local v0, "action":Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;
    iget-object v5, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mObject:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 128
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init reserved object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mObject:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v5, Lorg/xwalk/core/ReflectMethod;

    iget-object v6, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mObject:Ljava/lang/Object;

    const-string v7, "reflectionInit"

    new-array v8, v9, [Ljava/lang/Class;

    invoke-direct {v5, v6, v7, v8}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_1
    iget-object v5, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mClass:Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 131
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init reserved class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v5, Lorg/xwalk/core/ReflectMethod;

    iget-object v6, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mClass:Ljava/lang/Class;

    const-string v7, "reflectionInit"

    new-array v8, v9, [Ljava/lang/Class;

    invoke-direct {v5, v6, v7, v8}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 134
    :cond_2
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call reserved method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-virtual {v7}, Lorg/xwalk/core/ReflectMethod;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mArguments:[Ljava/lang/Object;

    .line 136
    .local v1, "args":[Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 138
    aget-object v5, v1, v2

    instance-of v5, v5, Lorg/xwalk/core/ReflectMethod;

    if-eqz v5, :cond_3

    .line 139
    aget-object v5, v1, v2

    check-cast v5, Lorg/xwalk/core/ReflectMethod;

    invoke-virtual {v5}, Lorg/xwalk/core/ReflectMethod;->invokeWithArguments()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 137
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 143
    .end local v2    # "i":I
    :cond_4
    iget-object v5, v0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-virtual {v5, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 147
    .end local v0    # "action":Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;
    .end local v1    # "args":[Ljava/lang/Object;
    :cond_5
    sget-object v5, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v5, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static handlePreInit(Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre init xwalk core in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_1
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static handleRuntimeError(Ljava/lang/RuntimeException;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 152
    const-string v0, "XWalkLib"

    const-string v1, "This API is incompatible with the Crosswalk runtime library"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 154
    return-void
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    .line 445
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 454
    :cond_1
    return-object v2

    .line 447
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 448
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 449
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 450
    .local v0, "digit":I
    shl-int/lit8 v0, v0, 0x4

    .line 451
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v0, v3

    .line 452
    div-int/lit8 v3, v1, 0x2

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 448
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private initCoreBridge()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    const-string v2, "XWalkLib"

    const-string v3, "Init core bridge"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v2, "XWalkCoreBridge"

    invoke-virtual {p0, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 233
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "init"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-direct {v1, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 234
    .local v1, "method":Lorg/xwalk/core/ReflectMethod;
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p0, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public static initEmbeddedMode()V
    .locals 3

    .prologue
    .line 209
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    .local v0, "provisionalInstance":Lorg/xwalk/core/XWalkCoreWrapper;
    :cond_0
    :goto_0
    return-void

    .line 211
    .end local v0    # "provisionalInstance":Lorg/xwalk/core/XWalkCoreWrapper;
    :cond_1
    const-string v1, "XWalkLib"

    const-string v2, "Init embedded mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Lorg/xwalk/core/XWalkCoreWrapper;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;-><init>(Landroid/content/Context;I)V

    .line 213
    .restart local v0    # "provisionalInstance":Lorg/xwalk/core/XWalkCoreWrapper;
    invoke-direct {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->findEmbeddedCore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please have your activity extend XWalkActivity for shared mode"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_2
    sput-object v0, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 219
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sInstance:Lorg/xwalk/core/XWalkCoreWrapper;

    invoke-direct {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->initCoreBridge()V

    goto :goto_0
.end method

.method private initXWalkView()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    const-string v2, "XWalkLib"

    const-string v3, "Init xwalk view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v2, "XWalkViewDelegate"

    invoke-virtual {p0, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "init"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-direct {v1, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 241
    .local v1, "method":Lorg/xwalk/core/ReflectMethod;
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mWrapperContext:Landroid/content/Context;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public static reserveReflectClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reserve class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    new-instance v2, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public static reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V
    .locals 4
    .param p0, "method"    # Lorg/xwalk/core/ReflectMethod;

    .prologue
    .line 111
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reserve method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xwalk/core/ReflectMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    new-instance v2, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;-><init>(Lorg/xwalk/core/ReflectMethod;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public static reserveReflectObject(Ljava/lang/Object;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 99
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActivities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reserve object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lorg/xwalk/core/XWalkCoreWrapper;->sReservedActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    new-instance v2, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method private verifyPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "hashAlgorithm"    # Ljava/lang/String;
    .param p3, "hashCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 411
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v7, :cond_1

    .line 412
    const-string v7, "XWalkLib"

    const-string v8, "No signature in package info"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    return v6

    .line 416
    :cond_1
    const/4 v5, 0x0

    .line 418
    .local v5, "md":Ljava/security/MessageDigest;
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 423
    invoke-direct {p0, p3}, Lorg/xwalk/core/XWalkCoreWrapper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 424
    .local v3, "hashArray":[B
    if-nez v3, :cond_2

    .line 425
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid hash code"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 419
    .end local v3    # "hashArray":[B
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid hash algorithm"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 428
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "hashArray":[B
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 429
    const-string v7, "XWalkLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking signature "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 431
    .local v0, "binaryCert":[B
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 432
    .local v1, "digest":[B
    invoke-static {v1, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_3

    .line 433
    const-string v7, "XWalkLib"

    const-string v8, "Hash code does not match"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 437
    :cond_3
    const-string v6, "XWalkLib"

    const-string v7, "Signature passed verification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v6, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "binaryCert":[B
    .end local v1    # "digest":[B
    .end local v3    # "hashArray":[B
    .end local v4    # "i":I
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeLoader:Ljava/lang/ClassLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.xwalk.core.internal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 480
    :catch_0
    move-exception v0

    .line 482
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 463
    :try_start_0
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getBridge"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 466
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 471
    :try_start_0
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getWrapper"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    .line 472
    :catch_0
    move-exception v0

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/xwalk/core/XWalkCoreWrapper;->mBridgeContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

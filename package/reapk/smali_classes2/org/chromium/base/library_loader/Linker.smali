.class public abstract Lorg/chromium/base/library_loader/Linker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/library_loader/Linker$LibInfo;,
        Lorg/chromium/base/library_loader/Linker$TestRunner;
    }
.end annotation


# static fields
.field protected static final ADDRESS_SPACE_RESERVATION:I = 0xc000000

.field protected static final BREAKPAD_GUARD_REGION_BYTES:I = 0x1000000

.field public static final BROWSER_SHARED_RELRO_CONFIG:I = 0x1

.field public static final BROWSER_SHARED_RELRO_CONFIG_ALWAYS:I = 0x2

.field public static final BROWSER_SHARED_RELRO_CONFIG_LOW_RAM_ONLY:I = 0x1

.field public static final BROWSER_SHARED_RELRO_CONFIG_NEVER:I = 0x0

.field protected static final DEBUG:Z = false

.field public static final EXTRA_LINKER_SHARED_RELROS:Ljava/lang/String; = "org.chromium.base.android.linker.shared_relros"

.field public static final LINKER_IMPLEMENTATION_LEGACY:I = 0x1

.field public static final LINKER_IMPLEMENTATION_MODERN:I = 0x2

.field private static final LINKER_JNI_LIBRARY:Ljava/lang/String; = "chromium_android_linker"

.field public static final MEMORY_DEVICE_CONFIG_INIT:I = 0x0

.field public static final MEMORY_DEVICE_CONFIG_LOW:I = 0x1

.field public static final MEMORY_DEVICE_CONFIG_NORMAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"

.field private static sSingleton:Lorg/chromium/base/library_loader/Linker;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field protected final mLock:Ljava/lang/Object;

.field protected mMemoryDeviceConfig:I

.field private mTestRunnerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/library_loader/Linker;->mMemoryDeviceConfig:I

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public static areTestsEnabled()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    return v0
.end method

.method private static assertForTesting(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 279
    :cond_0
    return-void
.end method

.method private static assertLinkerTestsAreEnabled()V
    .locals 2

    .prologue
    .line 290
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Testing method called in non-testing context"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 293
    :cond_0
    return-void
.end method

.method public static final getInstance()Lorg/chromium/base/library_loader/Linker;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 241
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_0
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-nez v2, :cond_1

    .line 245
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 247
    .local v0, "appClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "incrementalinstall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 249
    .local v1, "isIncrementalInstall":Z
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    if-nez v1, :cond_2

    .line 250
    invoke-static {}, Lorg/chromium/base/library_loader/ModernLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v2

    sput-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    .line 254
    :goto_0
    const-string v2, "LibraryLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using linker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_1
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    monitor-exit v3

    return-object v2

    .line 252
    :cond_2
    invoke-static {}, Lorg/chromium/base/library_loader/LegacyLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v2

    sput-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    goto :goto_0

    .line 257
    .end local v1    # "isIncrementalInstall":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isInZipFile()Z
    .locals 1

    .prologue
    .line 606
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLibraryInZipFile:Z

    return v0
.end method

.method public static isUsed()Z
    .locals 1

    .prologue
    .line 617
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    return v0
.end method

.method protected static loadLinkerJniLibrary()V
    .locals 5

    .prologue
    .line 522
    const-string v1, "libchromium_android_linker.so"

    .line 527
    .local v1, "libName":Ljava/lang/String;
    :try_start_0
    const-string v2, "chromium_android_linker"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "LibraryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", trying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".cr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    const-string v2, "chromium_android_linker.cr"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeGetRandomBaseLoadAddress()J
.end method

.method public static final setImplementationForTesting(I)V
    .locals 5
    .param p0, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 304
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 305
    if-eq p0, v2, :cond_0

    if-ne p0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 308
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 311
    if-ne p0, v4, :cond_4

    .line 312
    invoke-static {}, Lorg/chromium/base/library_loader/ModernLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    .line 316
    :cond_2
    :goto_1
    const-string v0, "LibraryLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced linker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    monitor-exit v3

    .line 318
    return-void

    :cond_3
    move v0, v1

    .line 305
    goto :goto_0

    .line 313
    :cond_4
    if-ne p0, v2, :cond_2

    .line 314
    invoke-static {}, Lorg/chromium/base/library_loader/LegacyLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    goto :goto_1

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final setupForTesting(ILjava/lang/String;)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "testRunnerClassName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 416
    sget-object v4, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 418
    :try_start_0
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-nez v3, :cond_0

    .line 419
    invoke-static {p0}, Lorg/chromium/base/library_loader/Linker;->setImplementationForTesting(I)V

    .line 420
    sget-object v1, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v1, p1}, Lorg/chromium/base/library_loader/Linker;->setTestRunnerClassNameForTesting(Ljava/lang/String;)V

    .line 421
    monitor-exit v4

    .line 433
    :goto_0
    return-void

    .line 425
    :cond_0
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v3}, Lorg/chromium/base/library_loader/Linker;->getImplementationForTesting()I

    move-result v3

    if-ne v3, p0, :cond_1

    move v3, v1

    :goto_1
    invoke-static {v3}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 426
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v3}, Lorg/chromium/base/library_loader/Linker;->getTestRunnerClassNameForTesting()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "ourTestRunnerClassName":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 428
    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 432
    :goto_3
    monitor-exit v4

    goto :goto_0

    .end local v0    # "ourTestRunnerClassName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v3, v2

    .line 425
    goto :goto_1

    .restart local v0    # "ourTestRunnerClassName":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 428
    goto :goto_2

    .line 430
    :cond_3
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method protected closeLibInfoMap(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/library_loader/Linker$LibInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 819
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v2}, Lorg/chromium/base/library_loader/Linker$LibInfo;->close()V

    goto :goto_0

    .line 821
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    :cond_0
    return-void
.end method

.method protected createBundleFromLibInfoMap(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/library_loader/Linker$LibInfo;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 800
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 801
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 803
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    :cond_0
    return-object v0
.end method

.method protected createLibInfoMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/library_loader/Linker$LibInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 809
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 810
    .local v2, "library":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 811
    .local v1, "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 813
    .end local v1    # "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    .end local v2    # "library":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public abstract disableSharedRelros()V
.end method

.method public abstract finishLibraryLoad()V
.end method

.method public abstract getBaseLoadAddress()J
.end method

.method public final getImplementationForTesting()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 330
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 331
    :try_start_0
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-ne v2, p0, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 333
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    instance-of v2, v2, Lorg/chromium/base/library_loader/ModernLinker;

    if-eqz v2, :cond_1

    .line 334
    const/4 v0, 0x2

    monitor-exit v3

    .line 341
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 331
    goto :goto_0

    .line 335
    :cond_1
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    instance-of v2, v2, Lorg/chromium/base/library_loader/LegacyLinker;

    if-eqz v2, :cond_2

    .line 336
    monitor-exit v3

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 338
    :cond_2
    :try_start_1
    const-string v0, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid linker: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 341
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method protected getRandomBaseLoadAddress()J
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->nativeGetRandomBaseLoadAddress()J

    move-result-wide v0

    .line 559
    .local v0, "address":J
    return-wide v0
.end method

.method public abstract getSharedRelros()Landroid/os/Bundle;
.end method

.method public final getTestRunnerClassNameForTesting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 394
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract initServiceProcess(J)V
.end method

.method public isChromiumLinkerLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "library"    # Ljava/lang/String;

    .prologue
    .line 513
    const-string v0, "chromium_android_linker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chromium_android_linker.cr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isUsingBrowserSharedRelros()Z
.end method

.method public loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "libFilePath"    # Ljava/lang/String;

    .prologue
    .line 576
    const/4 v0, 0x1

    .line 577
    .local v0, "isFixedAddressPermitted":Z
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lorg/chromium/base/library_loader/Linker;->loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    return-void
.end method

.method abstract loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public loadLibraryNoFixedAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "libFilePath"    # Ljava/lang/String;

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "isFixedAddressPermitted":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/chromium/base/library_loader/Linker;->loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 597
    return-void
.end method

.method public abstract prepareLibraryLoad()V
.end method

.method protected final runTestRunnerClassForTesting(IZ)V
    .locals 8
    .param p1, "memoryDeviceConfig"    # I
    .param p2, "inBrowserProcess"    # Z

    .prologue
    .line 449
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 451
    iget-object v4, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 452
    :try_start_0
    iget-object v3, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 453
    const-string v3, "LibraryLoader"

    const-string v5, "Linker runtime tests not set up for this process"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_0
    const/4 v2, 0x0

    .line 461
    .local v2, "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    :try_start_1
    iget-object v3, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/chromium/base/library_loader/Linker$TestRunner;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :goto_0
    :try_start_2
    invoke-interface {v2, p1, p2}, Lorg/chromium/base/library_loader/Linker$TestRunner;->runChecks(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    const-string v3, "LibraryLoader"

    const-string v5, "Linker runtime tests failed in this process"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 472
    :cond_1
    const-string v3, "LibraryLoader"

    const-string v5, "All linker tests passed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    monitor-exit v4

    .line 474
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LibraryLoader"

    const-string v5, "Could not instantiate test runner class by name"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v5, v6}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    goto :goto_0

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public final setMemoryDeviceConfigForTesting(I)V
    .locals 4
    .param p1, "memoryDeviceConfig"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 487
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 488
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 491
    iget-object v3, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 492
    :try_start_0
    iget v0, p0, Lorg/chromium/base/library_loader/Linker;->mMemoryDeviceConfig:I

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v2}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 494
    iput p1, p0, Lorg/chromium/base/library_loader/Linker;->mMemoryDeviceConfig:I

    .line 502
    monitor-exit v3

    .line 503
    return-void

    :cond_1
    move v0, v1

    .line 488
    goto :goto_0

    :cond_2
    move v2, v1

    .line 492
    goto :goto_1

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setTestRunnerClassNameForTesting(Ljava/lang/String;)V
    .locals 2
    .param p1, "testRunnerClassName"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 376
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 378
    iput-object p1, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract useSharedRelros(Landroid/os/Bundle;)V
.end method

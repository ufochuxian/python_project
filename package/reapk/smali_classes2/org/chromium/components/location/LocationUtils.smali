.class public Lorg/chromium/components/location/LocationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/location/LocationUtils$Factory;
    }
.end annotation


# static fields
.field private static sFactory:Lorg/chromium/components/location/LocationUtils$Factory;

.field private static sInstance:Lorg/chromium/components/location/LocationUtils;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/location/LocationUtils;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "LI_LAZY_INIT_STATIC"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 40
    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sFactory:Lorg/chromium/components/location/LocationUtils$Factory;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lorg/chromium/components/location/LocationUtils;

    invoke-direct {v0}, Lorg/chromium/components/location/LocationUtils;-><init>()V

    sput-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    .line 47
    :cond_0
    :goto_0
    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    return-object v0

    .line 44
    :cond_1
    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sFactory:Lorg/chromium/components/location/LocationUtils$Factory;

    invoke-interface {v0}, Lorg/chromium/components/location/LocationUtils$Factory;->create()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    goto :goto_0
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFactory(Lorg/chromium/components/location/LocationUtils$Factory;)V
    .locals 1
    .param p0, "factory"    # Lorg/chromium/components/location/LocationUtils$Factory;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 103
    sput-object p0, Lorg/chromium/components/location/LocationUtils;->sFactory:Lorg/chromium/components/location/LocationUtils$Factory;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    .line 105
    return-void
.end method


# virtual methods
.method public getSystemLocationSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method public hasAndroidLocationPermission(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/location/LocationUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/location/LocationUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public isSystemLocationSettingEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

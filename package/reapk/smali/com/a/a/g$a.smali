.class Lcom/a/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(Lcom/a/a/g;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-direct {p0}, Lcom/a/a/g$a;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->b:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/a/a/g$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->d:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/a/a/g$a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->e:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/a/a/g$a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->f:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/a/a/g$a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->g:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/a/a/g$a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->h:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/a/a/g$a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->i:Ljava/lang/String;

    .line 189
    invoke-direct {p0}, Lcom/a/a/g$a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->j:Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lcom/a/a/g$a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->c:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/a/a/g$a;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g$a;->k:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/a/a/g$a;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/g$a;->m:Z

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/g;Lcom/a/a/g$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/a/a/g;
    .param p2, "x1"    # Lcom/a/a/g$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/a/a/g$a;-><init>(Lcom/a/a/g;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-static {v1}, Lcom/a/a/g;->a(Lcom/a/a/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-static {v2}, Lcom/a/a/g;->a(Lcom/a/a/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 203
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 204
    :catch_0
    move-exception v1

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "android"

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-static {v1}, Lcom/a/a/g;->a(Lcom/a/a/g;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 231
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic g(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/a/a/g$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 248
    :goto_0
    return-object v1

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/a/a/g$a;->j()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 246
    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/a/a/g$a;->k()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 252
    iget-object v2, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->p()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v9

    .line 278
    :goto_0
    return-object v2

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->o()Landroid/location/Location;

    move-result-object v8

    .line 257
    .local v8, "recent":Landroid/location/Location;
    if-eqz v8, :cond_2

    .line 259
    :try_start_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->q()Landroid/location/Geocoder;

    move-result-object v1

    .line 261
    .local v1, "geocoder":Landroid/location/Geocoder;
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 262
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_2

    .line 263
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 264
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 274
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    :cond_2
    :goto_1
    move-object v2, v9

    .line 278
    goto :goto_0

    .line 272
    :catch_1
    move-exception v2

    goto :goto_1

    .line 270
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method static synthetic i(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-static {v2}, Lcom/a/a/g;->a(Lcom/a/a/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 284
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 285
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 287
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 293
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 290
    :catch_0
    move-exception v2

    .line 293
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/a/a/g$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/g$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/a/a/g$a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/a/a/g$a;->l:Z

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/a/a/g$a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g$a;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/a/a/g$a;->m:Z

    return v0
.end method

.method private m()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 307
    :try_start_0
    const-string v9, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 308
    .local v0, "AdvertisingIdClient":Ljava/lang/Class;
    const-string v9, "getAdvertisingIdInfo"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 309
    .local v3, "getAdvertisingInfo":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-static {v12}, Lcom/a/a/g;->a(Lcom/a/a/g;)Landroid/content/Context;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 310
    .local v1, "advertisingInfo":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "isLimitAdTrackingEnabled"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 311
    .local v5, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 312
    .local v6, "limitAdTrackingEnabled":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    iput-boolean v7, p0, Lcom/a/a/g$a;->l:Z

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 314
    .local v4, "getId":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/a/a/g$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 322
    .end local v0    # "AdvertisingIdClient":Ljava/lang/Class;
    .end local v1    # "advertisingInfo":Ljava/lang/Object;
    .end local v3    # "getAdvertisingInfo":Ljava/lang/reflect/Method;
    .end local v4    # "getId":Ljava/lang/reflect/Method;
    .end local v5    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v6    # "limitAdTrackingEnabled":Ljava/lang/Boolean;
    :goto_1
    iget-object v7, p0, Lcom/a/a/g$a;->b:Ljava/lang/String;

    return-object v7

    .restart local v0    # "AdvertisingIdClient":Ljava/lang/Class;
    .restart local v1    # "advertisingInfo":Ljava/lang/Object;
    .restart local v3    # "getAdvertisingInfo":Ljava/lang/reflect/Method;
    .restart local v5    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .restart local v6    # "limitAdTrackingEnabled":Ljava/lang/Boolean;
    :cond_0
    move v7, v8

    .line 312
    goto :goto_0

    .line 315
    .end local v0    # "AdvertisingIdClient":Ljava/lang/Class;
    .end local v1    # "advertisingInfo":Ljava/lang/Object;
    .end local v3    # "getAdvertisingInfo":Ljava/lang/reflect/Method;
    .end local v5    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v6    # "limitAdTrackingEnabled":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v7

    const-string v8, "com.amplitude.api.DeviceInfo"

    const-string v9, "Google Play Services SDK not found!"

    invoke-virtual {v7, v8, v9}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v7

    const-string v8, "com.amplitude.api.DeviceInfo"

    const-string v9, "Google Play Services not available"

    invoke-virtual {v7, v8, v9}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v7

    const-string v8, "com.amplitude.api.DeviceInfo"

    const-string v9, "Encountered an error connecting to Google Play Services"

    invoke-virtual {v7, v8, v9, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private n()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    :try_start_0
    const-string v6, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 329
    .local v0, "GPSUtil":Ljava/lang/Class;
    const-string v6, "isGooglePlayServicesAvailable"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 330
    .local v2, "getGPSAvailable":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/a/a/g$a;->a:Lcom/a/a/g;

    invoke-static {v9}, Lcom/a/a/g;->a(Lcom/a/a/g;)Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 332
    .local v3, "status":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v6

    if-nez v6, :cond_0

    .line 346
    .end local v0    # "GPSUtil":Ljava/lang/Class;
    .end local v2    # "getGPSAvailable":Ljava/lang/reflect/Method;
    .end local v3    # "status":Ljava/lang/Integer;
    :goto_0
    return v4

    .restart local v0    # "GPSUtil":Ljava/lang/Class;
    .restart local v2    # "getGPSAvailable":Ljava/lang/reflect/Method;
    .restart local v3    # "status":Ljava/lang/Integer;
    :cond_0
    move v4, v5

    .line 332
    goto :goto_0

    .line 333
    .end local v0    # "GPSUtil":Ljava/lang/Class;
    .end local v2    # "getGPSAvailable":Ljava/lang/reflect/Method;
    .end local v3    # "status":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services Util not found!"

    invoke-virtual {v4, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_1
    move v4, v5

    .line 346
    goto :goto_0

    .line 335
    :catch_1
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services Util not found!"

    invoke-virtual {v4, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services not available"

    invoke-virtual {v4, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services not available"

    invoke-virtual {v4, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services not available"

    invoke-virtual {v4, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when checking for Google Play Services: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

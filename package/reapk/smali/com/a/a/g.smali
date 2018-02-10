.class public Lcom/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.amplitude.api.DeviceInfo"

.field public static final b:Ljava/lang/String; = "android"


# instance fields
.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/a/a/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->c:Z

    .line 35
    iput-object p1, p0, Lcom/a/a/g;->d:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/a/a/g;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/g;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/a/a/g;->d:Landroid/content/Context;

    return-object v0
.end method

.method private r()Lcom/a/a/g$a;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/g$a;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/a/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/g$a;-><init>(Lcom/a/a/g;Lcom/a/a/g$1;)V

    iput-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/g$a;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/g$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "locationListening"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/a/a/g;->c:Z

    .line 157
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->a(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->b(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->c(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->d(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->e(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->f(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->g(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->h(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->i(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->j(Lcom/a/a/g$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->k(Lcom/a/a/g$a;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/a/a/g;->r()Lcom/a/a/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g$a;->l(Lcom/a/a/g$a;)Z

    move-result v0

    return v0
.end method

.method public o()Landroid/location/Location;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/a/a/g;->p()Z

    move-result v9

    if-nez v9, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v9, p0, Lcom/a/a/g;->d:Landroid/content/Context;

    const-string v10, "location"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 107
    .local v3, "locationManager":Landroid/location/LocationManager;
    if-eqz v3, :cond_0

    .line 111
    const/4 v8, 0x0

    .line 113
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v3, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 120
    if-eqz v8, :cond_0

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 126
    .local v5, "provider":Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, "location":Landroid/location/Location;
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 134
    :goto_2
    if-eqz v2, :cond_2

    .line 135
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    .end local v2    # "location":Landroid/location/Location;
    .end local v4    # "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .end local v5    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    :cond_3
    const-wide/16 v6, -0x1

    .line 140
    .local v6, "maximumTimestamp":J
    const/4 v0, 0x0

    .line 141
    .local v0, "bestLocation":Landroid/location/Location;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 142
    .restart local v2    # "location":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-lez v10, :cond_4

    .line 143
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    .line 144
    move-object v0, v2

    goto :goto_3

    .line 129
    .end local v0    # "bestLocation":Landroid/location/Location;
    .end local v6    # "maximumTimestamp":J
    .restart local v5    # "provider":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 131
    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/a/a/g;->c:Z

    return v0
.end method

.method protected q()Landroid/location/Geocoder;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/a/a/g;->d:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-object v0
.end method

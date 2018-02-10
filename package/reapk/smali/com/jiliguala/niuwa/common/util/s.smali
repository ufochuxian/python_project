.class public Lcom/jiliguala/niuwa/common/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "netType":I
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v3, v2

    .line 63
    .end local v2    # "netType":I
    .local v3, "netType":I
    :goto_0
    return v3

    .line 53
    .end local v3    # "netType":I
    .restart local v2    # "netType":I
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 54
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v4, :cond_1

    move v3, v2

    .line 55
    .end local v2    # "netType":I
    .restart local v3    # "netType":I
    goto :goto_0

    .line 57
    .end local v3    # "netType":I
    .restart local v2    # "netType":I
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 58
    .local v1, "nType":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 59
    const/4 v2, 0x1

    :cond_2
    :goto_1
    move v3, v2

    .line 63
    .end local v2    # "netType":I
    .restart local v3    # "netType":I
    goto :goto_0

    .line 60
    .end local v3    # "netType":I
    .restart local v2    # "netType":I
    :cond_3
    if-nez v1, :cond_2

    .line 61
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public static a()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 23
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v4

    .line 27
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 28
    .local v3, "info":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 29
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 30
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_3

    .line 31
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 29
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 35
    .end local v2    # "i":I
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.class public Lcom/jiliguala/niuwa/logic/network/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/q;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/logic/network/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 43
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/logic/network/b;->c:Z

    if-eqz v4, :cond_0

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/logic/network/b;->c:Z

    .line 51
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/t;->b()Lorg/xbill/DNS/ad;

    move-result-object v0

    .line 53
    .local v0, "defaultResolver":Lorg/xbill/DNS/ad;
    new-instance v3, Lorg/xbill/DNS/am;

    const-string v4, "1.2.4.8"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "youKuResolver":Lorg/xbill/DNS/ad;
    new-instance v1, Lorg/xbill/DNS/am;

    const-string v4, "8.8.8.8"

    invoke-direct {v1, v4}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "googleFirstResolver":Lorg/xbill/DNS/ad;
    new-instance v2, Lorg/xbill/DNS/am;

    const-string v4, "8.8.4.4"

    invoke-direct {v2, v4}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "googleSecondResolver":Lorg/xbill/DNS/ad;
    new-instance v4, Lorg/xbill/DNS/m;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/xbill/DNS/ad;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Lorg/xbill/DNS/m;-><init>([Lorg/xbill/DNS/ad;)V

    invoke-static {v4}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/ad;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "defaultResolver":Lorg/xbill/DNS/ad;
    .end local v1    # "googleFirstResolver":Lorg/xbill/DNS/ad;
    .end local v2    # "googleSecondResolver":Lorg/xbill/DNS/ad;
    .end local v3    # "youKuResolver":Lorg/xbill/DNS/ad;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/b;->a()V

    .line 35
    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/a;->c(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v1, Lokhttp3/q;->a:Lokhttp3/q;

    invoke-interface {v1, p1}, Lokhttp3/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

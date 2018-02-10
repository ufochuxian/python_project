.class public Lcom/jiliguala/niuwa/logic/network/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lrx/i/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/network/a/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/network/a/a$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/network/a/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/jiliguala/niuwa/logic/network/a/a$a;->a:Lcom/jiliguala/niuwa/logic/network/a/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lokhttp3/ab;
    .locals 4
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "typ"    # Ljava/lang/String;
    .param p4, "dur"    # J

    .prologue
    .line 37
    invoke-static {p1, p2, p3, p4, p5}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;->generator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;

    move-result-object v2

    .line 38
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 40
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/network/a/a;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/a/a;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/a/a;->a:Lrx/i/b;

    return-object v0
.end method

.method private b()Lrx/i/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/a/a;->a:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/a/a;->a:Lrx/i/b;

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/a/a;->a:Lrx/i/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "typ"    # Ljava/lang/String;
    .param p3, "dur"    # J

    .prologue
    .line 44
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "bid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/a/a;->b()Lrx/i/b;

    move-result-object v6

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lokhttp3/ab;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/jiliguala/niuwa/logic/network/d;->p(Lokhttp3/ab;)Lrx/e;

    move-result-object v0

    .line 50
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 51
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 52
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v0

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/a/a$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/logic/network/a/a$1;-><init>(Lcom/jiliguala/niuwa/logic/network/a/a;)V

    .line 53
    invoke-virtual {v0, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 48
    invoke-virtual {v6, v0}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

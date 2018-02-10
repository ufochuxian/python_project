.class public Lcom/jiliguala/niuwa/logic/login/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/login/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lrx/i/b;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/logic/login/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/login/a/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/login/a/a$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/login/a/a;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jiliguala/niuwa/logic/login/a/a$a;->a:Lcom/jiliguala/niuwa/logic/login/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/login/a/a;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/a/a;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->b:Lrx/i/b;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/login/a/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/a/a;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/logic/login/a/a;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/a/a;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c()Lrx/i/b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->b:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->b:Lrx/i/b;

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->b:Lrx/i/b;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Push Type"

    const-string v2, "XM"

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Push Type"

    const-string v2, "Jpush"

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/logic/login/a/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/a/a;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->d()V

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/BindWeChat;

    invoke-direct {v2, p1}, Lcom/jiliguala/niuwa/logic/network/json/BindWeChat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "weChat":Lcom/jiliguala/niuwa/logic/network/json/BindWeChat;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 64
    .local v0, "body":Lokhttp3/ab;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->c()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 66
    invoke-interface {v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->k(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 68
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 69
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/logic/login/a/a$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/logic/login/a/a$1;-><init>(Lcom/jiliguala/niuwa/logic/login/a/a;)V

    .line 70
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V
    .locals 3
    .param p1, "_u"    # Ljava/lang/String;
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "signInListener"    # Lcom/jiliguala/niuwa/logic/login/a/b;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 186
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->c()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 188
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 189
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 190
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 191
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/login/a/a$5;

    invoke-direct {v2, p0, p3, p2}, Lcom/jiliguala/niuwa/logic/login/a/a$5;-><init>(Lcom/jiliguala/niuwa/logic/login/a/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 290
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->c()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->h()Lrx/e;

    move-result-object v1

    .line 161
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 162
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 163
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/login/a/a$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/logic/login/a/a$4;-><init>(Lcom/jiliguala/niuwa/logic/login/a/a;)V

    .line 164
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 182
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;

    const-string v3, "upgrade"

    invoke-direct {v2, p1, v3}, Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v2, "upgrade":Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 96
    .local v0, "body":Lokhttp3/ab;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->c()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 98
    invoke-interface {v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->G(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 99
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 100
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 101
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/logic/login/a/a$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/logic/login/a/a$2;-><init>(Lcom/jiliguala/niuwa/logic/login/a/a;)V

    .line 102
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 123
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;

    const-string v3, "signin"

    invoke-direct {v2, p1, v3}, Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v2, "upgrade":Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 129
    .local v0, "body":Lokhttp3/ab;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a/a;->c()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 131
    invoke-interface {v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->G(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 132
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 133
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 134
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/logic/login/a/a$3;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/logic/login/a/a$3;-><init>(Lcom/jiliguala/niuwa/logic/login/a/a;)V

    .line 135
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 155
    return-void
.end method

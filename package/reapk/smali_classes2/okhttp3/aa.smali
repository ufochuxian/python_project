.class public final Lokhttp3/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/aa$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/u;

.field private final b:Ljava/lang/String;

.field private final c:Lokhttp3/t;

.field private final d:Lokhttp3/ab;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lokhttp3/d;


# direct methods
.method private constructor <init>(Lokhttp3/aa$a;)V
    .locals 1
    .param p1, "builder"    # Lokhttp3/aa$a;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lokhttp3/aa$a;->a(Lokhttp3/aa$a;)Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/u;

    .line 37
    invoke-static {p1}, Lokhttp3/aa$a;->b(Lokhttp3/aa$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->b:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lokhttp3/aa$a;->c(Lokhttp3/aa$a;)Lokhttp3/t$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->c:Lokhttp3/t;

    .line 39
    invoke-static {p1}, Lokhttp3/aa$a;->d(Lokhttp3/aa$a;)Lokhttp3/ab;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->d:Lokhttp3/ab;

    .line 40
    invoke-static {p1}, Lokhttp3/aa$a;->e(Lokhttp3/aa$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lokhttp3/aa$a;->e(Lokhttp3/aa$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/aa;->e:Ljava/lang/Object;

    .line 41
    return-void

    :cond_0
    move-object v0, p0

    .line 40
    goto :goto_0
.end method

.method synthetic constructor <init>(Lokhttp3/aa$a;Lokhttp3/aa$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/aa$a;
    .param p2, "x1"    # Lokhttp3/aa$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lokhttp3/aa;-><init>(Lokhttp3/aa$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/aa;)Lokhttp3/u;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa;

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/u;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/aa;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa;

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/aa;)Lokhttp3/ab;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa;

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/aa;->d:Lokhttp3/ab;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/aa;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa;

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/aa;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/aa;)Lokhttp3/t;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa;

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/aa;->c:Lokhttp3/t;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lokhttp3/aa;->c:Lokhttp3/t;

    invoke-virtual {v0, p1}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/u;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/u;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lokhttp3/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lokhttp3/aa;->c:Lokhttp3/t;

    invoke-virtual {v0, p1}, Lokhttp3/t;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokhttp3/t;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lokhttp3/aa;->c:Lokhttp3/t;

    return-object v0
.end method

.method public d()Lokhttp3/ab;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/aa;->d:Lokhttp3/ab;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lokhttp3/aa;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Lokhttp3/aa$a;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lokhttp3/aa$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/aa$a;-><init>(Lokhttp3/aa;Lokhttp3/aa$1;)V

    return-object v0
.end method

.method public g()Lokhttp3/d;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/d;

    .line 81
    .local v0, "result":Lokhttp3/d;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lokhttp3/d;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lokhttp3/d;
    :cond_0
    iget-object v1, p0, Lokhttp3/aa;->c:Lokhttp3/t;

    invoke-static {v1}, Lokhttp3/d;->a(Lokhttp3/t;)Lokhttp3/d;

    move-result-object v0

    .end local v0    # "result":Lokhttp3/d;
    iput-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/d;

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/u;

    invoke-virtual {v0}, Lokhttp3/u;->d()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/aa;->a:Lokhttp3/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/aa;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokhttp3/aa;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

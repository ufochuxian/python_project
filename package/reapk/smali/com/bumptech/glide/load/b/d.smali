.class public Lcom/bumptech/glide/load/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%"


# instance fields
.field private final b:Ljava/net/URL;

.field private final c:Lcom/bumptech/glide/load/b/e;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/load/b/e;->b:Lcom/bumptech/glide/load/b/e;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/d;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/e;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/e;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Lcom/bumptech/glide/load/b/e;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String url must not be empty or null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/bumptech/glide/load/b/d;->d:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d;->b:Ljava/net/URL;

    .line 61
    iput-object p2, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/b/e;->b:Lcom/bumptech/glide/load/b/e;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/d;-><init>(Ljava/net/URL;Lcom/bumptech/glide/load/b/e;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/bumptech/glide/load/b/e;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "headers"    # Lcom/bumptech/glide/load/b/e;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/bumptech/glide/load/b/d;->b:Ljava/net/URL;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d;->d:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    .line 50
    return-void
.end method

.method private e()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->f:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d;->f:Ljava/net/URL;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->f:Ljava/net/URL;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/bumptech/glide/load/b/d;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->d:Ljava/lang/String;

    .line 98
    .local v0, "unsafeStringUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/bumptech/glide/load/b/d;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    const-string v1, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/b/d;->e:Ljava/lang/String;

    .line 103
    .end local v0    # "unsafeStringUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/d;->e:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public a()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/d;->e()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/e;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 131
    instance-of v2, p1, Lcom/bumptech/glide/load/b/d;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/bumptech/glide/load/b/d;

    .line 133
    .local v0, "other":Lcom/bumptech/glide/load/b/d;
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    iget-object v3, v0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 136
    .end local v0    # "other":Lcom/bumptech/glide/load/b/d;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 142
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

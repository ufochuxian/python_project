.class public final Lcom/bumptech/glide/load/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "User-Agent"

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String; = "Accept-Encoding"

.field private static final d:Ljava/lang/String; = "identity"

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 95
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;>;"
    sget-object v1, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "User-Agent"

    new-instance v2, Lcom/bumptech/glide/load/b/j$b;

    sget-object v3, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    const-string v1, "Accept-Encoding"

    new-instance v2, Lcom/bumptech/glide/load/b/j$b;

    const-string v3, "identity"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    .line 118
    sget-object v0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    .line 119
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->h:Z

    .line 120
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->i:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;"
    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    .line 207
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j$a;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    .line 209
    :cond_0
    return-void
.end method

.method private c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 222
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Lcom/bumptech/glide/load/b/i;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->i:Z

    if-eqz v0, :cond_2

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;

    move-result-object p0

    .line 153
    .end local p0    # "this":Lcom/bumptech/glide/load/b/j$a;
    :goto_0
    return-object p0

    .line 151
    .restart local p0    # "this":Lcom/bumptech/glide/load/b/j$a;
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j$a;->b()V

    .line 152
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/b/j$a;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/bumptech/glide/load/b/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/b/j$a;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/bumptech/glide/load/b/j;
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/b/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/j;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Lcom/bumptech/glide/load/b/i;

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j$a;->b()V

    .line 177
    if-nez p2, :cond_2

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->h:Z

    if-eqz v1, :cond_0

    const-string v1, "Accept-Encoding"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iput-boolean v2, p0, Lcom/bumptech/glide/load/b/j$a;->h:Z

    .line 188
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->i:Z

    if-eqz v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iput-boolean v2, p0, Lcom/bumptech/glide/load/b/j$a;->i:Z

    .line 192
    :cond_1
    return-object p0

    .line 180
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/b/i;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/b/j$a;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/b/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/b/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

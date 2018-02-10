.class public Lcom/alibaba/mtl/appmonitor/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/appmonitor/a/g;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/a/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:I

    .line 165
    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->c:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/appmonitor/a/g$a;)I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/mtl/appmonitor/a/g$a;)I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->c:I

    return v0
.end method

.method private b(Lcom/alibaba/mtl/appmonitor/g/h;)Lcom/alibaba/mtl/appmonitor/g/h;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/g/h;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/h;

    .line 192
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/f;->b()Ljava/util/List;

    move-result-object v5

    .line 194
    if-eqz v5, :cond_2

    .line 195
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v3, v4

    .line 196
    :goto_0
    if-ge v3, v6, :cond_2

    .line 197
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/g/e;

    .line 198
    if-eqz v1, :cond_1

    .line 199
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    const-class v7, Lcom/alibaba/mtl/appmonitor/g/g;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/g/g;

    .line 200
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/g;

    move-result-object v7

    .line 201
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/g/g;->b()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 202
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/g/g;->b()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/mtl/appmonitor/g/g;->b(D)V

    .line 204
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/g/g;->e()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/mtl/appmonitor/g/g;->c(D)V

    .line 205
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/g;)V

    .line 196
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 210
    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    .line 218
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 221
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_6

    .line 222
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/h;

    .line 223
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/h;->b()Ljava/util/Map;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 228
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 229
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/g;

    .line 233
    const-string v8, "value"

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/g;->e()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/g;->b()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 235
    const-string v8, "offset"

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/g;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_4
    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 239
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v0, v2

    .line 242
    goto :goto_0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g/h;)V
    .locals 2

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->b(Lcom/alibaba/mtl/appmonitor/g/h;)Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->b(Lcom/alibaba/mtl/appmonitor/g/h;)Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/h;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Lcom/alibaba/mtl/appmonitor/g/h;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:I

    .line 247
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->c:I

    .line 251
    return-void
.end method

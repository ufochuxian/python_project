.class public final Lcom/squareup/okhttp/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/p$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/p$a;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 207
    const-string v1, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    .line 210
    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const-string v1, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1, p1}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 230
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/squareup/okhttp/p;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/squareup/okhttp/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/p;-><init>(Lcom/squareup/okhttp/p$a;Lcom/squareup/okhttp/p$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v1

    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 266
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 253
    add-int/lit8 v0, v0, -0x2

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 256
    :cond_1
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 272
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/squareup/okhttp/p$a;->a:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    :goto_1
    return-object v1

    .line 271
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 276
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

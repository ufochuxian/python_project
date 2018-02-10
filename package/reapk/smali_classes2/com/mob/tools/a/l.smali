.class public Lcom/mob/tools/a/l;
.super Lcom/mob/tools/a/f;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mob/tools/a/f;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a/l;->a:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/a/f;)Lcom/mob/tools/a/l;
    .locals 1
    .param p1, "part"    # Lcom/mob/tools/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mob/tools/a/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-object p0
.end method

.method protected a()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/mob/tools/a/m;

    invoke-direct {v0}, Lcom/mob/tools/a/m;-><init>()V

    .line 20
    .local v0, "mpis":Lcom/mob/tools/a/m;
    iget-object v2, p0, Lcom/mob/tools/a/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/a/f;

    .line 21
    .local v1, "part":Lcom/mob/tools/a/f;
    invoke-virtual {v1}, Lcom/mob/tools/a/f;->a()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mob/tools/a/m;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 23
    .end local v1    # "part":Lcom/mob/tools/a/f;
    :cond_0
    return-object v0
.end method

.method protected b()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .local v0, "length":J
    iget-object v3, p0, Lcom/mob/tools/a/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/a/f;

    .line 37
    .local v2, "part":Lcom/mob/tools/a/f;
    invoke-virtual {v2}, Lcom/mob/tools/a/f;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 38
    goto :goto_0

    .line 39
    .end local v2    # "part":Lcom/mob/tools/a/f;
    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mob/tools/a/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/a/f;

    .line 29
    .local v0, "part":Lcom/mob/tools/a/f;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 31
    .end local v0    # "part":Lcom/mob/tools/a/f;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

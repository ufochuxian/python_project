.class public Lcom/nostra13/universalimageloader/a/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/a/b/c;


# instance fields
.field private final a:Lcom/nostra13/universalimageloader/a/b/c;

.field private final b:J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/a/b/c;J)V
    .locals 2
    .param p1, "cache"    # Lcom/nostra13/universalimageloader/a/b/c;
    .param p2, "maxAge"    # J

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->c:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    .line 49
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->b:J

    .line 50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 64
    .local v0, "loadingDate":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/a/b/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 66
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/b/c;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v1, p1, p2}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 55
    .local v0, "putSuccesfully":Z
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/a/b/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->a:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/b/c;->b()V

    .line 86
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/b/a/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

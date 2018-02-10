.class public Lcom/bumptech/glide/load/resource/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/bumptech/glide/i/h;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/i/h;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/i/h;

    invoke-direct {v0}, Lcom/bumptech/glide/i/h;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/f/g;->a:Lcom/bumptech/glide/i/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/f/g;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lcom/bumptech/glide/load/resource/f/h;->b()Lcom/bumptech/glide/load/resource/f/f;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0

    .line 48
    :cond_1
    sget-object v2, Lcom/bumptech/glide/load/resource/f/g;->a:Lcom/bumptech/glide/i/h;

    monitor-enter v2

    .line 49
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/f/g;->a:Lcom/bumptech/glide/i/h;

    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/i/h;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/f/g;->b:Ljava/util/Map;

    sget-object v3, Lcom/bumptech/glide/load/resource/f/g;->a:Lcom/bumptech/glide/i/h;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/f/f;

    .line 51
    .local v0, "result":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<**>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No transcoder registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "result":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<**>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p3, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/f/g;->b:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/i/h;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/i/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

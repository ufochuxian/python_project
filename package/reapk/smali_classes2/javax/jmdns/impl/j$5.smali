.class Ljavax/jmdns/impl/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/j;->a(Ljavax/jmdns/NetworkTopologyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljavax/jmdns/a;

.field final synthetic c:Ljava/util/Collection;

.field final synthetic d:Ljava/util/Collection;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljavax/jmdns/impl/j;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/j;Ljava/util/Collection;Ljavax/jmdns/a;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/j;

    .prologue
    .line 640
    iput-object p1, p0, Ljavax/jmdns/impl/j$5;->f:Ljavax/jmdns/impl/j;

    iput-object p2, p0, Ljavax/jmdns/impl/j$5;->a:Ljava/util/Collection;

    iput-object p3, p0, Ljavax/jmdns/impl/j$5;->b:Ljavax/jmdns/a;

    iput-object p4, p0, Ljavax/jmdns/impl/j$5;->c:Ljava/util/Collection;

    iput-object p5, p0, Ljavax/jmdns/impl/j$5;->d:Ljava/util/Collection;

    iput-object p6, p0, Ljavax/jmdns/impl/j$5;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 647
    iget-object v4, p0, Ljavax/jmdns/impl/j$5;->a:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 648
    .local v3, "type":Ljava/lang/String;
    iget-object v5, p0, Ljavax/jmdns/impl/j$5;->b:Ljavax/jmdns/a;

    invoke-virtual {v5, v3}, Ljavax/jmdns/a;->b(Ljava/lang/String;)Z

    goto :goto_0

    .line 651
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Ljavax/jmdns/impl/j$5;->c:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 653
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_0
    iget-object v5, p0, Ljavax/jmdns/impl/j$5;->b:Ljavax/jmdns/a;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->F()Ljavax/jmdns/ServiceInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/jmdns/a;->a(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 654
    :catch_0
    move-exception v5

    goto :goto_1

    .line 659
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_1
    iget-object v4, p0, Ljavax/jmdns/impl/j$5;->d:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/f;

    .line 661
    .local v1, "listener":Ljavax/jmdns/f;
    :try_start_1
    iget-object v5, p0, Ljavax/jmdns/impl/j$5;->b:Ljavax/jmdns/a;

    invoke-virtual {v5, v1}, Ljavax/jmdns/a;->a(Ljavax/jmdns/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 662
    :catch_1
    move-exception v5

    goto :goto_2

    .line 667
    .end local v1    # "listener":Ljavax/jmdns/f;
    :cond_2
    iget-object v4, p0, Ljavax/jmdns/impl/j$5;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    .restart local v3    # "type":Ljava/lang/String;
    iget-object v5, p0, Ljavax/jmdns/impl/j$5;->e:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 669
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/e;>;"
    monitor-enter v2

    .line 670
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/e;

    .line 671
    .local v1, "listener":Ljavax/jmdns/e;
    iget-object v6, p0, Ljavax/jmdns/impl/j$5;->b:Ljavax/jmdns/a;

    invoke-virtual {v6, v3, v1}, Ljavax/jmdns/a;->a(Ljava/lang/String;Ljavax/jmdns/e;)V

    goto :goto_4

    .line 673
    .end local v1    # "listener":Ljavax/jmdns/e;
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 675
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/e;>;"
    .end local v3    # "type":Ljava/lang/String;
    :cond_4
    return-void
.end method

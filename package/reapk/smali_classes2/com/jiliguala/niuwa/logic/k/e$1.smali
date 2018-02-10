.class Lcom/jiliguala/niuwa/logic/k/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/logic/k/e;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/e;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/e;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->c:Lcom/jiliguala/niuwa/logic/k/e;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 48
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->c:Lcom/jiliguala/niuwa/logic/k/e;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/k/e;->d:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->c:Lcom/jiliguala/niuwa/logic/k/e;

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/k/e;->a(Lcom/jiliguala/niuwa/logic/k/e;)[B

    move-result-object v5

    monitor-enter v5

    .line 50
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 53
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 54
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    new-instance v3, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/db/a/g;-><init>()V

    .line 55
    .local v3, "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/logic/db/a/g;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 57
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/k/e$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/a/g;->d()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v0    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .end local v3    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 61
    .restart local v0    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :try_start_1
    sget-object v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

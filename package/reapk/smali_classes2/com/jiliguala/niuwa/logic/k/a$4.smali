.class Lcom/jiliguala/niuwa/logic/k/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/logic/k/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/a;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/a;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->c:Lcom/jiliguala/niuwa/logic/k/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 203
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->c:Lcom/jiliguala/niuwa/logic/k/a;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/k/a;)[B

    move-result-object v4

    monitor-enter v4

    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->c:Lcom/jiliguala/niuwa/logic/k/a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 208
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 209
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    new-instance v2, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 210
    .local v2, "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/logic/db/a/a;->b(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 212
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/k/a$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/a/a;->d()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .end local v2    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 216
    .restart local v0    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :try_start_1
    sget-object v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentValues;

    .line 219
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 222
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    return-void
.end method

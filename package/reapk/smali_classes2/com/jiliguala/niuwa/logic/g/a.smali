.class public Lcom/jiliguala/niuwa/logic/g/a;
.super Lcom/jiliguala/niuwa/logic/g/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/g/c;


# static fields
.field private static final b:Ljava/lang/String; = "KEY_CHANNEL_NAME"

.field private static final c:Ljava/lang/String; = "KEY_CHANNEL_ID"

.field private static final d:Ljava/lang/String; = "KEY_CHANNEL_RID"

.field private static final e:Ljava/lang/String; = "KEY_PLAY_INDEX"

.field private static final f:Ljava/lang/String; = "KEY_PLAY_LIST"

.field private static final g:Ljava/lang/String;

.field private static h:Lcom/jiliguala/niuwa/logic/g/a;


# instance fields
.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/jiliguala/niuwa/logic/g/a/b;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/logic/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/logic/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/g/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/g/a;->h:Lcom/jiliguala/niuwa/logic/g/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/b;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/a;->l()V

    .line 46
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/g/a;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/a;->h:Lcom/jiliguala/niuwa/logic/g/a;

    if-nez v0, :cond_0

    .line 50
    const-class v1, Lcom/jiliguala/niuwa/logic/g/a;

    monitor-enter v1

    .line 51
    :try_start_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/g/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/g/a;->h:Lcom/jiliguala/niuwa/logic/g/a;

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/a;->h:Lcom/jiliguala/niuwa/logic/g/a;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "chnId"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/d;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v0

    .line 369
    .local v0, "index":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 371
    .local v1, "size":I
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 372
    add-int/lit8 v0, v0, -0x1

    .line 373
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x5

    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    const-string v1, "[onSaveInstanceState]"

    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "KEY_CHANNEL_NAME"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "KEY_CHANNEL_ID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSaveInstanceState] chnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chnId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "KEY_CHANNEL_RID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "KEY_PLAY_INDEX"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSaveInstanceState] rid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 387
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    const-string v1, "[onSaveInstanceState]"

    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "KEY_PLAY_LIST"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/g/d;)V
    .locals 1
    .param p1, "mOnReadyToPlayListener"    # Lcom/jiliguala/niuwa/logic/g/d;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    .line 324
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 1
    .param p1, "singleAudioData"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "playList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/g/a;->a(Ljava/util/ArrayList;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "chnId"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/a;->d()I

    move-result v0

    .line 265
    .local v0, "currentIndex":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, "-1"

    .line 266
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-2"

    .line 267
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v0, v1, v2

    .line 271
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 272
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 274
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chnId"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 444
    .local v0, "audioChannel":Lcom/jiliguala/niuwa/logic/g/a/b;
    if-eqz v0, :cond_1

    .line 445
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 446
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "chnId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "singleRes"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 115
    if-nez p4, :cond_0

    .line 116
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/g/a;->a:Ljava/lang/String;

    .line 118
    :cond_0
    const-string v3, "-1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 119
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "idx":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 122
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 136
    .local v2, "size":I
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/logic/g/d;->onPlayListEmpty()V

    .line 254
    .end local v1    # "idx":I
    .end local v2    # "size":I
    :cond_2
    :goto_0
    return-void

    .line 124
    .restart local v1    # "idx":I
    :cond_3
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/k/c;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, p2, p1, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 125
    if-eqz p1, :cond_1

    .line 126
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 128
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .restart local v2    # "size":I
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v2, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 142
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v2, :cond_8

    :goto_3
    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 145
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0047

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    .line 245
    .end local v1    # "idx":I
    .end local v2    # "size":I
    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 246
    .restart local v2    # "size":I
    if-gtz v2, :cond_1b

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .restart local v1    # "idx":I
    :cond_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, v1, v3

    goto :goto_2

    .line 143
    :cond_8
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    goto :goto_3

    .line 150
    .end local v1    # "idx":I
    .end local v2    # "size":I
    :cond_9
    const-string v3, "1000"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 151
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 152
    move v1, p3

    .line 154
    .restart local v1    # "idx":I
    if-eqz p1, :cond_b

    .line 156
    move v1, p3

    .line 157
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v3, :cond_a

    .line 158
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/k/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, p2, p1, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 169
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 170
    .restart local v2    # "size":I
    if-nez v2, :cond_d

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 171
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/logic/g/d;->onPlayListEmpty()V

    goto/16 :goto_0

    .line 161
    .end local v2    # "size":I
    :cond_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v3, :cond_c

    .line 163
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_5

    .line 165
    :cond_c
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/k/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, p2, v6, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    goto :goto_5

    .line 175
    .restart local v2    # "size":I
    :cond_d
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v2, :cond_f

    move v3, v4

    :goto_6
    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 176
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 177
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v2, :cond_10

    :goto_7
    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 179
    :cond_e
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 175
    :cond_f
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, v1, v3

    goto :goto_6

    .line 177
    :cond_10
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    goto :goto_7

    .line 184
    .end local v1    # "idx":I
    .end local v2    # "size":I
    :cond_11
    const-string v3, "-2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 186
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 187
    move v1, p3

    .line 189
    .restart local v1    # "idx":I
    if-eqz p1, :cond_13

    .line 191
    move v1, p3

    .line 192
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v3, :cond_12

    .line 193
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, p2, p1, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 204
    :cond_12
    :goto_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 205
    .restart local v2    # "size":I
    if-nez v2, :cond_15

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 206
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/logic/g/d;->onPlayListEmpty()V

    goto/16 :goto_0

    .line 196
    .end local v2    # "size":I
    :cond_13
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v3, :cond_14

    .line 198
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_8

    .line 200
    :cond_14
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, p2, p1, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    goto :goto_8

    .line 209
    .restart local v2    # "size":I
    :cond_15
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v2, :cond_17

    move v3, v4

    :goto_9
    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 210
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_16

    .line 211
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v2, :cond_18

    :goto_a
    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 213
    :cond_16
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f004c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 216
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 209
    :cond_17
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, v1, v3

    goto :goto_9

    .line 211
    :cond_18
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    goto :goto_a

    .line 219
    .end local v1    # "idx":I
    .end local v2    # "size":I
    :cond_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 220
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 222
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v3, :cond_6

    .line 223
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-direct {v3, p2, v6}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 224
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-direct {p0, v6, p2}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_1a
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 230
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v3, :cond_6

    .line 231
    new-instance v3, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-direct {v3, v6, p1}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 232
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .restart local v2    # "size":I
    :cond_1b
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v4, :cond_1c

    const-string v4, ""

    :goto_b
    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    goto :goto_b
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    const/4 v6, 0x0

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v2, "playList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/logic/g/d;->onFail()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 69
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->channel:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 70
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    .local v3, "size":I
    if-nez v3, :cond_2

    .line 73
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 74
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 86
    :goto_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v5, :cond_4

    const-string v5, ""

    :goto_2
    invoke-interface {v4, v5}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->channel_name:Ljava/lang/String;

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v0

    .line 78
    .local v0, "index":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    .line 79
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 80
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 83
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    goto :goto_1

    .line 87
    .end local v0    # "index":I
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    goto :goto_2

    .line 89
    .end local v3    # "size":I
    :cond_5
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 92
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 93
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v5, :cond_6

    const-string v5, ""

    :goto_3
    invoke-interface {v4, v5}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    goto :goto_3
.end method

.method public b()V
    .locals 3

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/a;->d()I

    move-result v0

    .line 289
    .local v0, "currentIndex":I
    add-int/lit8 v0, v0, -0x1

    .line 290
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 291
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/g/a/b;->a(I)V

    .line 293
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x5

    .line 394
    sget-object v6, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    const-string v7, "[onRestoreInstanceState]"

    invoke-static {v9, v6, v7}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v6, "KEY_CHANNEL_NAME"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "chnName":Ljava/lang/String;
    const-string v6, "KEY_CHANNEL_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "chnId":Ljava/lang/String;
    sget-object v6, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onRestoreInstanceState] chnName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", chnId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v6, "KEY_CHANNEL_RID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "rid":Ljava/lang/String;
    const-string v6, "KEY_PLAY_INDEX"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 400
    .local v2, "index":I
    sget-object v6, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onRestoreInstanceState] rid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v6, "KEY_PLAY_LIST"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 402
    .local v3, "playList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    sget-object v6, Lcom/jiliguala/niuwa/logic/g/a;->g:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onRestoreInstanceState] playList.size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v6, v5}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 404
    new-instance v5, Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-direct {v5, v0, v4, v3}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    .line 405
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 406
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iput-object v1, v5, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 407
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 402
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 410
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a;->o()V

    .line 357
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 358
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .line 360
    .local v0, "dataTemp":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 365
    .end local v0    # "dataTemp":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/a/b;->b(I)V

    .line 319
    :cond_1
    return-void
.end method

.method public f()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .locals 4

    .prologue
    .line 328
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->b()I

    move-result v2

    .line 331
    .local v2, "index":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v2    # "index":I
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a/b;->a()I

    move-result v2

    .line 345
    .local v2, "index":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v2    # "index":I
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/g/a/b;->c:Ljava/lang/String;

    .line 419
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a;->j:Lcom/jiliguala/niuwa/logic/g/a/b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 433
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    const-string v0, "LAST_AUDIO_CHANNEL"

    return-object v0
.end method

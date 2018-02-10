.class public Lcom/jiliguala/niuwa/logic/g/e;
.super Lcom/jiliguala/niuwa/logic/g/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/g/c;


# static fields
.field public static final b:Ljava/lang/String; = "b67e0d0aadb2400cbe1bba910f06b730"

.field private static final c:Ljava/lang/String; = "KEY_CHANNEL_NAME"

.field private static final d:Ljava/lang/String; = "KEY_CHANNEL_ID"

.field private static final e:Ljava/lang/String; = "KEY_CHANNEL_RID"

.field private static final f:Ljava/lang/String; = "KEY_PLAY_INDEX"

.field private static final g:Ljava/lang/String; = "KEY_PLAY_LIST"

.field private static final h:Ljava/lang/String;

.field private static i:Lcom/jiliguala/niuwa/logic/g/e;


# instance fields
.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/g/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/jiliguala/niuwa/logic/g/a/c;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/logic/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/jiliguala/niuwa/logic/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/g/e;->h:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/g/e;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/g/e;->i:Lcom/jiliguala/niuwa/logic/g/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/b;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->m:Z

    .line 44
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/g/e;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/e;->i:Lcom/jiliguala/niuwa/logic/g/e;

    if-nez v0, :cond_0

    .line 48
    const-class v1, Lcom/jiliguala/niuwa/logic/g/e;

    monitor-enter v1

    .line 49
    :try_start_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/g/e;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/g/e;->i:Lcom/jiliguala/niuwa/logic/g/e;

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/g/e;->i:Lcom/jiliguala/niuwa/logic/g/e;

    return-object v0

    .line 50
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
    .line 150
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/d;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 318
    .end local p1    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 312
    .end local v1    # "title":Ljava/lang/String;
    .restart local p1    # "title":Ljava/lang/String;
    :cond_0
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, p1

    .line 313
    .end local p1    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v1    # "title":Ljava/lang/String;
    .restart local p1    # "title":Ljava/lang/String;
    :cond_1
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "result":[Ljava/lang/String;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object p1, v0, v2

    move-object v1, p1

    .line 318
    .end local p1    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

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


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "KEY_CHANNEL_NAME"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "KEY_CHANNEL_RID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "KEY_CHANNEL_ID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "KEY_PLAY_INDEX"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/a/c;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v0, "KEY_PLAY_LIST"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/g/d;)V
    .locals 1
    .param p1, "mOnReadyToPlayListener"    # Lcom/jiliguala/niuwa/logic/g/d;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    .line 204
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
    .locals 5
    .param p1, "singleVideoData"    # Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .prologue
    const/4 v4, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/e;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/logic/g/d;->onFail()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, "size":I
    if-nez v1, :cond_3

    .line 70
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 83
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/e;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_2
    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->channel_name:Ljava/lang/String;

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    .line 73
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->m:Z

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/g/a/c;->a()I

    move-result v0

    .line 75
    .local v0, "index":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/g/a/c;->a()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 76
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 80
    :goto_3
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/logic/g/e;->m:Z

    goto :goto_1

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    goto :goto_3

    .line 84
    .end local v0    # "index":I
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    goto :goto_2

    .line 86
    .end local v1    # "size":I
    :cond_6
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/e;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    if-nez v3, :cond_7

    const-string v3, ""

    :goto_4
    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "chnId"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 129
    .local v0, "cacheChannel":Lcom/jiliguala/niuwa/logic/g/a/c;
    if-eqz v0, :cond_0

    .line 130
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/e;->d()I

    move-result v1

    .line 134
    .local v1, "currentIndex":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v2, "1000"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-1"

    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->m:Z

    .line 137
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 140
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v1, v2, v3

    .line 141
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 142
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/e;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chnId"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 362
    .local v1, "videoChannel":Lcom/jiliguala/niuwa/logic/g/a/c;
    if-eqz v1, :cond_1

    .line 363
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 364
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 5
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "chnId"    # Ljava/lang/String;
    .param p3, "expand"    # Z
    .param p4, "index"    # I
    .param p5, "singlRes"    # Z

    .prologue
    const/4 v3, 0x0

    .line 218
    if-nez p5, :cond_0

    .line 219
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/g/e;->a:Ljava/lang/String;

    .line 222
    :cond_0
    const-string v2, "1000"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/k/e;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 226
    .local v1, "size":I
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/logic/g/d;->onPlayListEmpty()V

    .line 296
    .end local v1    # "size":I
    :cond_1
    :goto_0
    return-void

    .line 231
    .restart local v1    # "size":I
    :cond_2
    invoke-virtual {v0, p4}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 232
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 234
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0268

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    .line 288
    .end local v1    # "size":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 289
    .restart local v1    # "size":I
    if-gtz v1, :cond_b

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    .end local v1    # "size":I
    :cond_3
    const-string v2, "-2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 238
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 239
    .restart local v1    # "size":I
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/logic/g/d;->onPlayListEmpty()V

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v0, p4}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 245
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 247
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f026b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    goto :goto_1

    .line 249
    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    .end local v1    # "size":I
    :cond_5
    if-eqz p3, :cond_7

    .line 250
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 251
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    if-nez v0, :cond_6

    .line 252
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    invoke-direct {v0, p2, p1}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_6
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 256
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v2, p4}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    goto :goto_1

    .line 258
    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 259
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 261
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    if-nez v0, :cond_8

    .line 262
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    invoke-direct {v0, p2, v3}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 265
    invoke-direct {p0, v3, p2}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_8
    invoke-virtual {v0, p4}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 269
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    goto/16 :goto_1

    .line 272
    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    :cond_9
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 273
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    if-nez v0, :cond_a

    .line 274
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    invoke-direct {v0, v3, p1}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    goto/16 :goto_0

    .line 292
    .restart local v1    # "size":I
    :cond_b
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "chnId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 300
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .restart local v0    # "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->channel_name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/logic/g/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    .line 306
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/e;->d()I

    move-result v0

    .line 158
    .local v0, "currentIndex":I
    add-int/lit8 v0, v0, -0x1

    .line 159
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 160
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/e;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/g/d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/g/d;->onReady(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string v5, "KEY_CHANNEL_NAME"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "chnName":Ljava/lang/String;
    const-string v5, "KEY_CHANNEL_ID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "chnId":Ljava/lang/String;
    const-string v5, "KEY_CHANNEL_RID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "rid":Ljava/lang/String;
    const-string v5, "KEY_PLAY_INDEX"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, "index":I
    const-string v5, "KEY_PLAY_LIST"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 111
    .local v3, "playList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    new-instance v5, Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-direct {v5, v0, v4, v3}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 113
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/logic/g/a/c;->a(I)V

    .line 114
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iput-object v1, v5, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 324
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .line 326
    .local v0, "dataTemp":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 331
    .end local v0    # "dataTemp":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a/c;->a()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    :cond_0
    return-void
.end method

.method public f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a/c;->a()I

    move-result v2

    .line 179
    .local v2, "index":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2    # "index":I
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    new-instance v0, Lcom/jiliguala/niuwa/logic/g/a/c;

    const-string v1, "b67e0d0aadb2400cbe1bba910f06b730"

    invoke-direct {v0, v3, v1}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/g/a/c;
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    .line 336
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    const-string v2, "b67e0d0aadb2400cbe1bba910f06b730"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "b67e0d0aadb2400cbe1bba910f06b730"

    invoke-direct {p0, v1, v3}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->c:Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->k:Lcom/jiliguala/niuwa/logic/g/a/c;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/g/a/c;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/g/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string v0, "LAST_VIDEO_CHANNEL"

    return-object v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/e;->j:Ljava/util/Map;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    const-string v1, "b67e0d0aadb2400cbe1bba910f06b730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

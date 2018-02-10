.class public Lcom/jiliguala/niuwa/services/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/services/b$b;,
        Lcom/jiliguala/niuwa/services/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x64

.field private static final b:Ljava/lang/String;

.field private static final c:I = 0x64

.field private static final d:I = 0x3


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/jiliguala/niuwa/services/b$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/services/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/services/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/jiliguala/niuwa/services/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->i:Ljava/lang/Boolean;

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/services/b$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/services/b$a;-><init>(Lcom/jiliguala/niuwa/services/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->j:Lcom/jiliguala/niuwa/services/b$a;

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/jiliguala/niuwa/services/b$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/services/b$b;-><init>(Lcom/jiliguala/niuwa/services/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/b;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 103
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isInterrupt"    # Z

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "nofityIntent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v1, "download_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "is_paused"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private b(I)I
    .locals 1
    .param p1, "download_type"    # I

    .prologue
    .line 378
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 379
    const/16 v0, 0xbb8

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/services/b;)Lcom/jiliguala/niuwa/services/b$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/jiliguala/niuwa/services/c;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "download_type"    # I
    .param p5, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v6, Lcom/jiliguala/niuwa/services/b$1;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/services/b$1;-><init>(Lcom/jiliguala/niuwa/services/b;)V

    .line 372
    .local v6, "taskListener":Lcom/jiliguala/niuwa/services/d;
    new-instance v1, Lcom/jiliguala/niuwa/services/c;

    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/services/b;->e(I)I

    move-result v9

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/services/b;->d(I)Z

    move-result v10

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/services/b;->c(I)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/services/b;->b(I)I

    move-result v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v12}, Lcom/jiliguala/niuwa/services/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/services/d;ILjava/lang/String;IZII)V

    return-object v1
.end method

.method private c(I)I
    .locals 1
    .param p1, "download_type"    # I

    .prologue
    .line 386
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 387
    const/16 v0, 0x1388

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/services/b;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    return-object v0
.end method

.method private d(Lcom/jiliguala/niuwa/services/c;)V
    .locals 3
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/services/b$b;->a(Lcom/jiliguala/niuwa/services/c;)V

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->j:Lcom/jiliguala/niuwa/services/b$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b;->a()V

    .line 98
    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 1
    .param p1, "download_type"    # I

    .prologue
    .line 394
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)I
    .locals 1
    .param p1, "download_type"    # I

    .prologue
    .line 398
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/jiliguala/niuwa/services/c;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/services/b$b;->a(I)Lcom/jiliguala/niuwa/services/c;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/services/c;

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->i:Ljava/lang/Boolean;

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/services/b$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/services/b$a;-><init>(Lcom/jiliguala/niuwa/services/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->j:Lcom/jiliguala/niuwa/services/b$a;

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->j:Lcom/jiliguala/niuwa/services/b$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b$a;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->j:Lcom/jiliguala/niuwa/services/b$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b$a;->start()V

    .line 51
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string v4, "url"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "url":Ljava/lang/String;
    const-string v4, "download_type"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "download_type":I
    const-string v4, "_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "stopIntent":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v4, "_id"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v4, "download_type"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public declared-synchronized a(Lcom/jiliguala/niuwa/services/c;)V
    .locals 7
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 269
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->onCancelled()V

    .line 273
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->e()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 279
    .local v4, "type":I
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/services/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/jiliguala/niuwa/services/c;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 283
    .local v6, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 269
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "download_type"    # I
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b;->h()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 77
    const-string v1, "\u4efb\u52a1\u5217\u8868\u5df2\u6ee1"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/jiliguala/niuwa/services/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/jiliguala/niuwa/services/c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/services/b;->d(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/c;

    .line 150
    .local v1, "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_0
    :goto_1
    return v2

    .line 148
    .restart local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/services/b$b;->b()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/services/b$b;->a(I)Lcom/jiliguala/niuwa/services/c;

    move-result-object v1

    .line 156
    .restart local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b;->i:Ljava/lang/Boolean;

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->j:Lcom/jiliguala/niuwa/services/b$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b$a;->interrupt()V

    .line 56
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b;->i()V

    .line 57
    return-void
.end method

.method public declared-synchronized b(Lcom/jiliguala/niuwa/services/c;)V
    .locals 1
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 291
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/services/b$b;->a(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/c;

    .line 197
    .local v1, "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/services/b;->a(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_1
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized c(Lcom/jiliguala/niuwa/services/c;)V
    .locals 4
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 301
    .local v0, "contains":Z
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "notifyIntent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v2, "_id"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "full_path"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "download_type"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v1    # "notifyIntent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 299
    .end local v0    # "contains":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 229
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jiliguala/niuwa/services/c;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/services/c;

    .line 231
    .local v3, "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/b;->e:Landroid/content/Context;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 236
    :cond_1
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/services/c;->onCancelled()V

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_2
    monitor-exit p0

    return-void

    .line 242
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/services/b$b;->b()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 243
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v4, v1}, Lcom/jiliguala/niuwa/services/b$b;->a(I)Lcom/jiliguala/niuwa/services/c;

    move-result-object v3

    .line 244
    .restart local v3    # "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 245
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/services/b$b;->b(Lcom/jiliguala/niuwa/services/c;)Z

    .line 242
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_5
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/services/c;

    .line 250
    .restart local v3    # "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jiliguala/niuwa/services/c;>;"
    .end local v3    # "task":Lcom/jiliguala/niuwa/services/c;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/c;

    .line 133
    .local v1, "task":Lcom/jiliguala/niuwa/services/c;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v4

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->g()Z

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/services/b$b;->b()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/services/b$b;->a(I)Lcom/jiliguala/niuwa/services/c;

    move-result-object v1

    .line 137
    .restart local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/c;

    .line 141
    .restart local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_2
    return-void
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 259
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/c;

    .line 261
    .local v1, "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/services/b;->b(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_1
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public e()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b$b;->b()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b;->f()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b;->g()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized i()V
    .locals 3

    .prologue
    .line 211
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/services/b$b;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/services/b$b;->a(I)Lcom/jiliguala/niuwa/services/c;

    move-result-object v1

    .line 213
    .local v1, "task":Lcom/jiliguala/niuwa/services/c;
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->f:Lcom/jiliguala/niuwa/services/b$b;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/services/b$b;->b(Lcom/jiliguala/niuwa/services/c;)Z

    .line 214
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/jiliguala/niuwa/services/b;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/c;

    .line 219
    .restart local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/services/b;->a(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v1    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_2
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

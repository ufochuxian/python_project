.class public Lcom/jiliguala/niuwa/logic/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "http://jlglstatic.qiniudn.com/"

.field private static final c:I = 0x1f40


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lrx/i/b;

.field private f:Landroid/app/Dialog;

.field private g:Landroid/view/View;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/jiliguala/niuwa/logic/l/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/l/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->e:Lrx/i/b;

    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/c;->d:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->h:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/l/c;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/c;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/c;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lrx/i/b;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->e:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->e:Lrx/i/b;

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->e:Lrx/i/b;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/c;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "picPath"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->b()Lrx/i/b;

    move-result-object v0

    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 140
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 141
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/l/c$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/logic/l/c$4;-><init>(Lcom/jiliguala/niuwa/logic/l/c;)V

    .line 142
    invoke-virtual {v1, v2}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v1

    .line 148
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/l/c$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/logic/l/c$3;-><init>(Lcom/jiliguala/niuwa/logic/l/c;)V

    .line 149
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 155
    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/c;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "picPath"    # Ljava/lang/String;

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/logic/l/c;->d:Landroid/content/Context;

    invoke-static {v15}, Lcom/jiliguala/niuwa/common/util/d/a;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "logRoot":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "download_error.log"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v5, "logFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v11, "picFile":Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 165
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 168
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_3

    .line 171
    const/4 v13, 0x0

    .line 199
    :cond_2
    :goto_0
    return-object v13

    .line 174
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 176
    .local v9, "now":Ljava/util/Calendar;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 177
    .local v12, "year":I
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v8, v15, 0x1

    .line 178
    .local v8, "month":I
    const/4 v15, 0x5

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 179
    .local v1, "day":I
    const/16 v15, 0xb

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 180
    .local v4, "hour":I
    const/16 v15, 0xc

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 182
    .local v7, "minute":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".zip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "zipPath":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v15}, Lcom/jiliguala/niuwa/common/util/e/g;->a(Ljava/util/Collection;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 192
    .local v14, "zipSuccess":Z
    if-nez v14, :cond_2

    .line 199
    .end local v14    # "zipSuccess":Z
    :goto_1
    const/4 v13, 0x0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/c;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x7

    new-instance v2, Lcom/jiliguala/niuwa/logic/l/c$5;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/logic/l/c$5;-><init>(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v1, p1, v2}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/c;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->b()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 237
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/c;->f(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->H(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 238
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 239
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 240
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/l/c$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/logic/l/c$6;-><init>(Lcom/jiliguala/niuwa/logic/l/c;)V

    .line 241
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 258
    return-void
.end method

.method private f(Ljava/lang/String;)Lokhttp3/ab;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/LogUrl;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/logic/network/json/LogUrl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->b()Lrx/i/b;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/l/c$8;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/l/c$8;-><init>(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V

    .line 267
    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    .line 280
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 281
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/l/c$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/logic/l/c$7;-><init>(Lcom/jiliguala/niuwa/logic/l/c;)V

    .line 282
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 288
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->e:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 80
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    if-nez v5, :cond_0

    .line 81
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->d:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0b012b

    invoke-virtual {v1, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->g:Landroid/view/View;

    .line 83
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/l/c;->d:Landroid/content/Context;

    const v7, 0x7f1000f1

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    .line 84
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/l/c;->g:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 88
    .local v4, "window":Landroid/view/Window;
    if-eqz v4, :cond_0

    .line 89
    const v5, 0x800015

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 90
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 91
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 92
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    const/4 v5, -0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->g:Landroid/view/View;

    const v6, 0x7f090158

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/l/c$1;

    invoke-direct {v6, p0, p1}, Lcom/jiliguala/niuwa/logic/l/c$1;-><init>(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->g:Landroid/view/View;

    const v6, 0x7f090491

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v5

    .line 112
    invoke-virtual {v5, p1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 113
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v10}, Lcom/bumptech/glide/f;->a(Z)Lcom/bumptech/glide/f;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v5

    .line 116
    invoke-virtual {v5, v2}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 118
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->f:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 120
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->h:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/c;->h:Landroid/os/Handler;

    new-instance v6, Lcom/jiliguala/niuwa/logic/l/c$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/logic/l/c$2;-><init>(Lcom/jiliguala/niuwa/logic/l/c;)V

    const-wide/16 v8, 0x1f40

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void

    .line 96
    .end local v2    # "iv":Landroid/widget/ImageView;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

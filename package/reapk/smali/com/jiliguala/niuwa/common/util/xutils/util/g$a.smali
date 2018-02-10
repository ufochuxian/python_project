.class Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/util/xutils/util/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)V
    .locals 1
    .param p1, "weakRef"    # Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 49
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v12

    .line 50
    .local v12, "recordCacheSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 51
    .local v2, "flashCardCacheSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v16

    .line 52
    .local v16, "videoCacheSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v6

    .line 53
    .local v6, "imgCacheSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v14

    .line 54
    .local v14, "speakRecSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v8

    .line 55
    .local v8, "interactResSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/d/a;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v4

    .line 59
    .local v4, "gameCache":J
    add-long v18, v12, v2

    add-long v18, v18, v16

    add-long v18, v18, v6

    add-long v18, v18, v14

    add-long v18, v18, v8

    add-long v18, v18, v4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->b(D)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "totalSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->b(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 63
    .local v10, "msg":Landroid/os/Message;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v10, Landroid/os/Message;->what:I

    .line 64
    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->b(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v2    # "flashCardCacheSize":J
    .end local v4    # "gameCache":J
    .end local v6    # "imgCacheSize":J
    .end local v8    # "interactResSize":J
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "totalSize":Ljava/lang/String;
    .end local v12    # "recordCacheSize":J
    .end local v14    # "speakRecSize":J
    .end local v16    # "videoCacheSize":J
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v18

    goto :goto_0
.end method

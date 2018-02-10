.class Lcom/squareup/picasso/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/z$a;
    }
.end annotation


# static fields
.field private static final o:I = 0x0

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x3

.field private static final s:I = 0x4

.field private static final t:Ljava/lang/String; = "Picasso-Stats"


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/squareup/picasso/d;

.field final c:Landroid/os/Handler;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:I

.field m:I

.field n:I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/d;)V
    .locals 3
    .param p1, "cache"    # Lcom/squareup/picasso/d;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/squareup/picasso/z;->b:Lcom/squareup/picasso/d;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Picasso-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/squareup/picasso/z;->a:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/squareup/picasso/z;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/squareup/picasso/z$a;

    iget-object v1, p0, Lcom/squareup/picasso/z;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/z$a;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/z;)V

    iput-object v0, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method private static a(IJ)J
    .locals 3
    .param p0, "count"    # I
    .param p1, "totalSize"    # J

    .prologue
    .line 122
    int-to-long v0, p0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "what"    # I

    .prologue
    .line 117
    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 118
    .local v0, "bitmapSize":I
    iget-object v1, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method a(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/z;->a(Landroid/graphics/Bitmap;I)V

    .line 60
    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/Long;

    .prologue
    .line 91
    iget v0, p0, Lcom/squareup/picasso/z;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/z;->l:I

    .line 92
    iget-wide v0, p0, Lcom/squareup/picasso/z;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/picasso/z;->f:J

    .line 93
    iget v0, p0, Lcom/squareup/picasso/z;->l:I

    iget-wide v2, p0, Lcom/squareup/picasso/z;->f:J

    invoke-static {v0, v2, v3}, Lcom/squareup/picasso/z;->a(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/picasso/z;->i:J

    .line 94
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/picasso/z;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    return-void
.end method

.method b(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 97
    iget v0, p0, Lcom/squareup/picasso/z;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/z;->m:I

    .line 98
    iget-wide v0, p0, Lcom/squareup/picasso/z;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/picasso/z;->g:J

    .line 99
    iget v0, p0, Lcom/squareup/picasso/z;->m:I

    iget-wide v2, p0, Lcom/squareup/picasso/z;->g:J

    invoke-static {v0, v2, v3}, Lcom/squareup/picasso/z;->a(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/picasso/z;->j:J

    .line 100
    return-void
.end method

.method b(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/z;->a(Landroid/graphics/Bitmap;I)V

    .line 64
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/squareup/picasso/z;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 80
    return-void
.end method

.method c(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 103
    iget v0, p0, Lcom/squareup/picasso/z;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/z;->n:I

    .line 104
    iget-wide v0, p0, Lcom/squareup/picasso/z;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/picasso/z;->h:J

    .line 105
    iget v0, p0, Lcom/squareup/picasso/z;->m:I

    iget-wide v2, p0, Lcom/squareup/picasso/z;->h:J

    invoke-static {v0, v2, v3}, Lcom/squareup/picasso/z;->a(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/picasso/z;->k:J

    .line 106
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/squareup/picasso/z;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/picasso/z;->d:J

    .line 84
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/squareup/picasso/z;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/picasso/z;->e:J

    .line 88
    return-void
.end method

.method f()Lcom/squareup/picasso/aa;
    .locals 27

    .prologue
    .line 109
    new-instance v3, Lcom/squareup/picasso/aa;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/z;->b:Lcom/squareup/picasso/d;

    invoke-interface {v2}, Lcom/squareup/picasso/d;->b()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/z;->b:Lcom/squareup/picasso/d;

    invoke-interface {v2}, Lcom/squareup/picasso/d;->a()I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/squareup/picasso/z;->d:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/squareup/picasso/z;->e:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/squareup/picasso/z;->f:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/squareup/picasso/z;->g:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/squareup/picasso/z;->h:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/squareup/picasso/z;->i:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/squareup/picasso/z;->j:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/squareup/picasso/z;->k:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/z;->l:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/z;->m:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/z;->n:I

    move/from16 v24, v0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-direct/range {v3 .. v26}, Lcom/squareup/picasso/aa;-><init>(IIJJJJJJJJIIIJ)V

    return-object v3
.end method

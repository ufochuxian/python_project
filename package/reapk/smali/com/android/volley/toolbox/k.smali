.class public Lcom/android/volley/toolbox/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/k$a;,
        Lcom/android/volley/toolbox/k$c;,
        Lcom/android/volley/toolbox/k$d;,
        Lcom/android/volley/toolbox/k$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/j;

.field private final b:Lcom/android/volley/toolbox/k$b;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private f:I

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/j;Lcom/android/volley/toolbox/k$b;)V
    .locals 2
    .param p1, "queue"    # Lcom/android/volley/j;
    .param p2, "imageCache"    # Lcom/android/volley/toolbox/k$b;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->c:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->d:Ljava/util/HashMap;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->e:Landroid/os/Handler;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/volley/toolbox/k;->f:I

    .line 68
    iput-object p1, p0, Lcom/android/volley/toolbox/k;->a:Lcom/android/volley/j;

    .line 69
    iput-object p2, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/toolbox/k$b;

    .line 70
    return-void
.end method

.method public static a(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/k$d;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "defaultImageResId"    # I
    .param p2, "errorImageResId"    # I

    .prologue
    .line 82
    new-instance v0, Lcom/android/volley/toolbox/k$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/volley/toolbox/k$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/volley/toolbox/k;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/volley/toolbox/k;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/volley/toolbox/k;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/toolbox/k;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V
    .locals 4
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/android/volley/toolbox/k$a;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/volley/toolbox/k$4;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/k$4;-><init>(Lcom/android/volley/toolbox/k;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->g:Ljava/lang/Runnable;

    .line 318
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/volley/toolbox/k;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/volley/toolbox/k;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/toolbox/k;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->c:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 8
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p5, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/android/volley/toolbox/l;

    new-instance v2, Lcom/android/volley/toolbox/k$2;

    invoke-direct {v2, p0, p5}, Lcom/android/volley/toolbox/k$2;-><init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/android/volley/toolbox/k$3;

    invoke-direct {v7, p0, p5}, Lcom/android/volley/toolbox/k$3;-><init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/android/volley/k$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/k$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)Lcom/android/volley/toolbox/k$c;
    .locals 1
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/volley/toolbox/k$d;

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;II)Lcom/android/volley/toolbox/k$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;II)Lcom/android/volley/toolbox/k$c;
    .locals 6
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "imageListener"    # Lcom/android/volley/toolbox/k$d;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 164
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/k$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/k$c;
    .locals 20
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "imageListener"    # Lcom/android/volley/toolbox/k$d;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/android/volley/toolbox/k;->a()V

    .line 186
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/volley/toolbox/k;->b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/toolbox/k$b;

    invoke-interface {v5, v11}, Lcom/android/volley/toolbox/k$b;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 190
    .local v6, "cachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 192
    new-instance v4, Lcom/android/volley/toolbox/k$c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/volley/toolbox/k$c;-><init>(Lcom/android/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)V

    .line 193
    .local v4, "container":Lcom/android/volley/toolbox/k$c;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/toolbox/k$c;Z)V

    move-object v7, v4

    .line 217
    .end local v4    # "container":Lcom/android/volley/toolbox/k$c;
    :goto_0
    return-object v7

    .line 198
    :cond_0
    new-instance v7, Lcom/android/volley/toolbox/k$c;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/android/volley/toolbox/k$c;-><init>(Lcom/android/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)V

    .line 201
    .local v7, "imageContainer":Lcom/android/volley/toolbox/k$c;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v5}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/toolbox/k$c;Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/volley/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/volley/toolbox/k$a;

    .line 205
    .local v19, "request":Lcom/android/volley/toolbox/k$a;
    if-eqz v19, :cond_1

    .line 207
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/toolbox/k$c;)V

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v11

    .line 213
    invoke-virtual/range {v12 .. v17}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;

    move-result-object v18

    .line 215
    .local v18, "newRequest":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/volley/toolbox/k;->a:Lcom/android/volley/j;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/volley/toolbox/k;->c:Ljava/util/HashMap;

    new-instance v8, Lcom/android/volley/toolbox/k$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1, v7}, Lcom/android/volley/toolbox/k$a;-><init>(Lcom/android/volley/toolbox/k;Lcom/android/volley/Request;Lcom/android/volley/toolbox/k$c;)V

    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "newBatchedResponseDelayMs"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/volley/toolbox/k;->f:I

    .line 242
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/toolbox/k$b;

    invoke-interface {v1, p1, p2}, Lcom/android/volley/toolbox/k$b;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 254
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    .line 256
    .local v0, "request":Lcom/android/volley/toolbox/k$a;
    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/toolbox/k$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V

    .line 263
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    .line 274
    .local v0, "request":Lcom/android/volley/toolbox/k$a;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/VolleyError;)V

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V

    .line 281
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/volley/toolbox/k;->a()V

    .line 142
    invoke-static {p1, p2, p3, p4}, Lcom/android/volley/toolbox/k;->b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/toolbox/k$b;

    invoke-interface {v1, v0}, Lcom/android/volley/toolbox/k$b;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

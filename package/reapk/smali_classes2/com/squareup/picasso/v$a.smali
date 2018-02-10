.class public final Lcom/squareup/picasso/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/ad;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/Bitmap$Config;

.field private n:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/v$a;->a(I)Lcom/squareup/picasso/v$a;

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/v$a;->a(Landroid/net/Uri;)Lcom/squareup/picasso/v$a;

    .line 208
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resourceId"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/squareup/picasso/v$a;->a:Landroid/net/Uri;

    .line 217
    iput p2, p0, Lcom/squareup/picasso/v$a;->b:I

    .line 218
    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/v;)V
    .locals 2
    .param p1, "request"    # Lcom/squareup/picasso/v;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iget-object v0, p1, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->a:Landroid/net/Uri;

    .line 222
    iget v0, p1, Lcom/squareup/picasso/v;->e:I

    iput v0, p0, Lcom/squareup/picasso/v$a;->b:I

    .line 223
    iget-object v0, p1, Lcom/squareup/picasso/v;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->c:Ljava/lang/String;

    .line 224
    iget v0, p1, Lcom/squareup/picasso/v;->h:I

    iput v0, p0, Lcom/squareup/picasso/v$a;->d:I

    .line 225
    iget v0, p1, Lcom/squareup/picasso/v;->i:I

    iput v0, p0, Lcom/squareup/picasso/v$a;->e:I

    .line 226
    iget-boolean v0, p1, Lcom/squareup/picasso/v;->j:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->f:Z

    .line 227
    iget-boolean v0, p1, Lcom/squareup/picasso/v;->k:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->g:Z

    .line 228
    iget v0, p1, Lcom/squareup/picasso/v;->l:F

    iput v0, p0, Lcom/squareup/picasso/v$a;->h:F

    .line 229
    iget v0, p1, Lcom/squareup/picasso/v;->m:F

    iput v0, p0, Lcom/squareup/picasso/v$a;->i:F

    .line 230
    iget v0, p1, Lcom/squareup/picasso/v;->n:F

    iput v0, p0, Lcom/squareup/picasso/v$a;->j:F

    .line 231
    iget-boolean v0, p1, Lcom/squareup/picasso/v;->o:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->k:Z

    .line 232
    iget-object v0, p1, Lcom/squareup/picasso/v;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/picasso/v;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->l:Ljava/util/List;

    .line 235
    :cond_0
    iget-object v0, p1, Lcom/squareup/picasso/v;->p:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->m:Landroid/graphics/Bitmap$Config;

    .line 236
    iget-object v0, p1, Lcom/squareup/picasso/v;->q:Lcom/squareup/picasso/Picasso$Priority;

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/picasso/v;Lcom/squareup/picasso/v$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/picasso/v;
    .param p2, "x1"    # Lcom/squareup/picasso/v$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/squareup/picasso/v$a;-><init>(Lcom/squareup/picasso/v;)V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/squareup/picasso/v$a;
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 355
    iput p1, p0, Lcom/squareup/picasso/v$a;->h:F

    .line 356
    return-object p0
.end method

.method public a(FFF)Lcom/squareup/picasso/v$a;
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    .line 361
    iput p1, p0, Lcom/squareup/picasso/v$a;->h:F

    .line 362
    iput p2, p0, Lcom/squareup/picasso/v$a;->i:F

    .line 363
    iput p3, p0, Lcom/squareup/picasso/v$a;->j:F

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->k:Z

    .line 365
    return-object p0
.end method

.method public a(I)Lcom/squareup/picasso/v$a;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image resource ID may not be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iput p1, p0, Lcom/squareup/picasso/v$a;->b:I

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->a:Landroid/net/Uri;

    .line 276
    return-object p0
.end method

.method public a(II)Lcom/squareup/picasso/v$a;
    .locals 2
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 293
    if-gez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    if-gez p2, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one dimension has to be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_2
    iput p1, p0, Lcom/squareup/picasso/v$a;->d:I

    .line 303
    iput p2, p0, Lcom/squareup/picasso/v$a;->e:I

    .line 304
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/v$a;
    .locals 0
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/squareup/picasso/v$a;->m:Landroid/graphics/Bitmap$Config;

    .line 380
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/squareup/picasso/v$a;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/v$a;->a:Landroid/net/Uri;

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/picasso/v$a;->b:I

    .line 262
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/v$a;
    .locals 2
    .param p1, "priority"    # Lcom/squareup/picasso/Picasso$Priority;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Priority already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    .line 392
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/ad;)Lcom/squareup/picasso/v$a;
    .locals 2
    .param p1, "transformation"    # Lcom/squareup/picasso/ad;

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    invoke-interface {p1}, Lcom/squareup/picasso/ad;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/v$a;->l:Ljava/util/List;

    if-nez v0, :cond_2

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/v$a;->l:Ljava/util/List;

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/v$a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/squareup/picasso/v$a;
    .locals 0
    .param p1, "stableKey"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/squareup/picasso/v$a;->c:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/picasso/v$a;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/picasso/v$a;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/squareup/picasso/v$a;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/picasso/v$a;->e:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/squareup/picasso/v$a;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/squareup/picasso/v$a;->d:I

    .line 310
    iput v0, p0, Lcom/squareup/picasso/v$a;->e:I

    .line 311
    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->f:Z

    .line 312
    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->g:Z

    .line 313
    return-object p0
.end method

.method public e()Lcom/squareup/picasso/v$a;
    .locals 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/squareup/picasso/v$a;->g:Z

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->f:Z

    .line 326
    return-object p0
.end method

.method public f()Lcom/squareup/picasso/v$a;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->f:Z

    .line 332
    return-object p0
.end method

.method public g()Lcom/squareup/picasso/v$a;
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/squareup/picasso/v$a;->f:Z

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->g:Z

    .line 344
    return-object p0
.end method

.method public h()Lcom/squareup/picasso/v$a;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->g:Z

    .line 350
    return-object p0
.end method

.method public i()Lcom/squareup/picasso/v$a;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lcom/squareup/picasso/v$a;->h:F

    .line 371
    iput v0, p0, Lcom/squareup/picasso/v$a;->i:F

    .line 372
    iput v0, p0, Lcom/squareup/picasso/v$a;->j:F

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/v$a;->k:Z

    .line 374
    return-object p0
.end method

.method public j()Lcom/squareup/picasso/v;
    .locals 17

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/v$a;->g:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/v$a;->f:Z

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/v$a;->f:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/v$a;->d:I

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/v$a;->e:I

    if-nez v1, :cond_2

    .line 420
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/v$a;->g:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/v$a;->d:I

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/v$a;->e:I

    if-nez v1, :cond_4

    .line 424
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v1, :cond_5

    .line 428
    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->NORMAL:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    .line 430
    :cond_5
    new-instance v1, Lcom/squareup/picasso/v;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/v$a;->a:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/v$a;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/v$a;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/v$a;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/v$a;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/squareup/picasso/v$a;->e:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/squareup/picasso/v$a;->f:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/squareup/picasso/v$a;->g:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/squareup/picasso/v$a;->h:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/squareup/picasso/v$a;->i:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/v$a;->j:F

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/squareup/picasso/v$a;->k:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/picasso/v$a;->m:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/picasso/v$a;->n:Lcom/squareup/picasso/Picasso$Priority;

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/squareup/picasso/v;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/v$1;)V

    return-object v1
.end method

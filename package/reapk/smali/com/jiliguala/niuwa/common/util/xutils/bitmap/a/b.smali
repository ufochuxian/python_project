.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;,
        Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;

.field private c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

.field private d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/a/c",
            "<",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)V
    .locals 2
    .param p1, "globalConfig"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    .line 45
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e:Z

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "globalConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    .line 58
    return-void
.end method

.method private a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmapMeta"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    if-nez p1, :cond_1

    .line 396
    const/4 v0, 0x0

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    const/4 v0, 0x0

    .line 398
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->a:Ljava/io/FileInputStream;

    if-eqz v1, :cond_4

    .line 399
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    :cond_2
    iget-object v1, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->a:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->a:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    move-result-object v2

    .line 403
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 402
    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Ljava/io/FileDescriptor;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_4
    iget-object v1, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->b:[B

    if-eqz v1, :cond_0

    .line 406
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 407
    :cond_5
    iget-object v1, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->b:[B

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_6
    iget-object v1, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->b:[B

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a([BLcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 416
    monitor-enter p0

    move-object/from16 v12, p3

    .line 417
    .local v12, "result":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 419
    .local v8, "bitmapFile":Ljava/io/File;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v10, 0x0

    .line 422
    .local v10, "exif":Landroid/media/ExifInterface;
    :try_start_1
    new-instance v10, Landroid/media/ExifInterface;

    .end local v10    # "exif":Landroid/media/ExifInterface;
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    :try_start_2
    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v11

    .line 427
    .local v11, "orientation":I
    const/4 v7, 0x0

    .line 428
    .local v7, "angle":I
    packed-switch v11, :pswitch_data_0

    .line 439
    :pswitch_0
    const/4 v7, 0x0

    .line 442
    :goto_0
    if-eqz v7, :cond_0

    .line 443
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 444
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, v7

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 445
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    const/16 p3, 0x0

    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "angle":I
    .end local v8    # "bitmapFile":Ljava/io/File;
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "orientation":I
    :cond_0
    move-object v13, v12

    .line 451
    .end local v12    # "result":Landroid/graphics/Bitmap;
    .local v13, "result":Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit p0

    return-object v13

    .line 423
    .end local v13    # "result":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmapFile":Ljava/io/File;
    .restart local v12    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Throwable;
    move-object v13, v12

    .line 424
    .end local v12    # "result":Landroid/graphics/Bitmap;
    .restart local v13    # "result":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 430
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v13    # "result":Landroid/graphics/Bitmap;
    .restart local v7    # "angle":I
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "orientation":I
    .restart local v12    # "result":Landroid/graphics/Bitmap;
    :pswitch_1
    const/16 v7, 0x5a

    .line 431
    goto :goto_0

    .line 433
    :pswitch_2
    const/16 v7, 0xb4

    .line 434
    goto :goto_0

    .line 436
    :pswitch_3
    const/16 v7, 0x10e

    .line 437
    goto :goto_0

    .line 416
    .end local v7    # "angle":I
    .end local v8    # "bitmapFile":Ljava/io/File;
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "orientation":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "expiryTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    move-result-object v0

    .line 219
    .local v0, "bitmapFactory":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;->a()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 223
    .end local v0    # "bitmapFactory":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    if-eqz v2, :cond_1

    .line 224
    new-instance v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;)V

    .line 225
    .local v1, "key":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    invoke-virtual {v2, v1, p3, p4, p5}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    .end local v1    # "key":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    :cond_1
    return-object p3
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;)V

    .line 240
    .local v0, "key":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 242
    .end local v0    # "key":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            "Lcom/jiliguala/niuwa/common/util/xutils/a$a",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "task":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<*>;"
    new-instance v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;)V

    .line 139
    .local v8, "bitmapMeta":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;
    const/4 v11, 0x0

    .line 140
    .local v11, "outputStream":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 143
    .local v13, "snapshot":Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    const/4 v5, 0x0

    .line 145
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 150
    :try_start_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v9

    .line 155
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    .line 159
    :try_start_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;

    move-result-object v13

    .line 160
    if-nez v13, :cond_2

    .line 161
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v10

    .line 162
    .local v10, "editor":Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    if-eqz v10, :cond_2

    .line 163
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->c(I)Ljava/io/OutputStream;

    move-result-object v11

    .line 164
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->b()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, p1, v11, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->c:J

    .line 165
    iget-wide v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->c:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 166
    invoke-virtual {v10}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    const/4 v5, 0x0

    .line 209
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 213
    .end local v10    # "editor":Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    :goto_1
    return-object v5

    .line 155
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 206
    :catch_1
    move-exception v9

    .line 207
    .local v9, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 209
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 213
    const/4 v5, 0x0

    goto :goto_1

    .line 169
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v10    # "editor":Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    :cond_1
    :try_start_9
    iget-wide v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->c:J

    invoke-virtual {v10, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(J)V

    .line 170
    invoke-virtual {v10}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a()V

    .line 172
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;

    move-result-object v13

    .line 175
    .end local v10    # "editor":Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    :cond_2
    if-eqz v13, :cond_3

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v2

    iput-object v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->a:Ljava/io/FileInputStream;

    .line 177
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 178
    if-nez v5, :cond_3

    .line 179
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->a:Ljava/io/FileInputStream;

    .line 180
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3
    move-object v12, v11

    .line 190
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .local v12, "outputStream":Ljava/io/OutputStream;
    :goto_3
    if-nez v5, :cond_7

    .line 191
    :try_start_a
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 192
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    :try_start_b
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->b()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, p1, v11, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->c:J

    .line 193
    iget-wide v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->c:J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    .line 194
    const/4 v5, 0x0

    .line 209
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 183
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v9

    .line 184
    .restart local v9    # "e":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_4
    move-object v12, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 196
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    move-object v0, v11

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->b:[B

    .line 197
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 201
    :goto_4
    if-eqz v5, :cond_6

    .line 202
    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 203
    iget-wide v6, v8, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$a;->c:J

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v5

    .line 209
    :cond_6
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 209
    :catchall_1
    move-exception v2

    :goto_5
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    throw v2

    .line 209
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v2

    move-object v11, v12

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 206
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    move-object v11, v12

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :cond_7
    move-object v11, v12

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_1
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->g()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V

    .line 133
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .prologue
    const/4 v8, 0x0

    .line 265
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v3, v8

    .line 299
    :goto_0
    return-object v3

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v6

    .line 275
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    if-eqz v0, :cond_6

    .line 277
    const/4 v7, 0x0

    .line 279
    .local v7, "snapshot":Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    :try_start_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;

    move-result-object v7

    .line 280
    if-eqz v7, :cond_5

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 289
    :goto_2
    invoke-direct {p0, p1, p2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 296
    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 275
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "snapshot":Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 285
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "snapshot":Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v7, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 286
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 285
    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Ljava/io/FileDescriptor;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    goto :goto_2

    .line 296
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .end local v7    # "snapshot":Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    :cond_6
    :goto_3
    move-object v3, v8

    .line 299
    goto :goto_0

    .line 293
    .restart local v7    # "snapshot":Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    :catch_1
    move-exception v6

    .line 294
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 296
    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public b()V
    .locals 9

    .prologue
    .line 96
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 97
    :try_start_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "diskCacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    :cond_0
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->a(Ljava/io/File;)J

    move-result-wide v0

    .line 101
    .local v0, "availableSpace":J
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    int-to-long v4, v6

    .line 102
    .local v4, "diskCacheSize":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    .line 104
    :goto_0
    const/4 v6, 0x1

    const/4 v8, 0x1

    :try_start_1
    invoke-static {v2, v6, v8, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;IIJ)Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .line 105
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->n()Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "availableSpace":J
    .end local v2    # "diskCacheDir":Ljava/io/File;
    .end local v4    # "diskCacheSize":J
    :cond_1
    :goto_1
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e:Z

    .line 113
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v7

    .line 115
    return-void

    .restart local v0    # "availableSpace":J
    .restart local v2    # "diskCacheDir":Ljava/io/File;
    .restart local v4    # "diskCacheSize":J
    :cond_2
    move-wide v4, v0

    .line 102
    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    .end local v0    # "availableSpace":J
    .end local v2    # "diskCacheDir":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "diskCacheSize":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public b(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(J)V

    .line 127
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d()V

    .line 308
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e()V

    .line 309
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 338
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;)V

    .line 339
    .local v0, "key":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    if-eqz v1, :cond_0

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/a/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a()V

    .line 315
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 350
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 356
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 355
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 3

    .prologue
    .line 318
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e:Z

    .line 320
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 322
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .line 328
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b()V

    .line 330
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 3

    .prologue
    .line 363
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 366
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 372
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 3

    .prologue
    .line 379
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e:Z

    .line 381
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->close()V

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 392
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 391
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

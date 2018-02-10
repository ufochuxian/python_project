.class public Lcn/sharesdk/wechat/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/sharesdk/wechat/utils/j;


# instance fields
.field private b:Lcn/sharesdk/wechat/utils/h;

.field private c:Lcn/sharesdk/wechat/utils/i;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcn/sharesdk/wechat/utils/h;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/h;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    .line 58
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 685
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 686
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 688
    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v0, v4

    .line 689
    int-to-double v4, v1

    div-double v2, v4, v2

    double-to-int v1, v2

    .line 692
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 693
    return-object v0
.end method

.method public static a()Lcn/sharesdk/wechat/utils/j;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/wechat/utils/j;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/j;-><init>()V

    sput-object v0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/wechat/utils/j;

    .line 45
    :cond_0
    sget-object v0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/wechat/utils/j;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 367
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p4, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 369
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 370
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 371
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 373
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 374
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 375
    if-eqz p5, :cond_0

    .line 376
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 377
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 379
    :cond_0
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 381
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 382
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 346
    const-string v1, "/data/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-direct {p0, p4}, Lcn/sharesdk/wechat/utils/j;->d(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 352
    :goto_0
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 353
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 355
    if-eqz p5, :cond_0

    .line 356
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 357
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 359
    :cond_0
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 361
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 362
    return-void

    .line 349
    :cond_1
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 431
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 433
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 434
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 435
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 436
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 437
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 439
    const-string v0, "video"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 440
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 417
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 419
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 420
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 421
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 422
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 423
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 425
    const-string v0, "video"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 426
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 402
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 403
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 405
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 406
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 407
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 408
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 409
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 411
    const-string v0, "music"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 412
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 387
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 388
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 390
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 391
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 392
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 393
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 394
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 396
    const-string v0, "music"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 397
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 532
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 533
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 534
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 535
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 536
    iput-object p5, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 537
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 538
    iput-object p6, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 539
    invoke-direct {p0, p1, p7}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 540
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p8, p9}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 541
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 545
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 546
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 547
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 553
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    const-string v0, "\\?"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_2

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :goto_1
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 563
    :cond_0
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 564
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 565
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 566
    iput-object p6, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 567
    invoke-direct {p0, p1, p7}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 568
    const-string v1, "webpage"

    invoke-direct {p0, v0, v1, p8, p9}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 569
    return-void

    .line 550
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 558
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wxapi.WXEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 723
    :goto_0
    if-eqz v0, :cond_0

    const-class v2, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not extend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 732
    :cond_0
    new-instance v0, Lcn/sharesdk/wechat/utils/d;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/d;-><init>()V

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/d;->c:Ljava/lang/String;

    .line 734
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 735
    iput p3, v0, Lcn/sharesdk/wechat/utils/d;->b:I

    .line 737
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/wechat/utils/i;

    .line 738
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v1, v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/k;)V

    .line 739
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 721
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcn/sharesdk/wechat/utils/WXTextObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXTextObject;-><init>()V

    .line 333
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXTextObject;->text:Ljava/lang/String;

    .line 335
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 336
    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 337
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 338
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 340
    const-string v0, "text"

    invoke-direct {p0, v1, v0, p3, p4}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 341
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 645
    if-nez p2, :cond_0

    .line 646
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v0}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 655
    if-nez p2, :cond_0

    .line 656
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 662
    invoke-virtual {p2, p3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 663
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 664
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 665
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 667
    array-length v0, v1

    .line 668
    :goto_0
    const v2, 0x8000

    if-le v0, v2, :cond_2

    .line 669
    int-to-double v0, v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    .line 670
    invoke-direct {p0, p2, v0, v1}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 672
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    invoke-virtual {p2, p3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 674
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 675
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 676
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 677
    array-length v0, v1

    goto :goto_0

    .line 680
    :cond_2
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 639
    :cond_0
    invoke-static {p2}, Lcom/mob/tools/c/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 640
    invoke-static {p2}, Lcom/mob/tools/c/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 641
    invoke-direct {p0, p1, v1, v0}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 602
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 603
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    .line 605
    new-instance v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 606
    iput-object p2, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 607
    iput-object v0, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 608
    iput-object p3, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 609
    iput-object v1, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 611
    const-string v0, "emoji"

    invoke-direct {p0, v2, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 612
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 588
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 590
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 591
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 592
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 593
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 594
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 596
    const-string v0, "emoji"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 597
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 465
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 466
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 468
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 469
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 470
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 471
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 472
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 475
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    .line 478
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_1
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 483
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 444
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 445
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 447
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 448
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 449
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 450
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 451
    if-eqz p5, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 453
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 461
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 503
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 504
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 506
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 507
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 508
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 509
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 510
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 512
    const-string v0, "appdata"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 513
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 488
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 489
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 491
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 492
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 493
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 494
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 495
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 497
    const-string v0, "appdata"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 498
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 574
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 576
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 577
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 578
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 579
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 580
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 582
    const-string v0, "filedata"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 583
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 518
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 520
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 521
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 522
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 523
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 524
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 526
    const-string v0, "filedata"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 527
    return-void
.end method

.method private d(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 616
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 617
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 619
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 620
    :goto_0
    if-lez v0, :cond_0

    .line 621
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 622
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 625
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 626
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 627
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 631
    :goto_1
    return-object v0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 631
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcn/sharesdk/wechat/utils/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/wechat/utils/i;

    .line 66
    new-instance v0, Lcn/sharesdk/wechat/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/a;-><init>()V

    .line 67
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    .line 68
    const-string v1, "sharesdk_wechat_auth"

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v1, v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/k;)V

    .line 70
    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/i;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 78
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/i;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v5

    .line 79
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 84
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "images"

    invoke-static {v0, v1}, Lcom/mob/tools/c/l;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-virtual {v5, v1, v10}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p2, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 101
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "Kdescription"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 105
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 108
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v4, "images"

    invoke-static {v1, v4}, Lcom/mob/tools/c/l;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 112
    invoke-static {v0, v4}, Lcom/mob/tools/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 113
    if-eqz v4, :cond_c

    .line 118
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_8

    .line 119
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mob/tools/c/l;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :goto_2
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 126
    :cond_3
    const-string v0, "image/*"

    .line 128
    :cond_4
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :cond_5
    :goto_3
    const-string v0, "scene"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    .line 137
    :goto_4
    const-string v1, "com.tencent.mm"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v2

    .line 141
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string v0, "ShareParams"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    if-eqz p3, :cond_6

    .line 146
    if-eqz p3, :cond_6

    .line 147
    const/16 v0, 0x9

    invoke-interface {p3, v5, v0, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 170
    :cond_6
    :goto_5
    return-void

    .line 91
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :cond_8
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 131
    :cond_9
    const-string v0, "text/plain"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 134
    :cond_a
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    goto :goto_4

    .line 151
    :cond_b
    const-wide/16 v8, 0x7d0

    new-instance v0, Lcn/sharesdk/wechat/utils/j$1;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcn/sharesdk/wechat/utils/j$1;-><init>(Lcn/sharesdk/wechat/utils/j;Lcom/mob/tools/c/e;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V

    invoke-static {v10, v8, v9, v0}, Lcom/mob/tools/c/o;->b(IJLandroid/os/Handler$Callback;)Z

    goto :goto_5

    :cond_c
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/i;)Z

    move-result v0

    return v0
.end method

.method public b(Lcn/sharesdk/wechat/utils/i;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v3

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v8

    .line 176
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v9

    .line 177
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getScence()I

    move-result v7

    .line 180
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    .line 182
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 183
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v11

    .line 184
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 185
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 186
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getExtInfo()Ljava/lang/String;

    move-result-object v13

    .line 187
    packed-switch v9, :pswitch_data_0

    .line 322
    :pswitch_0
    if-eqz v8, :cond_0

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    const/16 v4, 0x9

    invoke-interface {v8, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v7, v1}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_0

    .line 192
    :pswitch_2
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 193
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_0

    .line 194
    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object v6, v14

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_0

    .line 196
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 197
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_0

    .line 200
    :cond_3
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_0

    .line 204
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v12, v3, v8

    .line 207
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v13, v2, v3

    .line 208
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 209
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 210
    :cond_4
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 211
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 213
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 214
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 216
    :cond_6
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    const-string v14, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 220
    :pswitch_4
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 222
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 223
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 224
    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 225
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v21, v7

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 226
    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 227
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 228
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 230
    :cond_9
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    const-string v13, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 236
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 237
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 238
    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 239
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v21, v7

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 240
    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 241
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 242
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 244
    :cond_c
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    const-string v13, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 248
    :pswitch_6
    const/4 v2, 0x1

    if-ne v7, v2, :cond_d

    .line 249
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_d
    const/4 v2, 0x2

    if-ne v7, v2, :cond_e

    .line 251
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_e
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 255
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 256
    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_10

    .line 257
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 258
    :cond_10
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 259
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 260
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 262
    :cond_11
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    const-string v14, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 266
    :pswitch_7
    const/4 v2, 0x1

    if-ne v7, v2, :cond_12

    .line 267
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SHARE_FILE"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 271
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 272
    :cond_13
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 273
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v21, v7

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 274
    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 275
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 276
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 278
    :cond_15
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    const-string v13, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 282
    :pswitch_8
    const/4 v2, 0x1

    if-ne v7, v2, :cond_16

    .line 283
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SHARE_EMOJI"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_16
    const/4 v2, 0x2

    if-ne v7, v2, :cond_17

    .line 285
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatFavorite does not support SHARE_EMOJI"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    .line 289
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 290
    :cond_18
    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 291
    new-instance v8, Lcom/mob/tools/a/n;

    invoke-direct {v8}, Lcom/mob/tools/a/n;-><init>()V

    .line 292
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    const-string v11, "images"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/mob/tools/a/n;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 296
    :cond_19
    if-eqz v14, :cond_1a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 297
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object v6, v14

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 299
    :cond_1a
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 303
    :pswitch_9
    const/4 v3, 0x1

    if-ne v7, v3, :cond_1b

    .line 304
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_1b
    const/4 v3, 0x2

    if-ne v7, v3, :cond_1c

    .line 306
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 310
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    .line 311
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v10, v17

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move-object/from16 v17, p1

    invoke-direct/range {v8 .. v17}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 312
    :cond_1d
    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 313
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move/from16 v23, v7

    move-object/from16 v24, p1

    invoke-direct/range {v15 .. v24}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 314
    :cond_1e
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 315
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 316
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v24, p1

    invoke-direct/range {v15 .. v24}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 318
    :cond_1f
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v22, ""

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v24, p1

    invoke-direct/range {v15 .. v24}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->c()Z

    move-result v0

    return v0
.end method

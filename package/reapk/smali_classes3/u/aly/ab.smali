.class public Lu/aly/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/content/Context;

.field private f:Lu/aly/z;

.field private g:Lu/aly/y;

.field private h:Lorg/json/JSONObject;

.field private i:Lu/aly/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x80

    iput v0, p0, Lu/aly/ab;->b:I

    .line 45
    const/16 v0, 0x100

    iput v0, p0, Lu/aly/ab;->c:I

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/ab;->d:I

    .line 50
    iput-object v1, p0, Lu/aly/ab;->f:Lu/aly/z;

    .line 51
    iput-object v1, p0, Lu/aly/ab;->g:Lu/aly/y;

    .line 53
    iput-object v1, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    .line 59
    if-nez p1, :cond_0

    .line 60
    :try_start_0
    const-string v0, "Context is null, can\'t track event"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-static {p1}, Lu/aly/z;->b(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ab;->i:Lu/aly/z;

    .line 63
    iput-object p1, p0, Lu/aly/ab;->e:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/z;->b(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ab;->f:Lu/aly/z;

    .line 65
    iget-object v0, p0, Lu/aly/ab;->f:Lu/aly/z;

    iget-object v1, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/y;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ab;->g:Lu/aly/y;

    .line 66
    iget-object v0, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lu/aly/ab;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lu/aly/ab;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ab;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 561
    .line 563
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 566
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 568
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 571
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    if-eqz v1, :cond_0

    .line 574
    const/16 v5, 0x80

    invoke-static {v1, v5}, Lu/aly/aw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 580
    instance-of v1, v0, [I

    if-eqz v1, :cond_3

    .line 581
    check-cast v0, [I

    check-cast v0, [I

    .line 582
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 583
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_1

    .line 584
    aget v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    :try_start_2
    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 660
    :catch_1
    move-exception v0

    .line 665
    :cond_2
    return-object v3

    .line 587
    :cond_3
    :try_start_3
    instance-of v1, v0, [D

    if-eqz v1, :cond_5

    .line 588
    check-cast v0, [D

    check-cast v0, [D

    .line 589
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 590
    :goto_2
    array-length v7, v0

    if-ge v1, v7, :cond_4

    .line 591
    aget-wide v8, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 593
    :cond_4
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 594
    :cond_5
    instance-of v1, v0, [J

    if-eqz v1, :cond_7

    .line 595
    check-cast v0, [J

    check-cast v0, [J

    .line 596
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 597
    :goto_3
    array-length v7, v0

    if-ge v1, v7, :cond_6

    .line 598
    aget-wide v8, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 600
    :cond_6
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 601
    :cond_7
    instance-of v1, v0, [F

    if-eqz v1, :cond_9

    .line 602
    check-cast v0, [F

    check-cast v0, [F

    .line 603
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 604
    :goto_4
    array-length v7, v0

    if-ge v1, v7, :cond_8

    .line 605
    aget v7, v0, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 607
    :cond_8
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 608
    :cond_9
    instance-of v1, v0, [Z

    if-eqz v1, :cond_b

    .line 609
    check-cast v0, [Z

    check-cast v0, [Z

    .line 610
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 611
    :goto_5
    array-length v7, v0

    if-ge v1, v7, :cond_a

    .line 612
    aget-boolean v7, v0, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 614
    :cond_a
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 615
    :cond_b
    instance-of v1, v0, [B

    if-eqz v1, :cond_d

    .line 616
    check-cast v0, [B

    check-cast v0, [B

    .line 617
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 618
    :goto_6
    array-length v7, v0

    if-ge v1, v7, :cond_c

    .line 619
    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 621
    :cond_c
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 622
    :cond_d
    instance-of v1, v0, [S

    if-eqz v1, :cond_f

    .line 623
    check-cast v0, [S

    check-cast v0, [S

    .line 624
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 625
    :goto_7
    array-length v7, v0

    if-ge v1, v7, :cond_e

    .line 626
    aget-short v7, v0, v1

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 628
    :cond_e
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 629
    :cond_f
    instance-of v1, v0, [C

    if-eqz v1, :cond_11

    .line 630
    check-cast v0, [C

    check-cast v0, [C

    .line 631
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 632
    :goto_8
    array-length v7, v0

    if-ge v1, v7, :cond_10

    .line 633
    aget-char v7, v0, v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 635
    :cond_10
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 638
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 640
    :cond_12
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 641
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lu/aly/aw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 646
    :cond_13
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private a()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    .line 402
    :try_start_0
    iget-object v1, p0, Lu/aly/ab;->g:Lu/aly/y;

    iget-object v1, v1, Lu/aly/y;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 403
    iget-object v1, p0, Lu/aly/ab;->g:Lu/aly/y;

    iget-object v1, v1, Lu/aly/y;->a:Ljava/lang/String;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 406
    iget-object v1, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    move v1, v0

    .line 408
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 409
    aget-object v4, v2, v1

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lu/aly/aw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 410
    iget-object v5, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    iget-object v5, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    .line 418
    array-length v1, v2

    if-lt v1, v6, :cond_2

    .line 419
    :goto_1
    if-ge v0, v6, :cond_3

    .line 420
    aget-object v1, v2, v0

    invoke-direct {p0, v1, v3}, Lu/aly/ab;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    :cond_2
    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_3

    .line 424
    aget-object v1, v2, v0

    invoke-direct {p0, v1, v3}, Lu/aly/ab;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 428
    :cond_3
    iget-object v0, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/ab;->b(Landroid/content/Context;)V

    .line 430
    iget-object v0, p0, Lu/aly/ab;->g:Lu/aly/y;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/y;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_4
    :goto_3
    return-void

    .line 432
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    invoke-static {p1}, Lu/aly/aj;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    const-string v1, "fs_lc_tl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    .line 387
    :cond_0
    invoke-direct {p0}, Lu/aly/ab;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 442
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lu/aly/aw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lu/aly/ab;->a(Ljava/lang/String;Z)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lu/aly/ab;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 452
    :try_start_0
    const-string v0, "$st_fl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dplus_st"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "du"

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 673
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 674
    const/4 v0, 0x1

    .line 685
    :goto_0
    return v0

    .line 678
    :cond_0
    const-string v0, "Event id is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 473
    :try_start_0
    iget-object v0, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aj;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fs_lc_tl"

    iget-object v2, p0, Lu/aly/ab;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 690
    if-nez p1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v0

    .line 692
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 695
    const-string v0, "Event label or value is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 706
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    :cond_0
    const-string v0, "map is null or empty in onEvent"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V

    move v0, v2

    .line 730
    :goto_0
    return v0

    .line 711
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 712
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lu/aly/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 713
    goto :goto_0

    .line 716
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v2

    .line 717
    goto :goto_0

    .line 720
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/ab;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 721
    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 730
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    :try_start_0
    iget-object v0, p0, Lu/aly/ab;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 495
    if-nez p1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iput-object p1, p0, Lu/aly/ab;->e:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5

    .prologue
    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lu/aly/ab;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    .line 129
    const-string v1, "du"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    :cond_2
    const-string v1, "__t"

    const/16 v2, 0x801

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "__i"

    iget-object v2, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/am;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "_umpname"

    sget-object v2, Lu/aly/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    iget-object v1, p0, Lu/aly/ab;->i:Lu/aly/z;

    invoke-virtual {v1, v0}, Lu/aly/z;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0, p2}, Lu/aly/ab;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v0, "id"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 90
    const-string v0, "du"

    invoke-virtual {v2, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    :cond_2
    const-string v0, "__t"

    const/16 v1, 0x801

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 95
    const/4 v0, 0x0

    move v1, v0

    .line 97
    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    const-string v4, "$st_fl"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "dplus_st"

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "du"

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "id"

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ts"

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 105
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 106
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 112
    :cond_5
    const-string v0, "__i"

    iget-object v1, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/am;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "_umpname"

    sget-object v1, Lu/aly/x;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v0, p0, Lu/aly/ab;->i:Lu/aly/z;

    invoke-virtual {v0, v2}, Lu/aly/z;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v2, 0x0

    .line 279
    :try_start_0
    invoke-static {}, Lu/aly/di;->a()Lu/aly/di;

    move-result-object v3

    .line 281
    if-nez p1, :cond_0

    .line 282
    const-string v0, "cklist is null!"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V

    .line 363
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 286
    const-string v0, "the KeyList is null!"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V

    move v0, v2

    .line 287
    goto :goto_1

    .line 290
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lu/aly/di;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    const-string v0, "Primary key Invalid!"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V

    move v0, v2

    .line 294
    goto :goto_1

    .line 297
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x8

    if-le v0, v4, :cond_4

    .line 298
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v0, "__cc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v0, "illegal"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_3
    :goto_2
    invoke-virtual {v3, p3}, Lu/aly/di;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 334
    const-string v0, "label  Invalid!"

    invoke-static {v0}, Lu/aly/ay;->e(Ljava/lang/String;)V

    .line 335
    const-string v4, "__illegal"

    .line 338
    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 339
    new-instance v0, Lu/aly/l;

    int-to-long v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lu/aly/l;-><init>(Ljava/util/List;JLjava/lang/String;J)V

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Lu/aly/ab$1;

    invoke-direct {v0, p0, v7}, Lu/aly/ab$1;-><init>(Lu/aly/ab;Ljava/util/Map;)V

    invoke-static {v0}, Lu/aly/az;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    goto :goto_0

    .line 305
    :cond_4
    invoke-virtual {v3, v1}, Lu/aly/di;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 306
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 308
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v0, "__cc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v0, "illegal"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 313
    :cond_5
    invoke-virtual {v3, v1}, Lu/aly/di;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 314
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 316
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v0, "__cc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v0, "illegal"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 321
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 322
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_7

    .line 324
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 325
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move-object v4, p3

    goto :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 242
    const-string v1, "id"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 244
    const-string v1, "du"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v1, "__t"

    const/16 v3, 0x802

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 251
    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    const-string v4, "$st_fl"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dplus_st"

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "du"

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "id"

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ts"

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 259
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 260
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 265
    :cond_3
    const-string v0, "__i"

    iget-object v1, p0, Lu/aly/ab;->e:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/am;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    iget-object v0, p0, Lu/aly/ab;->i:Lu/aly/z;

    invoke-virtual {v0, v2}, Lu/aly/z;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

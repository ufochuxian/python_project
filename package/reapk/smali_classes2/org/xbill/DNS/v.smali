.class public Lorg/xbill/DNS/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:I = 0xffff

.field static final e:I = 0x0

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x3

.field static final i:I = 0x4

.field private static p:[Lorg/xbill/DNS/Record;

.field private static q:[Lorg/xbill/DNS/RRset;


# instance fields
.field b:I

.field c:I

.field d:I

.field private j:Lorg/xbill/DNS/r;

.field private k:[Ljava/util/List;

.field private l:I

.field private m:Lorg/xbill/DNS/aq;

.field private n:Lorg/xbill/DNS/TSIGRecord;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-array v0, v1, [Lorg/xbill/DNS/Record;

    sput-object v0, Lorg/xbill/DNS/v;->p:[Lorg/xbill/DNS/Record;

    .line 54
    new-array v0, v1, [Lorg/xbill/DNS/RRset;

    sput-object v0, Lorg/xbill/DNS/v;->q:[Lorg/xbill/DNS/RRset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/xbill/DNS/r;

    invoke-direct {v0}, Lorg/xbill/DNS/r;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/v;-><init>(Lorg/xbill/DNS/r;)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 65
    new-instance v0, Lorg/xbill/DNS/r;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/r;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/v;-><init>(Lorg/xbill/DNS/r;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/h;)V
    .locals 12
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v10, Lorg/xbill/DNS/r;

    invoke-direct {v10, p1}, Lorg/xbill/DNS/r;-><init>(Lorg/xbill/DNS/h;)V

    invoke-direct {p0, v10}, Lorg/xbill/DNS/v;-><init>(Lorg/xbill/DNS/r;)V

    .line 100
    iget-object v10, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v10}, Lorg/xbill/DNS/r;->e()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_3

    const/4 v4, 0x1

    .line 101
    .local v4, "isUpdate":Z
    :goto_0
    iget-object v10, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lorg/xbill/DNS/r;->c(I)Z

    move-result v9

    .line 103
    .local v9, "truncated":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v10, 0x4

    if-ge v3, v10, :cond_5

    .line 104
    :try_start_0
    iget-object v10, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v10, v3}, Lorg/xbill/DNS/r;->i(I)I

    move-result v1

    .line 105
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 106
    iget-object v10, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v11, v10, v3

    .line 107
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_4

    .line 108
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->a()I

    move-result v6

    .line 109
    .local v6, "pos":I
    invoke-static {p1, v3, v4}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/h;IZ)Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 110
    .local v7, "rec":Lorg/xbill/DNS/Record;
    iget-object v10, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v10, v10, v3

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v10, 0x3

    if-ne v3, v10, :cond_2

    .line 112
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v10

    const/16 v11, 0xfa

    if-ne v10, v11, :cond_1

    .line 113
    iput v6, p0, Lorg/xbill/DNS/v;->b:I

    .line 114
    :cond_1
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v10

    const/16 v11, 0x18

    if-ne v10, v11, :cond_2

    .line 115
    move-object v0, v7

    check-cast v0, Lorg/xbill/DNS/SIGRecord;

    move-object v8, v0

    .line 116
    .local v8, "sig":Lorg/xbill/DNS/SIGRecord;
    invoke-virtual {v8}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v10

    if-nez v10, :cond_2

    .line 117
    iput v6, p0, Lorg/xbill/DNS/v;->d:I
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v8    # "sig":Lorg/xbill/DNS/SIGRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 100
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "isUpdate":Z
    .end local v5    # "j":I
    .end local v6    # "pos":I
    .end local v7    # "rec":Lorg/xbill/DNS/Record;
    .end local v9    # "truncated":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 103
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "isUpdate":Z
    .restart local v5    # "j":I
    .restart local v9    # "truncated":Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "count":I
    .end local v5    # "j":I
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Lorg/xbill/DNS/WireParseException;
    if-nez v9, :cond_5

    .line 124
    throw v2

    .line 126
    .end local v2    # "e":Lorg/xbill/DNS/WireParseException;
    :cond_5
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->a()I

    move-result v10

    iput v10, p0, Lorg/xbill/DNS/v;->l:I

    .line 127
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/r;)V
    .locals 1
    .param p1, "header"    # Lorg/xbill/DNS/r;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    .line 59
    iput-object p1, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    .line 60
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lorg/xbill/DNS/h;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/h;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/v;-><init>(Lorg/xbill/DNS/h;)V

    .line 136
    return-void
.end method

.method private a(Lorg/xbill/DNS/i;ILorg/xbill/DNS/e;I)I
    .locals 8
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/e;
    .param p4, "maxLength"    # I

    .prologue
    .line 405
    iget-object v7, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v7, v7, p2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 406
    .local v2, "n":I
    invoke-virtual {p1}, Lorg/xbill/DNS/i;->a()I

    move-result v3

    .line 407
    .local v3, "pos":I
    const/4 v5, 0x0

    .line 408
    .local v5, "rendered":I
    const/4 v6, 0x0

    .line 409
    .local v6, "skipped":I
    const/4 v1, 0x0

    .line 411
    .local v1, "lastrec":Lorg/xbill/DNS/Record;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 412
    iget-object v7, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v7, v7, p2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Record;

    .line 413
    .local v4, "rec":Lorg/xbill/DNS/Record;
    const/4 v7, 0x3

    if-ne p2, v7, :cond_1

    instance-of v7, v4, Lorg/xbill/DNS/OPTRecord;

    if-eqz v7, :cond_1

    .line 414
    add-int/lit8 v6, v6, 0x1

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v4, v1}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 419
    invoke-virtual {p1}, Lorg/xbill/DNS/i;->a()I

    move-result v3

    .line 420
    move v5, v0

    .line 422
    :cond_2
    move-object v1, v4

    .line 423
    invoke-virtual {v4, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/i;ILorg/xbill/DNS/e;)V

    .line 424
    invoke-virtual {p1}, Lorg/xbill/DNS/i;->a()I

    move-result v7

    if-le v7, p4, :cond_0

    .line 425
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/i;->a(I)V

    .line 426
    sub-int v7, v2, v5

    add-int/2addr v6, v7

    .line 429
    .end local v4    # "rec":Lorg/xbill/DNS/Record;
    .end local v6    # "skipped":I
    :cond_3
    return v6
.end method

.method public static a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/v;
    .locals 1
    .param p0, "zone"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 95
    new-instance v0, Lorg/xbill/DNS/az;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/az;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method public static a(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/v;
    .locals 4
    .param p0, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v0, Lorg/xbill/DNS/v;

    invoke-direct {v0}, Lorg/xbill/DNS/v;-><init>()V

    .line 82
    .local v0, "m":Lorg/xbill/DNS/v;
    iget-object v1, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/r;->f(I)V

    .line 83
    iget-object v1, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/r;->a(I)V

    .line 84
    invoke-virtual {v0, p0, v3}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 85
    return-object v0
.end method

.method private static a(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z
    .locals 2
    .param p0, "r1"    # Lorg/xbill/DNS/Record;
    .param p1, "r2"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/xbill/DNS/i;I)Z
    .locals 21
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "maxLength"    # I

    .prologue
    .line 435
    const/16 v17, 0xc

    move/from16 v0, p2

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 436
    const/16 v17, 0x0

    .line 492
    :goto_0
    return v17

    .line 438
    :cond_0
    const/4 v10, 0x0

    .line 440
    .local v10, "newheader":Lorg/xbill/DNS/r;
    move/from16 v15, p2

    .line 441
    .local v15, "tempMaxLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->m:Lorg/xbill/DNS/aq;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->m:Lorg/xbill/DNS/aq;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/aq;->a()I

    move-result v17

    sub-int v15, v15, v17

    .line 444
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/v;->f()Lorg/xbill/DNS/OPTRecord;

    move-result-object v11

    .line 445
    .local v11, "opt":Lorg/xbill/DNS/OPTRecord;
    const/4 v12, 0x0

    .line 446
    .local v12, "optBytes":[B
    if-eqz v11, :cond_2

    .line 447
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/OPTRecord;->toWire(I)[B

    move-result-object v12

    .line 448
    array-length v0, v12

    move/from16 v17, v0

    sub-int v15, v15, v17

    .line 451
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/i;->a()I

    move-result v14

    .line 452
    .local v14, "startpos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/r;->a(Lorg/xbill/DNS/i;)V

    .line 453
    new-instance v6, Lorg/xbill/DNS/e;

    invoke-direct {v6}, Lorg/xbill/DNS/e;-><init>()V

    .line 454
    .local v6, "c":Lorg/xbill/DNS/e;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/r;->f()I

    move-result v7

    .line 455
    .local v7, "flags":I
    const/4 v5, 0x0

    .line 456
    .local v5, "additionalCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    if-nez v17, :cond_4

    .line 456
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 460
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v15}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/i;ILorg/xbill/DNS/e;I)I

    move-result v13

    .line 461
    .local v13, "skipped":I
    if-eqz v13, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    .line 462
    const/16 v17, 0x6

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v0, v1}, Lorg/xbill/DNS/r;->a(IIZ)I

    move-result v7

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/r;->i(I)I

    move-result v17

    sub-int v17, v17, v13

    add-int/lit8 v18, v14, 0x4

    mul-int/lit8 v19, v8, 0x2

    add-int v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/i;->a(II)V

    .line 465
    add-int/lit8 v9, v8, 0x1

    .local v9, "j":I
    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_6

    .line 466
    const/16 v17, 0x0

    add-int/lit8 v18, v14, 0x4

    mul-int/lit8 v19, v9, 0x2

    add-int v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/i;->a(II)V

    .line 465
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 469
    .end local v9    # "j":I
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_3

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/r;->i(I)I

    move-result v17

    sub-int v5, v17, v13

    goto :goto_2

    .line 473
    .end local v13    # "skipped":I
    :cond_6
    if-eqz v12, :cond_7

    .line 474
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/xbill/DNS/i;->a([B)V

    .line 475
    add-int/lit8 v5, v5, 0x1

    .line 478
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/r;->f()I

    move-result v17

    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    .line 479
    add-int/lit8 v17, v14, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lorg/xbill/DNS/i;->a(II)V

    .line 481
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lorg/xbill/DNS/r;->i(I)I

    move-result v17

    move/from16 v0, v17

    if-eq v5, v0, :cond_9

    .line 482
    add-int/lit8 v17, v14, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/i;->a(II)V

    .line 484
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->m:Lorg/xbill/DNS/aq;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->m:Lorg/xbill/DNS/aq;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/v;->o:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/v;->n:Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xbill/DNS/aq;->a(Lorg/xbill/DNS/v;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v16

    .line 488
    .local v16, "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    const/16 v17, 0x3

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/i;ILorg/xbill/DNS/e;)V

    .line 489
    add-int/lit8 v17, v5, 0x1

    add-int/lit8 v18, v14, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/i;->a(II)V

    .line 492
    .end local v16    # "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lorg/xbill/DNS/r;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 192
    iget-object v0, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/r;->a(II)V

    .line 193
    return-void
.end method

.method public a(Lorg/xbill/DNS/Record;I)V
    .locals 2
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/r;->g(I)V

    .line 166
    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public a(Lorg/xbill/DNS/aq;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 0
    .param p1, "key"    # Lorg/xbill/DNS/aq;
    .param p2, "error"    # I
    .param p3, "querytsig"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 535
    iput-object p1, p0, Lorg/xbill/DNS/v;->m:Lorg/xbill/DNS/aq;

    .line 536
    iput p2, p0, Lorg/xbill/DNS/v;->o:I

    .line 537
    iput-object p3, p0, Lorg/xbill/DNS/v;->n:Lorg/xbill/DNS/TSIGRecord;

    .line 538
    return-void
.end method

.method a(Lorg/xbill/DNS/i;)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/i;

    .prologue
    .line 388
    iget-object v4, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v4, p1}, Lorg/xbill/DNS/r;->a(Lorg/xbill/DNS/i;)V

    .line 389
    new-instance v0, Lorg/xbill/DNS/e;

    invoke-direct {v0}, Lorg/xbill/DNS/e;-><init>()V

    .line 390
    .local v0, "c":Lorg/xbill/DNS/e;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    .line 391
    iget-object v4, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v4, v4, v1

    if-nez v4, :cond_1

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 394
    iget-object v4, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 395
    .local v3, "rec":Lorg/xbill/DNS/Record;
    invoke-virtual {v3, p1, v1, v0}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/i;ILorg/xbill/DNS/e;)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 398
    .end local v2    # "j":I
    .end local v3    # "rec":Lorg/xbill/DNS/Record;
    :cond_2
    return-void
.end method

.method public a(Lorg/xbill/DNS/r;)V
    .locals 0
    .param p1, "h"    # Lorg/xbill/DNS/r;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    .line 145
    return-void
.end method

.method public a(Lorg/xbill/DNS/Name;I)Z
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/xbill/DNS/Name;II)Z
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "section"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v3, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v3, v3, p3

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v3, v3, p3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 229
    iget-object v3, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v3, v3, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 230
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    const/4 v2, 0x1

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b()Lorg/xbill/DNS/Record;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v1, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v1, v2

    .line 257
    .local v0, "l":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 259
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    goto :goto_0
.end method

.method public b(Lorg/xbill/DNS/Record;)Z
    .locals 2
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 212
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 215
    :goto_1
    return v1

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public b(Lorg/xbill/DNS/Record;I)Z
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/r;->h(I)V

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)[Lorg/xbill/DNS/Record;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 336
    sget-object v1, Lorg/xbill/DNS/v;->p:[Lorg/xbill/DNS/Record;

    .line 338
    :goto_0
    return-object v1

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v1, p1

    .line 338
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Record;

    check-cast v1, [Lorg/xbill/DNS/Record;

    goto :goto_0
.end method

.method public c()Lorg/xbill/DNS/TSIGRecord;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    .line 270
    iget-object v4, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->i(I)I

    move-result v0

    .line 271
    .local v0, "count":I
    if-nez v0, :cond_0

    move-object v2, v3

    .line 277
    :goto_0
    return-object v2

    .line 273
    :cond_0
    iget-object v4, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v1, v4, v5

    .line 274
    .local v1, "l":Ljava/util/List;
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 275
    .local v2, "rec":Lorg/xbill/DNS/Record;
    iget v4, v2, Lorg/xbill/DNS/Record;->type:I

    const/16 v5, 0xfa

    if-eq v4, v5, :cond_1

    move-object v2, v3

    .line 276
    goto :goto_0

    .line 277
    :cond_1
    check-cast v2, Lorg/xbill/DNS/TSIGRecord;

    goto :goto_0
.end method

.method public c(Lorg/xbill/DNS/Record;I)Z
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)[Lorg/xbill/DNS/RRset;
    .locals 10
    .param p1, "section"    # I

    .prologue
    .line 356
    iget-object v8, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v8, v8, p1

    if-nez v8, :cond_0

    .line 357
    sget-object v8, Lorg/xbill/DNS/v;->q:[Lorg/xbill/DNS/RRset;

    .line 383
    :goto_0
    return-object v8

    .line 358
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 359
    .local v7, "sets":Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v5

    .line 360
    .local v5, "recs":[Lorg/xbill/DNS/Record;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v0, "hash":Ljava/util/Set;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v5

    if-ge v1, v8, :cond_4

    .line 362
    aget-object v8, v5, v1

    invoke-virtual {v8}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 363
    .local v3, "name":Lorg/xbill/DNS/Name;
    const/4 v4, 0x1

    .line 364
    .local v4, "newset":Z
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 365
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_1

    .line 366
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/RRset;

    .line 367
    .local v6, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    aget-object v9, v5, v1

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v8

    aget-object v9, v5, v1

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 371
    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 372
    const/4 v4, 0x0

    .line 377
    .end local v2    # "j":I
    .end local v6    # "set":Lorg/xbill/DNS/RRset;
    :cond_1
    if-eqz v4, :cond_2

    .line 378
    new-instance v6, Lorg/xbill/DNS/RRset;

    aget-object v8, v5, v1

    invoke-direct {v6, v8}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 379
    .restart local v6    # "set":Lorg/xbill/DNS/RRset;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v6    # "set":Lorg/xbill/DNS/RRset;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    .restart local v2    # "j":I
    .restart local v6    # "set":Lorg/xbill/DNS/RRset;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 383
    .end local v2    # "j":I
    .end local v3    # "name":Lorg/xbill/DNS/Name;
    .end local v4    # "newset":Z
    .end local v6    # "set":Lorg/xbill/DNS/RRset;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/xbill/DNS/RRset;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/xbill/DNS/RRset;

    check-cast v8, [Lorg/xbill/DNS/RRset;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 614
    new-instance v1, Lorg/xbill/DNS/v;

    invoke-direct {v1}, Lorg/xbill/DNS/v;-><init>()V

    .line 615
    .local v1, "m":Lorg/xbill/DNS/v;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 616
    iget-object v2, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, v1, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/v;->k:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v0

    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v2}, Lorg/xbill/DNS/r;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/r;

    iput-object v2, v1, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    .line 620
    iget v2, p0, Lorg/xbill/DNS/v;->l:I

    iput v2, v1, Lorg/xbill/DNS/v;->l:I

    .line 621
    return-object v1
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lorg/xbill/DNS/v;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/xbill/DNS/v;->c:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/xbill/DNS/v;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)[B
    .locals 2
    .param p1, "maxLength"    # I

    .prologue
    .line 521
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 522
    .local v0, "out":Lorg/xbill/DNS/i;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/i;I)Z

    .line 523
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->a()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/v;->l:I

    .line 524
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v1

    return-object v1
.end method

.method public e(I)Ljava/lang/String;
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 555
    const/4 v4, 0x3

    if-le p1, v4, :cond_0

    .line 556
    const/4 v4, 0x0

    .line 572
    :goto_0
    return-object v4

    .line 558
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 560
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 561
    .local v2, "records":[Lorg/xbill/DNS/Record;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 562
    aget-object v1, v2, v0

    .line 563
    .local v1, "rec":Lorg/xbill/DNS/Record;
    if-nez p1, :cond_1

    .line 564
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ";;\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v1, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v5}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v1, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v5}, Lorg/xbill/DNS/g;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 572
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget v1, p0, Lorg/xbill/DNS/v;->c:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lorg/xbill/DNS/OPTRecord;
    .locals 3

    .prologue
    .line 307
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 308
    .local v0, "additional":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 309
    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_0

    .line 310
    aget-object v2, v0, v1

    check-cast v2, Lorg/xbill/DNS/OPTRecord;

    .line 311
    :goto_1
    return-object v2

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public g()I
    .locals 3

    .prologue
    .line 320
    iget-object v2, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v2}, Lorg/xbill/DNS/r;->d()I

    move-result v1

    .line 321
    .local v1, "rcode":I
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->f()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 322
    .local v0, "opt":Lorg/xbill/DNS/OPTRecord;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 324
    :cond_0
    return v1
.end method

.method public h()[B
    .locals 2

    .prologue
    .line 500
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 501
    .local v0, "out":Lorg/xbill/DNS/i;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/i;)V

    .line 502
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->a()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/v;->l:I

    .line 503
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v1

    return-object v1
.end method

.method public i()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lorg/xbill/DNS/v;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 580
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->f()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 582
    .local v1, "opt":Lorg/xbill/DNS/OPTRecord;
    if-eqz v1, :cond_1

    .line 583
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {p0}, Lorg/xbill/DNS/v;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    const-string v3, ";; TSIG "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 594
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 595
    iget-object v3, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v3}, Lorg/xbill/DNS/r;->e()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    .line 596
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ";; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/xbill/DNS/aj;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    :goto_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/v;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 585
    .end local v0    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/v;->j:Lorg/xbill/DNS/r;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 591
    :cond_2
    const-string v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 598
    .restart local v0    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ";; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/xbill/DNS/aj;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 601
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ";; Message size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xbill/DNS/v;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.class public Lcom/jiliguala/niuwa/logic/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/c/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:I = 0x14

.field private static final d:Ljava/lang/String; = "text-content"

.field private static final e:Ljava/lang/String; = "text-quote-name"

.field private static final f:Ljava/lang/String; = "text-quote-content"

.field private static final g:Ljava/lang/String; = "teacher-info"

.field private static h:Lcom/jiliguala/niuwa/logic/c/a;


# instance fields
.field a:Lcom/jiliguala/niuwa/logic/image/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/logic/image/b",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/logic/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/c/a;->b:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/logic/c/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/c/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/c/a;->h:Lcom/jiliguala/niuwa/logic/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/image/b;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/c/a;->a:Lcom/jiliguala/niuwa/logic/image/b;

    .line 48
    return-void
.end method

.method private static a(II)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "original_value"    # I

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 131
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    .line 126
    .local v2, "screen_width":I
    int-to-float v3, v2

    const/high16 v4, 0x44340000    # 720.0f

    div-float v1, v3, v4

    .line 127
    .local v1, "scale_factor":F
    int-to-float v3, p1

    mul-float v0, v3, v1

    .line 129
    .local v0, "dispose_value":F
    float-to-int v3, v0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v2

    .line 175
    :cond_1
    const-string v3, "px"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PX"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 179
    .local v0, "intValue":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 180
    .end local v0    # "intValue":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;
    .locals 10
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 248
    invoke-static {p1}, Lorg/jsoup/a;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v7

    .line 250
    .local v7, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v7}, Lorg/jsoup/nodes/Document;->R()I

    move-result v8

    .line 252
    .local v8, "size":I
    const-string v0, "body"

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Document;->p(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v6

    .line 253
    .local v6, "bodyElement":Lorg/jsoup/select/c;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, "container":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    invoke-virtual {v6}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .local v1, "element":Lorg/jsoup/nodes/f;
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 256
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/c/a;->a(Lorg/jsoup/nodes/h;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 258
    .end local v1    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object v2
.end method

.method private a(Landroid/content/Context;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "node"    # Lorg/jsoup/nodes/h;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 474
    move-object/from16 v9, p2

    check-cast v9, Lorg/jsoup/nodes/f;

    .line 475
    .local v9, "ivElement":Lorg/jsoup/nodes/f;
    const-string v24, "align"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "align":Ljava/lang/String;
    const-string v24, "width"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string v24, "width"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 477
    .local v13, "ori_width":I
    :goto_0
    const-string v24, "height"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "height"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 479
    .local v12, "ori_height":I
    :goto_1
    const-string v24, "src"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 481
    .local v20, "src_url":Ljava/lang/String;
    const-string v8, ""

    .line 482
    .local v8, "href":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/h;->M()Lorg/jsoup/nodes/h;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v24

    const-string v25, "a"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 483
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/h;->M()Lorg/jsoup/nodes/h;

    move-result-object v24

    const-string v25, "href"

    invoke-virtual/range {v24 .. v25}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 486
    :cond_0
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 487
    .local v14, "padding":[I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v11, v0, [I

    .line 488
    .local v11, "margin":[I
    const-string v24, "style"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 489
    .local v21, "styleValue":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 490
    const-string v24, ";"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 491
    .local v16, "pairs":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    aget-object v15, v16, v24

    .line 493
    .local v15, "pair":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 491
    :cond_1
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 476
    .end local v8    # "href":Ljava/lang/String;
    .end local v11    # "margin":[I
    .end local v12    # "ori_height":I
    .end local v13    # "ori_width":I
    .end local v14    # "padding":[I
    .end local v15    # "pair":Ljava/lang/String;
    .end local v16    # "pairs":[Ljava/lang/String;
    .end local v20    # "src_url":Ljava/lang/String;
    .end local v21    # "styleValue":Ljava/lang/String;
    :cond_2
    const/4 v13, -0x1

    goto :goto_0

    .line 477
    .restart local v13    # "ori_width":I
    :cond_3
    const/4 v12, -0x2

    goto :goto_1

    .line 497
    .restart local v8    # "href":Ljava/lang/String;
    .restart local v11    # "margin":[I
    .restart local v12    # "ori_height":I
    .restart local v14    # "padding":[I
    .restart local v15    # "pair":Ljava/lang/String;
    .restart local v16    # "pairs":[Ljava/lang/String;
    .restart local v20    # "src_url":Ljava/lang/String;
    .restart local v21    # "styleValue":Ljava/lang/String;
    :cond_4
    const-string v26, ":"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "keyVal":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 504
    const/16 v26, 0x0

    aget-object v26, v10, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 505
    .local v22, "style_key":Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v10, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 507
    .local v23, "style_value":Ljava/lang/String;
    const-string v26, "padding"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 508
    invoke-static/range {v23 .. v23}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v14

    goto :goto_3

    .line 509
    :cond_5
    const-string v26, "margin"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 510
    invoke-static/range {v23 .. v23}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v11

    .line 511
    const/16 v26, 0x1001

    const-string v27, "20px"

    invoke-static/range {v27 .. v27}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v26 .. v27}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v7

    .line 512
    .local v7, "extra":I
    const/16 v26, 0x0

    aget v27, v11, v26

    add-int v27, v27, v7

    aput v27, v11, v26

    .line 513
    const/16 v26, 0x2

    aget v27, v11, v26

    add-int v27, v27, v7

    aput v27, v11, v26

    goto :goto_3

    .line 518
    .end local v7    # "extra":I
    .end local v10    # "keyVal":[Ljava/lang/String;
    .end local v15    # "pair":Ljava/lang/String;
    .end local v16    # "pairs":[Ljava/lang/String;
    .end local v22    # "style_key":Ljava/lang/String;
    .end local v23    # "style_value":Ljava/lang/String;
    :cond_6
    const-string v24, "width"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "height"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 519
    int-to-float v0, v13

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v18, v24, v25

    .line 520
    .local v18, "ratio":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v24

    const/16 v25, 0x0

    aget v25, v11, v25

    sub-int v24, v24, v25

    const/16 v25, 0x2

    aget v25, v11, v25

    sub-int v13, v24, v25

    .line 521
    int-to-float v0, v13

    move/from16 v24, v0

    div-float v24, v24, v18

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v12, v0

    .line 525
    .end local v18    # "ratio":F
    :cond_7
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 528
    :goto_4
    new-instance v19, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;-><init>(Landroid/content/Context;)V

    .line 529
    .local v19, "riv":Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;
    sget-object v24, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 530
    const v24, 0x7f09028b

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setTag(ILjava/lang/Object;)V

    .line 531
    const v24, 0x7f09028c

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setTag(ILjava/lang/Object;)V

    .line 532
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    const/16 v24, 0x0

    aget v24, v14, v24

    const/16 v25, 0x1

    aget v25, v14, v25

    const/16 v26, 0x2

    aget v26, v14, v26

    const/16 v27, 0x3

    aget v27, v14, v27

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setPadding(IIII)V

    .line 538
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v24

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/jiliguala/niuwa/logic/e/a;->c()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 540
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 541
    .local v17, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v24, 0x0

    aget v24, v11, v24

    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v11, v26

    const/16 v27, 0x3

    aget v27, v11, v27

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 544
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x106000d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setBackgroundColor(I)V

    .line 551
    const-string v24, "center"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 552
    const/16 v24, 0x11

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 561
    :goto_5
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    return-object v19

    .line 525
    .end local v17    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "riv":Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;
    :cond_8
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "?imageMogr2/thumbnail/600x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 553
    .restart local v17    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19    # "riv":Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;
    :cond_9
    const-string v24, "left"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 554
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_5

    .line 555
    :cond_a
    const-string v24, "right"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 556
    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_5

    .line 558
    :cond_b
    const/16 v24, 0x11

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Lorg/jsoup/nodes/h;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "node"    # Lorg/jsoup/nodes/h;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 418
    move-object/from16 v3, p2

    check-cast v3, Lorg/jsoup/nodes/f;

    .line 419
    .local v3, "ivElement":Lorg/jsoup/nodes/f;
    const/4 v1, 0x0

    .line 420
    .local v1, "bgColor":I
    const/4 v13, 0x4

    new-array v6, v13, [I

    .line 421
    .local v6, "padding":[I
    const/4 v13, 0x4

    new-array v5, v13, [I

    .line 422
    .local v5, "margin":[I
    const-string v13, "style"

    invoke-virtual {v3, v13}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, "styleValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 424
    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, "pairs":[Ljava/lang/String;
    array-length v14, v8

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v7, v8, v13

    .line 427
    .local v7, "pair":Ljava/lang/String;
    const-string v15, ":"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "keyVal":[Ljava/lang/String;
    array-length v15, v4

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 448
    .end local v4    # "keyVal":[Ljava/lang/String;
    .end local v7    # "pair":Ljava/lang/String;
    .end local v8    # "pairs":[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 452
    .local v2, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 457
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 459
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x0

    aget v13, v5, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    const/4 v15, 0x2

    aget v15, v5, v15

    const/16 v16, 0x3

    aget v16, v5, v16

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 460
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    const/4 v13, 0x0

    aget v13, v6, v13

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x2

    aget v15, v6, v15

    const/16 v16, 0x3

    aget v16, v6, v16

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 466
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    return-object v2

    .line 434
    .end local v2    # "container":Landroid/widget/LinearLayout;
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "keyVal":[Ljava/lang/String;
    .restart local v7    # "pair":Ljava/lang/String;
    .restart local v8    # "pairs":[Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "style_key":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v4, v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 437
    .local v12, "style_value":Ljava/lang/String;
    const-string v15, "padding"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 439
    invoke-static {v12}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v6

    .line 425
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 440
    :cond_3
    const-string v15, "margin"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 441
    invoke-static {v12}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v5

    goto :goto_1

    .line 442
    :cond_4
    const-string v15, "background"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 443
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pText"    # Ljava/lang/String;
    .param p3, "styleValue"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "longClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p7, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 570
    const/4 v7, 0x0

    .line 571
    .local v7, "font_size":I
    const-string v19, "#80000000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 573
    .local v5, "font_color":I
    const-string v9, ""

    .line 578
    .local v9, "href":Ljava/lang/String;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [I

    .line 579
    .local v12, "padding":[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v11, v0, [I

    .line 580
    .local v11, "margin":[I
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 581
    const-string v19, ";"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 582
    .local v14, "pairs":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v13, v14, v19

    .line 584
    .local v13, "pair":Ljava/lang/String;
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "keyVal":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 628
    .end local v10    # "keyVal":[Ljava/lang/String;
    .end local v13    # "pair":Ljava/lang/String;
    .end local v14    # "pairs":[Ljava/lang/String;
    :cond_0
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 629
    .local v18, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 631
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 633
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    int-to-float v0, v7

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 635
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    const/high16 v19, 0x40400000    # 3.0f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 642
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 644
    .local v15, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    aget v19, v11, v19

    const/16 v20, 0x1

    aget v20, v11, v20

    const/16 v21, 0x2

    aget v21, v11, v21

    const/16 v22, 0x3

    aget v22, v11, v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 648
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    if-eqz p1, :cond_1

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x106000d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 659
    :cond_1
    const/16 v19, 0x0

    aget v19, v12, v19

    const/16 v20, 0x1

    aget v20, v12, v20

    const/16 v21, 0x2

    aget v21, v12, v21

    const/16 v22, 0x3

    aget v22, v12, v22

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 661
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    return-object v18

    .line 591
    .end local v15    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "tv":Landroid/widget/TextView;
    .restart local v10    # "keyVal":[Ljava/lang/String;
    .restart local v13    # "pair":Ljava/lang/String;
    .restart local v14    # "pairs":[Ljava/lang/String;
    :cond_2
    const/16 v21, 0x0

    aget-object v21, v10, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 592
    .local v16, "style_key":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 594
    .local v17, "style_value":Ljava/lang/String;
    const-string v21, "padding"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 595
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v12

    .line 603
    :cond_3
    :goto_1
    const-string v21, "font-weight"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 604
    move-object/from16 v8, v17

    .line 582
    :cond_4
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 596
    :cond_5
    const-string v21, "margin"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 598
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v11

    .line 599
    const/16 v21, 0x1001

    const-string v22, "10px"

    invoke-static/range {v22 .. v22}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v4

    .line 600
    .local v4, "extra":I
    const/16 v21, 0x0

    aget v22, v11, v21

    add-int v22, v22, v4

    aput v22, v11, v21

    .line 601
    const/16 v21, 0x2

    aget v22, v11, v21

    add-int v22, v22, v4

    aput v22, v11, v21

    goto :goto_1

    .line 605
    .end local v4    # "extra":I
    :cond_6
    const-string v21, "font-family"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 606
    move-object/from16 v6, v17

    .local v6, "font_family":Ljava/lang/String;
    goto :goto_2

    .line 607
    .end local v6    # "font_family":Ljava/lang/String;
    :cond_7
    const-string v21, "font-size"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 609
    const-string v21, "text-content"

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 610
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07007e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 620
    :goto_3
    int-to-float v0, v7

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/jiliguala/niuwa/common/util/z;->c(F)I

    move-result v7

    goto :goto_2

    .line 611
    :cond_8
    const-string v21, "text-quote-name"

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 612
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070080

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    .line 613
    :cond_9
    const-string v21, "text-quote-content"

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 614
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070080

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    .line 615
    :cond_a
    const-string v21, "teacher-info"

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 616
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070080

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    .line 618
    :cond_b
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07007e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    .line 622
    :cond_c
    const-string v21, "color"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 623
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/logic/c/a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_2
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/c/a;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/jiliguala/niuwa/logic/c/a;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/c/a;->h:Lcom/jiliguala/niuwa/logic/c/a;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/logic/c/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/c/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/c/a;->h:Lcom/jiliguala/niuwa/logic/c/a;

    .line 55
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/c/a;->h:Lcom/jiliguala/niuwa/logic/c/a;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "node"    # Lorg/jsoup/nodes/h;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 287
    const-string v29, "height"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "height":Ljava/lang/String;
    const-string v29, "width"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 289
    .local v28, "width":Ljava/lang/String;
    const-string v29, "style"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 290
    .local v22, "styleValue":Ljava/lang/String;
    const-string v29, "targetType"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 291
    .local v25, "targetType":Ljava/lang/String;
    const-string v29, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "duration":Ljava/lang/String;
    const-string v29, "src"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 294
    .local v21, "src":Ljava/lang/String;
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v14, v0, [I

    .line 295
    .local v14, "padding":[I
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v13, v0, [I

    .line 296
    .local v13, "margin":[I
    const-string v29, "audio-content"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 298
    const/16 v29, 0x1001

    :try_start_0
    invoke-static/range {v28 .. v28}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v27

    .line 299
    .local v27, "w":I
    const/16 v29, 0x1001

    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v8

    .line 301
    .local v8, "h":I
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 302
    const-string v29, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 303
    .local v16, "pairs":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    const/16 v29, 0x0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    aget-object v15, v16, v29

    .line 305
    .local v15, "pair":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 303
    :cond_0
    :goto_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 309
    :cond_1
    const-string v31, ":"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, "keyVal":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 316
    const/16 v31, 0x0

    aget-object v31, v11, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 317
    .local v23, "style_key":Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v31, v11, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 319
    .local v24, "style_value":Ljava/lang/String;
    const-string v31, "padding"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 320
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v14

    .line 321
    const/16 v31, 0x1001

    const-string v32, "10px"

    invoke-static/range {v32 .. v32}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v7

    .line 322
    .local v7, "extra":I
    const/16 v31, 0x0

    aget v32, v14, v31

    add-int v32, v32, v7

    aput v32, v14, v31

    .line 323
    const/16 v31, 0x1

    aget v32, v14, v31

    add-int v32, v32, v7

    aput v32, v14, v31

    .line 324
    const/16 v31, 0x2

    aget v32, v14, v31

    add-int v32, v32, v7

    aput v32, v14, v31

    .line 325
    const/16 v31, 0x3

    aget v32, v14, v31

    add-int v32, v32, v7

    aput v32, v14, v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    .end local v7    # "extra":I
    .end local v8    # "h":I
    .end local v11    # "keyVal":[Ljava/lang/String;
    .end local v15    # "pair":Ljava/lang/String;
    .end local v16    # "pairs":[Ljava/lang/String;
    .end local v23    # "style_key":Ljava/lang/String;
    .end local v24    # "style_value":Ljava/lang/String;
    .end local v27    # "w":I
    :catch_0
    move-exception v6

    .line 387
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 390
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 326
    .restart local v8    # "h":I
    .restart local v11    # "keyVal":[Ljava/lang/String;
    .restart local v15    # "pair":Ljava/lang/String;
    .restart local v16    # "pairs":[Ljava/lang/String;
    .restart local v23    # "style_key":Ljava/lang/String;
    .restart local v24    # "style_value":Ljava/lang/String;
    .restart local v27    # "w":I
    :cond_3
    :try_start_1
    const-string v31, "margin"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 327
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/c/a;->c(Ljava/lang/String;)[I

    move-result-object v13

    .line 328
    const/16 v31, 0x1001

    const-string v32, "10px"

    invoke-static/range {v32 .. v32}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v7

    .line 329
    .restart local v7    # "extra":I
    const/16 v31, 0x0

    aget v32, v13, v31

    add-int v32, v32, v7

    aput v32, v13, v31

    .line 330
    const/16 v31, 0x2

    aget v32, v13, v31

    add-int v32, v32, v7

    aput v32, v13, v31

    goto/16 :goto_1

    .line 336
    .end local v7    # "extra":I
    .end local v11    # "keyVal":[Ljava/lang/String;
    .end local v15    # "pair":Ljava/lang/String;
    .end local v16    # "pairs":[Ljava/lang/String;
    .end local v23    # "style_key":Ljava/lang/String;
    .end local v24    # "style_value":Ljava/lang/String;
    :cond_4
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, -0x2

    const/16 v30, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .local v17, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v29, 0x0

    aget v29, v13, v29

    const/16 v30, 0x1

    aget v30, v13, v30

    const/16 v31, 0x2

    aget v31, v13, v31

    const/16 v32, 0x3

    aget v32, v13, v32

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 339
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 340
    .local v12, "layout":Landroid/widget/RelativeLayout;
    const v29, 0x7f08034e

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 341
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 344
    .local v10, "imageView":Landroid/widget/ImageView;
    const/16 v29, 0x5

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 345
    const v29, 0x7f090075

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 346
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 347
    const v29, 0x7f080351

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    const/16 v29, 0x1001

    const-string v30, "40px"

    invoke-static/range {v30 .. v30}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v20

    .line 349
    .local v20, "size":I
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v19, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 351
    const/16 v29, 0xf

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    move-object/from16 v0, v19

    invoke-virtual {v12, v10, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v19    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    .restart local v19    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x1

    const v30, 0x7f090075

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    const/16 v29, 0xf

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v26, "tv":Landroid/widget/TextView;
    const v29, 0x7f09007c

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 359
    const/16 v29, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 360
    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setWidth(I)V

    .line 361
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 362
    const/16 v29, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f070080

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 363
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f060051

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 368
    .local v18, "playStatusIv":Landroid/widget/ImageView;
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x5

    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 369
    const v29, 0x7f090070

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 370
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 371
    const v29, 0x7f080354

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v19    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 373
    .restart local v19    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x1

    const v30, 0x7f09007c

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 374
    const/16 v29, 0xf

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    const v29, 0x7f090077

    move/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 378
    const v29, 0x7f090076

    move/from16 v0, v29

    invoke-virtual {v12, v0, v10}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 379
    const v29, 0x7f090071

    move/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 380
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const/16 v29, 0x0

    aget v29, v14, v29

    const/16 v30, 0x1

    aget v30, v14, v30

    const/16 v31, 0x2

    aget v31, v14, v31

    const/16 v32, 0x3

    aget v32, v14, v32

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 385
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "node"    # Lorg/jsoup/nodes/h;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v10, "sBuilder":Ljava/lang/StringBuilder;
    const-string v0, "style"

    invoke-virtual {p3, v0}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "styleValue":Ljava/lang/String;
    const-string v0, "class"

    invoke-virtual {p3, v0}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jsoup/nodes/h;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/h;

    .line 398
    .local v8, "childNode":Lorg/jsoup/nodes/h;
    instance-of v0, v8, Lorg/jsoup/nodes/i;

    if-eqz v0, :cond_2

    move-object v0, v8

    .line 400
    check-cast v0, Lorg/jsoup/nodes/i;

    invoke-virtual {v0}, Lorg/jsoup/nodes/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 404
    :cond_1
    check-cast v8, Lorg/jsoup/nodes/i;

    .end local v8    # "childNode":Lorg/jsoup/nodes/h;
    invoke-virtual {v8}, Lorg/jsoup/nodes/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    .restart local v8    # "childNode":Lorg/jsoup/nodes/h;
    :cond_2
    instance-of v0, v8, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v8}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, "nodeName":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "br"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 413
    .end local v8    # "childNode":Lorg/jsoup/nodes/h;
    .end local v9    # "nodeName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 414
    return-void
.end method

.method private a(Lorg/jsoup/nodes/h;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 9
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 263
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    .line 264
    .local v3, "childNode":Lorg/jsoup/nodes/h;
    instance-of v0, v3, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v3}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "nodeName":Ljava/lang/String;
    const-string v0, "img"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, p3, v3, p4, p2}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/content/Context;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    goto :goto_0

    .line 269
    :cond_1
    const-string v0, "p"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-direct {p0, p3, v3, p2}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/content/Context;Lorg/jsoup/nodes/h;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v2

    .local v2, "container":Landroid/widget/LinearLayout;
    move-object v0, p0

    move-object v1, p3

    move-object v4, p4

    move-object v5, p5

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 272
    .end local v2    # "container":Landroid/widget/LinearLayout;
    :cond_2
    const-string v0, "a"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    invoke-virtual {v3}, Lorg/jsoup/nodes/h;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/h;

    .line 274
    .local v6, "aChildNode":Lorg/jsoup/nodes/h;
    invoke-virtual {v6}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "img"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-direct {p0, p3, v6, p4, p2}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/content/Context;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    goto :goto_1

    .line 278
    .end local v6    # "aChildNode":Lorg/jsoup/nodes/h;
    :cond_4
    const-string v0, "object"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, p3, p2, v3, p4}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lorg/jsoup/nodes/h;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 284
    .end local v3    # "childNode":Lorg/jsoup/nodes/h;
    .end local v7    # "nodeName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private static c(Ljava/lang/String;)[I
    .locals 12
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v10, "\\s"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "parts":[Ljava/lang/String;
    const-string v1, ""

    .line 63
    .local v1, "bottomSpaceString":Ljava/lang/String;
    const-string v9, ""

    .line 64
    .local v9, "topSpaceString":Ljava/lang/String;
    const-string v3, ""

    .line 65
    .local v3, "leftSpaceString":Ljava/lang/String;
    const-string v6, ""

    .line 69
    .local v6, "rightSpaceString":Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 70
    const/4 v10, 0x0

    aget-object v1, v4, v10

    .line 71
    const/4 v10, 0x0

    aget-object v9, v4, v10

    .line 72
    const/4 v10, 0x0

    aget-object v3, v4, v10

    .line 73
    const/4 v10, 0x0

    aget-object v6, v4, v10

    .line 91
    :cond_0
    :goto_0
    const/16 v10, 0x1001

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v2

    .line 92
    .local v2, "left":I
    const/16 v10, 0x1001

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v5

    .line 93
    .local v5, "right":I
    const/16 v10, 0x1001

    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v8

    .line 94
    .local v8, "top":I
    const/16 v10, 0x1001

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/c/a;->d(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/jiliguala/niuwa/logic/c/a;->a(II)I

    move-result v0

    .line 110
    .local v0, "bottom":I
    const/4 v10, 0x4

    new-array v7, v10, [I

    const/4 v10, 0x0

    aput v2, v7, v10

    const/4 v10, 0x1

    aput v8, v7, v10

    const/4 v10, 0x2

    aput v5, v7, v10

    const/4 v10, 0x3

    aput v0, v7, v10

    .line 111
    .local v7, "space":[I
    return-object v7

    .line 74
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v5    # "right":I
    .end local v7    # "space":[I
    .end local v8    # "top":I
    :cond_1
    array-length v10, v4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 75
    const/4 v10, 0x0

    aget-object v9, v4, v10

    .line 76
    const/4 v10, 0x0

    aget-object v1, v4, v10

    .line 77
    const/4 v10, 0x1

    aget-object v3, v4, v10

    .line 78
    const/4 v10, 0x1

    aget-object v6, v4, v10

    goto :goto_0

    .line 79
    :cond_2
    array-length v10, v4

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 80
    const/4 v10, 0x0

    aget-object v9, v4, v10

    .line 81
    const/4 v10, 0x1

    aget-object v3, v4, v10

    .line 82
    const/4 v10, 0x1

    aget-object v6, v4, v10

    .line 83
    const/4 v10, 0x2

    aget-object v1, v4, v10

    goto :goto_0

    .line 84
    :cond_3
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 85
    const/4 v10, 0x0

    aget-object v9, v4, v10

    .line 86
    const/4 v10, 0x1

    aget-object v6, v4, v10

    .line 87
    const/4 v10, 0x2

    aget-object v1, v4, v10

    .line 88
    const/4 v10, 0x3

    aget-object v3, v4, v10

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v4, "0"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v3

    .line 140
    :cond_1
    const-string v4, "\\d+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 145
    const-string v4, "px"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const-string v4, "px"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 151
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    .local v1, "intValue":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 154
    .end local v1    # "intValue":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/c/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, "font_size_value":I
    return v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/logic/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/c/a;->a:Lcom/jiliguala/niuwa/logic/image/b;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/logic/image/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 212
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 222
    .end local v1    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 215
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    if-eqz p3, :cond_1

    .line 216
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/jiliguala/niuwa/logic/c/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;

    move-result-object v1

    .line 218
    :cond_1
    if-eqz v1, :cond_2

    .line 219
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/c/a;->a:Lcom/jiliguala/niuwa/logic/image/b;

    invoke-virtual {v3, v0, v1}, Lcom/jiliguala/niuwa/logic/image/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v2, v1

    .line 222
    .end local v1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 226
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 227
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 228
    .local v0, "child_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    move-object v4, p1

    .line 229
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 230
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 231
    const v4, 0x7f09028c

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v5

    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->c()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    invoke-virtual {v5, v2, v4, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 236
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 237
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/view/View;)V

    .line 228
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "child_count":I
    .end local v1    # "i":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/c/a;->a:Lcom/jiliguala/niuwa/logic/image/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/image/b;->a()V

    .line 207
    return-void
.end method

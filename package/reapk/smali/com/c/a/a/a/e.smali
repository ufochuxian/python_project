.class public Lcom/c/a/a/a/e;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field b:Ljava/lang/Object;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/c/a/a/a/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/e;->c:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/util/LinkedHashSet;

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/e;->f:Ljava/util/LinkedHashSet;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/e;->d:Ljava/util/HashSet;

    .line 79
    iput-object p1, p0, Lcom/c/a/a/a/e;->a:Landroid/view/View;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/e;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/c/a/a/a/e;->g:Lcom/c/a/a/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/a/a/e;)I
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/e;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/c/a/a/a/e;->f()I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/a/e;->g:Lcom/c/a/a/a/c;

    invoke-virtual {v1}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(I)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    .local v0, "view":Landroid/widget/TextView;
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 234
    return-object p0
.end method

.method public a(IF)Lcom/c/a/a/a/e;
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # F

    .prologue
    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 209
    :goto_0
    return-object p0

    .line 204
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 205
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(IFI)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F
    .param p3, "max"    # I

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 323
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 324
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 325
    return-object p0
.end method

.method public a(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "strId"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    return-object p0
.end method

.method public a(III)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 282
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 283
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 284
    return-object p0
.end method

.method public a(IILjava/lang/Object;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 524
    return-object p0
.end method

.method public a(ILandroid/graphics/Bitmap;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 191
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    return-object p0
.end method

.method public a(ILandroid/graphics/Typeface;)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 243
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 244
    return-object p0
.end method

.method public a(ILandroid/graphics/drawable/Drawable;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-object p0
.end method

.method public a(ILandroid/view/View$OnClickListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-object p0
.end method

.method public a(ILandroid/view/View$OnLongClickListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 443
    return-object p0
.end method

.method public a(ILandroid/view/View$OnTouchListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    return-object p0
.end method

.method public a(ILandroid/widget/Adapter;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 554
    .local v0, "view":Landroid/widget/AdapterView;
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 555
    return-object p0
.end method

.method public a(ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 457
    .local v0, "view":Landroid/widget/AdapterView;
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 458
    return-object p0
.end method

.method public a(ILandroid/widget/AdapterView$OnItemLongClickListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 470
    .local v0, "view":Landroid/widget/AdapterView;
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 471
    return-object p0
.end method

.method public a(ILandroid/widget/AdapterView$OnItemSelectedListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 483
    .local v0, "view":Landroid/widget/AdapterView;
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 484
    return-object p0
.end method

.method public a(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 496
    .local v0, "view":Landroid/widget/CompoundButton;
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 497
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-object p0
.end method

.method public a(ILjava/lang/Object;)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 510
    return-object p0
.end method

.method public a(IZ)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-object p0

    .line 221
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public varargs a(Landroid/graphics/Typeface;[I)Lcom/c/a/a/a/e;
    .locals 5
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "viewIds"    # [I

    .prologue
    .line 251
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    .line 252
    .local v1, "viewId":I
    invoke-virtual {p0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "view":Landroid/widget/TextView;
    .end local v1    # "viewId":I
    :cond_0
    return-object p0
.end method

.method protected a(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/e;
    .locals 0
    .param p1, "adapter"    # Lcom/c/a/a/a/c;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/c/a/a/a/e;->g:Lcom/c/a/a/a/c;

    .line 566
    return-object p0
.end method

.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/c/a/a/a/e;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "associatedObject"    # Ljava/lang/Object;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/c/a/a/a/e;->b:Ljava/lang/Object;

    .line 591
    return-void
.end method

.method public b(I)Lcom/c/a/a/a/e;
    .locals 3
    .param p1, "viewId"    # I

    .prologue
    .line 353
    iget-object v1, p0, Lcom/c/a/a/a/e;->e:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 359
    :cond_0
    new-instance v1, Lcom/c/a/a/a/e$1;

    invoke-direct {v1, p0}, Lcom/c/a/a/a/e$1;-><init>(Lcom/c/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    :cond_1
    return-object p0
.end method

.method public b(IF)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 309
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 310
    return-object p0
.end method

.method public b(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "imageResId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    return-object p0
.end method

.method public b(IZ)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 537
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 538
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 542
    :cond_0
    :goto_0
    return-object p0

    .line 539
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Landroid/widget/CheckedTextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public b()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/c/a/a/a/e;->f:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public c(I)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 381
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->d(I)Lcom/c/a/a/a/e;

    .line 382
    iget-object v0, p0, Lcom/c/a/a/a/e;->d:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    return-object p0
.end method

.method public c(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    return-object p0
.end method

.method public c()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/c/a/a/a/e;->a:Landroid/view/View;

    return-object v0
.end method

.method public d(I)Lcom/c/a/a/a/e;
    .locals 3
    .param p1, "viewId"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lcom/c/a/a/a/e;->f:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 403
    :cond_0
    new-instance v1, Lcom/c/a/a/a/e$2;

    invoke-direct {v1, p0}, Lcom/c/a/a/a/e$2;-><init>(Lcom/c/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 413
    :cond_1
    return-object p0
.end method

.method public d(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    return-object p0
.end method

.method public e(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v1, p0, Lcom/c/a/a/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 572
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/c/a/a/a/e;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/c/a/a/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    :cond_0
    return-object v0
.end method

.method public e(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/c/a/a/a/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public f(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 268
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 269
    return-object p0
.end method

.method public g(II)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 296
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 297
    return-object p0
.end method

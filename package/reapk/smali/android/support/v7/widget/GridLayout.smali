.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayout$a;,
        Landroid/support/v7/widget/GridLayout$j;,
        Landroid/support/v7/widget/GridLayout$f;,
        Landroid/support/v7/widget/GridLayout$e;,
        Landroid/support/v7/widget/GridLayout$i;,
        Landroid/support/v7/widget/GridLayout$c;,
        Landroid/support/v7/widget/GridLayout$h;,
        Landroid/support/v7/widget/GridLayout$b;,
        Landroid/support/v7/widget/GridLayout$g;,
        Landroid/support/v7/widget/GridLayout$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/support/v7/widget/GridLayout$a;

.field public static final B:Landroid/support/v7/widget/GridLayout$a;

.field public static final C:Landroid/support/v7/widget/GridLayout$a;

.field static final D:I = 0x0

.field static final E:I = 0x2

.field private static final F:I = 0x0

.field private static final G:I = -0x80000000

.field private static final H:Z = false

.field private static final I:I = 0x1

.field private static final J:I

.field private static final K:I

.field private static final L:I

.field private static final M:I

.field private static final N:I

.field private static final O:I

.field private static final P:I

.field private static final Q:Landroid/support/v7/widget/GridLayout$a;

.field private static final R:Landroid/support/v7/widget/GridLayout$a;

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = -0x80000000

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field static final f:I = 0x186a0

.field static final g:I = 0x0

.field static final h:I = 0x0

.field static final i:Landroid/util/Printer;

.field static final j:Landroid/util/Printer;

.field static final k:Z = true

.field static final t:Landroid/support/v7/widget/GridLayout$a;

.field public static final u:Landroid/support/v7/widget/GridLayout$a;

.field public static final v:Landroid/support/v7/widget/GridLayout$a;

.field public static final w:Landroid/support/v7/widget/GridLayout$a;

.field public static final x:Landroid/support/v7/widget/GridLayout$a;

.field public static final y:Landroid/support/v7/widget/GridLayout$a;

.field public static final z:Landroid/support/v7/widget/GridLayout$a;


# instance fields
.field final l:Landroid/support/v7/widget/GridLayout$d;

.field final m:Landroid/support/v7/widget/GridLayout$d;

.field n:I

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:Landroid/util/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-class v2, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->i:Landroid/util/Printer;

    .line 223
    new-instance v0, Landroid/support/v7/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->j:Landroid/util/Printer;

    .line 239
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_orientation:I

    sput v0, Landroid/support/v7/widget/GridLayout;->J:I

    .line 240
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_rowCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->K:I

    .line 241
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_columnCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->L:I

    .line 242
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_useDefaultMargins:I

    sput v0, Landroid/support/v7/widget/GridLayout;->M:I

    .line 243
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_alignmentMode:I

    sput v0, Landroid/support/v7/widget/GridLayout;->N:I

    .line 244
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_rowOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->O:I

    .line 245
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_columnOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->P:I

    .line 2685
    new-instance v0, Landroid/support/v7/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->t:Landroid/support/v7/widget/GridLayout$a;

    .line 2706
    new-instance v0, Landroid/support/v7/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->Q:Landroid/support/v7/widget/GridLayout$a;

    .line 2727
    new-instance v0, Landroid/support/v7/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->R:Landroid/support/v7/widget/GridLayout$a;

    .line 2748
    sget-object v0, Landroid/support/v7/widget/GridLayout;->Q:Landroid/support/v7/widget/GridLayout$a;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->u:Landroid/support/v7/widget/GridLayout$a;

    .line 2754
    sget-object v0, Landroid/support/v7/widget/GridLayout;->R:Landroid/support/v7/widget/GridLayout$a;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->v:Landroid/support/v7/widget/GridLayout$a;

    .line 2760
    sget-object v0, Landroid/support/v7/widget/GridLayout;->Q:Landroid/support/v7/widget/GridLayout$a;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->w:Landroid/support/v7/widget/GridLayout$a;

    .line 2766
    sget-object v0, Landroid/support/v7/widget/GridLayout;->R:Landroid/support/v7/widget/GridLayout$a;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->x:Landroid/support/v7/widget/GridLayout$a;

    .line 2795
    sget-object v0, Landroid/support/v7/widget/GridLayout;->w:Landroid/support/v7/widget/GridLayout$a;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->x:Landroid/support/v7/widget/GridLayout$a;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$a;Landroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->y:Landroid/support/v7/widget/GridLayout$a;

    .line 2801
    sget-object v0, Landroid/support/v7/widget/GridLayout;->x:Landroid/support/v7/widget/GridLayout$a;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->w:Landroid/support/v7/widget/GridLayout$a;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$a;Landroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->z:Landroid/support/v7/widget/GridLayout$a;

    .line 2808
    new-instance v0, Landroid/support/v7/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->A:Landroid/support/v7/widget/GridLayout$a;

    .line 2832
    new-instance v0, Landroid/support/v7/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->B:Landroid/support/v7/widget/GridLayout$a;

    .line 2893
    new-instance v0, Landroid/support/v7/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->C:Landroid/support/v7/widget/GridLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    new-instance v1, Landroid/support/v7/widget/GridLayout$d;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/widget/GridLayout$d;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    .line 250
    new-instance v1, Landroid/support/v7/widget/GridLayout$d;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/GridLayout$d;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    .line 251
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->n:I

    .line 252
    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->o:Z

    .line 253
    iput v3, p0, Landroid/support/v7/widget/GridLayout;->p:I

    .line 255
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->r:I

    .line 256
    sget-object v1, Landroid/support/v7/widget/GridLayout;->i:Landroid/util/Printer;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->s:Landroid/util/Printer;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/d/b$b;->default_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/GridLayout;->q:I

    .line 266
    sget-object v1, Landroid/support/v7/d/b$d;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 268
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Landroid/support/v7/widget/GridLayout;->K:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    .line 269
    sget v1, Landroid/support/v7/widget/GridLayout;->L:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 270
    sget v1, Landroid/support/v7/widget/GridLayout;->J:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    .line 271
    sget v1, Landroid/support/v7/widget/GridLayout;->M:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 272
    sget v1, Landroid/support/v7/widget/GridLayout;->N:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    .line 273
    sget v1, Landroid/support/v7/widget/GridLayout;->O:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 274
    sget v1, Landroid/support/v7/widget/GridLayout;->P:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    return-void

    .line 276
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static a(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    .line 933
    add-int v0, p0, p1

    .line 934
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 933
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/support/v7/widget/GridLayout$f;ZI)I
    .locals 3
    .param p0, "minorRange"    # Landroid/support/v7/widget/GridLayout$f;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$f;->a()I

    move-result v1

    .line 715
    .local v1, "size":I
    if-nez p2, :cond_0

    .line 719
    .end local v1    # "size":I
    :goto_0
    return v1

    .line 718
    .restart local v1    # "size":I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 719
    .local v0, "min":I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 718
    .end local v0    # "min":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/GridLayout$g;ZZ)I
    .locals 8
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/support/v7/widget/GridLayout$g;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 649
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout;->o:Z

    if-nez v6, :cond_0

    .line 658
    :goto_0
    return v5

    .line 652
    :cond_0
    if-eqz p3, :cond_2

    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 653
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    .line 654
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$d;
    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 655
    .local v3, "span":Landroid/support/v7/widget/GridLayout$f;
    if-eqz p3, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    move v2, v1

    .line 656
    .local v2, "leading1":Z
    :goto_3
    if-eqz v2, :cond_7

    iget v6, v3, Landroid/support/v7/widget/GridLayout$f;->a:I

    if-nez v6, :cond_6

    .line 658
    .local v1, "isAtEdge":Z
    :cond_1
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZZ)I

    move-result v5

    goto :goto_0

    .line 652
    .end local v0    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .end local v1    # "isAtEdge":Z
    .end local v2    # "leading1":Z
    .end local v3    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_2
    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    .line 653
    .restart local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    goto :goto_2

    .restart local v0    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .restart local v3    # "span":Landroid/support/v7/widget/GridLayout$f;
    :cond_4
    move v2, v5

    .line 655
    goto :goto_3

    :cond_5
    move v2, p4

    goto :goto_3

    .restart local v2    # "leading1":Z
    :cond_6
    move v1, v5

    .line 656
    goto :goto_4

    :cond_7
    iget v6, v3, Landroid/support/v7/widget/GridLayout$f;->b:I

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v5

    goto :goto_4
.end method

.method private a(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    .line 645
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method static a([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .prologue
    .line 599
    move v2, p1

    .line 600
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 601
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    :cond_0
    return v2
.end method

.method static a(IZ)Landroid/support/v7/widget/GridLayout$a;
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .prologue
    .line 615
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 616
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 617
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 618
    .local v0, "flags":I
    sparse-switch v0, :sswitch_data_0

    .line 632
    sget-object v3, Landroid/support/v7/widget/GridLayout;->t:Landroid/support/v7/widget/GridLayout$a;

    :goto_2
    return-object v3

    .line 615
    .end local v0    # "flags":I
    .end local v1    # "mask":I
    .end local v2    # "shift":I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 616
    .restart local v1    # "mask":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 620
    .restart local v0    # "flags":I
    .restart local v2    # "shift":I
    :sswitch_0
    if-eqz p1, :cond_2

    sget-object v3, Landroid/support/v7/widget/GridLayout;->y:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/support/v7/widget/GridLayout;->u:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    .line 622
    :sswitch_1
    if-eqz p1, :cond_3

    sget-object v3, Landroid/support/v7/widget/GridLayout;->z:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/support/v7/widget/GridLayout;->v:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    .line 624
    :sswitch_2
    sget-object v3, Landroid/support/v7/widget/GridLayout;->C:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    .line 626
    :sswitch_3
    sget-object v3, Landroid/support/v7/widget/GridLayout;->A:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    .line 628
    :sswitch_4
    sget-object v3, Landroid/support/v7/widget/GridLayout;->w:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    .line 630
    :sswitch_5
    sget-object v3, Landroid/support/v7/widget/GridLayout;->x:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_2

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private static a(Landroid/support/v7/widget/GridLayout$a;Landroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$a;
    .locals 1
    .param p0, "ltr"    # Landroid/support/v7/widget/GridLayout$a;
    .param p1, "rtl"    # Landroid/support/v7/widget/GridLayout$a;

    .prologue
    .line 2769
    new-instance v0, Landroid/support/v7/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$5;-><init>(Landroid/support/v7/widget/GridLayout$a;Landroid/support/v7/widget/GridLayout$a;)V

    return-object v0
.end method

.method public static a(I)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I

    .prologue
    .line 2614
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/GridLayout;->b(II)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method public static a(IF)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I
    .param p1, "weight"    # F

    .prologue
    .line 2552
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/support/v7/widget/GridLayout;->a(IIF)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method public static a(IIF)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "weight"    # F

    .prologue
    .line 2542
    sget-object v0, Landroid/support/v7/widget/GridLayout;->t:Landroid/support/v7/widget/GridLayout$a;

    invoke-static {p0, p1, v0, p2}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method public static a(IILandroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/support/v7/widget/GridLayout$a;

    .prologue
    .line 2563
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method public static a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;
    .locals 6
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/support/v7/widget/GridLayout$a;
    .param p3, "weight"    # F

    .prologue
    .line 2518
    new-instance v0, Landroid/support/v7/widget/GridLayout$j;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$j;-><init>(ZIILandroid/support/v7/widget/GridLayout$a;F)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(ILandroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/support/v7/widget/GridLayout$a;

    .prologue
    .line 2581
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/support/v7/widget/GridLayout$a;
    .param p2, "weight"    # F

    .prologue
    .line 2529
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method private a(IIZ)V
    .locals 22
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    .prologue
    .line 907
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v13

    .local v13, "N":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 908
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 909
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 907
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 910
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v19

    .line 911
    .local v19, "lp":Landroid/support/v7/widget/GridLayout$g;
    if-eqz p3, :cond_2

    .line 912
    move-object/from16 v0, v19

    iget v6, v0, Landroid/support/v7/widget/GridLayout$g;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/support/v7/widget/GridLayout$g;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 914
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/GridLayout;->n:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 915
    .local v16, "horizontal":Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    move-object/from16 v21, v0

    .line 916
    .local v21, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$j;->a(Z)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v2

    sget-object v4, Landroid/support/v7/widget/GridLayout;->C:Landroid/support/v7/widget/GridLayout$a;

    if-ne v2, v4, :cond_0

    .line 917
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    move-object/from16 v20, v0

    .line 918
    .local v20, "span":Landroid/support/v7/widget/GridLayout$f;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    .line 919
    .local v14, "axis":Landroid/support/v7/widget/GridLayout$d;
    :goto_4
    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayout$d;->h()[I

    move-result-object v18

    .line 920
    .local v18, "locations":[I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/support/v7/widget/GridLayout$f;->b:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/support/v7/widget/GridLayout$f;->a:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 921
    .local v15, "cellSize":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 922
    .local v6, "viewSize":I
    if-eqz v16, :cond_6

    .line 923
    move-object/from16 v0, v19

    iget v7, v0, Landroid/support/v7/widget/GridLayout$g;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 914
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v20    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v21    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 915
    .restart local v16    # "horizontal":Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    move-object/from16 v21, v0

    goto :goto_3

    .line 918
    .restart local v20    # "span":Landroid/support/v7/widget/GridLayout$f;
    .restart local v21    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    goto :goto_4

    .line 925
    .restart local v6    # "viewSize":I
    .restart local v14    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .restart local v15    # "cellSize":I
    .restart local v18    # "locations":[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Landroid/support/v7/widget/GridLayout$g;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 930
    .end local v3    # "c":Landroid/view/View;
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v19    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v20    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v21    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_7
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "graphics"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 862
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getWidth()I

    move-result v6

    .line 864
    .local v6, "width":I
    sub-int v0, v6, p2

    int-to-float v1, v0

    int-to-float v2, p3

    sub-int v0, v6, p4

    int-to-float v3, v0

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 868
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 866
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static a(Landroid/support/v7/widget/GridLayout$g;IIII)V
    .locals 2
    .param p0, "lp"    # Landroid/support/v7/widget/GridLayout$g;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .prologue
    .line 708
    new-instance v0, Landroid/support/v7/widget/GridLayout$f;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$g;->a(Landroid/support/v7/widget/GridLayout$f;)V

    .line 709
    new-instance v0, Landroid/support/v7/widget/GridLayout$f;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$g;->b(Landroid/support/v7/widget/GridLayout$f;)V

    .line 710
    return-void
.end method

.method private a(Landroid/support/v7/widget/GridLayout$g;Z)V
    .locals 8
    .param p1, "lp"    # Landroid/support/v7/widget/GridLayout$g;
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v7, -0x80000000

    .line 806
    if-eqz p2, :cond_3

    const-string v2, "column"

    .line 807
    .local v2, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    iget-object v4, p1, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 808
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_1
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 809
    .local v3, "span":Landroid/support/v7/widget/GridLayout$f;
    iget v5, v3, Landroid/support/v7/widget/GridLayout$f;->a:I

    if-eq v5, v7, :cond_0

    iget v5, v3, Landroid/support/v7/widget/GridLayout$f;->a:I

    if-gez v5, :cond_0

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices must be positive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    .line 812
    :cond_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    .line 813
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$d;
    :goto_2
    iget v1, v0, Landroid/support/v7/widget/GridLayout$d;->e:I

    .line 814
    .local v1, "count":I
    if-eq v1, v7, :cond_2

    .line 815
    iget v5, v3, Landroid/support/v7/widget/GridLayout$f;->b:I

    if-le v5, v1, :cond_1

    .line 816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    .line 819
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$f;->a()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " span mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    .line 823
    :cond_2
    return-void

    .line 806
    .end local v0    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .end local v1    # "count":I
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v3    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_3
    const-string v2, "row"

    goto :goto_0

    .line 807
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    .line 812
    .restart local v3    # "span":Landroid/support/v7/widget/GridLayout$f;
    .restart local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    goto :goto_2
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .prologue
    .line 898
    const/4 v2, 0x1

    .line 899
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v2

    .line 898
    invoke-static {p2, v2, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 900
    .local v1, "childWidthSpec":I
    const/4 v2, 0x0

    .line 901
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v2

    .line 900
    invoke-static {p3, v2, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 902
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 903
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 691
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v1

    .line 694
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 695
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 699
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 609
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    return-object v0
.end method

.method private b(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 687
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 638
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v4/widget/Space;

    if-ne v0, v1, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 641
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->q:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static b(II)Landroid/support/v7/widget/GridLayout$j;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    .prologue
    .line 2598
    sget-object v0, Landroid/support/v7/widget/GridLayout;->t:Landroid/support/v7/widget/GridLayout$a;

    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    return-object v0
.end method

.method private static b([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .prologue
    .line 703
    array-length v0, p0

    .line 704
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 705
    return-void
.end method

.method static b(I)Z
    .locals 1
    .param p0, "flexibility"    # I

    .prologue
    .line 2916
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 976
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/view/View;ZZ)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 674
    iget v5, p0, Landroid/support/v7/widget/GridLayout;->p:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 675
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v5

    .line 682
    :goto_0
    return v5

    .line 677
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    .line 678
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$d;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->e()[I

    move-result-object v3

    .line 679
    .local v3, "margins":[I
    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v2

    .line 680
    .local v2, "lp":Landroid/support/v7/widget/GridLayout$g;
    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 681
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    iget v1, v5, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 682
    .local v1, "index":I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 677
    .end local v0    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .end local v1    # "index":I
    .end local v2    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v3    # "margins":[I
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    goto :goto_1

    .line 678
    .restart local v0    # "axis":Landroid/support/v7/widget/GridLayout$d;
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->f()[I

    move-result-object v3

    goto :goto_2

    .line 680
    .restart local v2    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .restart local v3    # "margins":[I
    :cond_3
    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_3

    .line 681
    .restart local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_4
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    iget v1, v5, Landroid/support/v7/widget/GridLayout$f;->b:I

    goto :goto_4
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 670
    invoke-static {p0}, Landroid/support/v4/view/ap;->k(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 21

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayout;->n:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 725
    .local v5, "horizontal":Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    .line 726
    .local v3, "axis":Landroid/support/v7/widget/GridLayout$d;
    :goto_1
    iget v0, v3, Landroid/support/v7/widget/GridLayout$d;->e:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/support/v7/widget/GridLayout$d;->e:I

    .line 728
    .local v4, "count":I
    :goto_2
    const/4 v8, 0x0

    .line 729
    .local v8, "major":I
    const/4 v14, 0x0

    .line 730
    .local v14, "minor":I
    new-array v13, v4, [I

    .line 732
    .local v13, "maxSizes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/GridLayout$g;

    .line 735
    .local v7, "lp":Landroid/support/v7/widget/GridLayout$g;
    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 736
    .local v11, "majorSpec":Landroid/support/v7/widget/GridLayout$j;
    :goto_4
    iget-object v9, v11, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 737
    .local v9, "majorRange":Landroid/support/v7/widget/GridLayout$f;
    iget-boolean v12, v11, Landroid/support/v7/widget/GridLayout$j;->c:Z

    .line 738
    .local v12, "majorWasDefined":Z
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayout$f;->a()I

    move-result v10

    .line 739
    .local v10, "majorSpan":I
    if-eqz v12, :cond_0

    .line 740
    iget v8, v9, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 743
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    move-object/from16 v17, v0

    .line 744
    .local v17, "minorSpec":Landroid/support/v7/widget/GridLayout$j;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 745
    .local v15, "minorRange":Landroid/support/v7/widget/GridLayout$f;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayout$j;->c:Z

    move/from16 v18, v0

    .line 746
    .local v18, "minorWasDefined":Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$f;ZI)I

    move-result v16

    .line 747
    .local v16, "minorSpan":I
    if-eqz v18, :cond_1

    .line 748
    iget v14, v15, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 751
    :cond_1
    if-eqz v4, :cond_b

    .line 753
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 754
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/support/v7/widget/GridLayout;->a([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 755
    if-eqz v18, :cond_8

    .line 756
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 724
    .end local v2    # "N":I
    .end local v3    # "axis":Landroid/support/v7/widget/GridLayout$d;
    .end local v4    # "count":I
    .end local v5    # "horizontal":Z
    .end local v6    # "i":I
    .end local v7    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v8    # "major":I
    .end local v9    # "majorRange":Landroid/support/v7/widget/GridLayout$f;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/support/v7/widget/GridLayout$j;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "maxSizes":[I
    .end local v14    # "minor":I
    .end local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$f;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/support/v7/widget/GridLayout$j;
    .end local v18    # "minorWasDefined":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 725
    .restart local v5    # "horizontal":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    goto :goto_1

    .line 726
    .restart local v3    # "axis":Landroid/support/v7/widget/GridLayout$d;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 735
    .restart local v2    # "N":I
    .restart local v4    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .restart local v8    # "major":I
    .restart local v13    # "maxSizes":[I
    .restart local v14    # "minor":I
    :cond_6
    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_4

    .line 743
    .restart local v9    # "majorRange":Landroid/support/v7/widget/GridLayout$f;
    .restart local v10    # "majorSpan":I
    .restart local v11    # "majorSpec":Landroid/support/v7/widget/GridLayout$j;
    .restart local v12    # "majorWasDefined":Z
    :cond_7
    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    move-object/from16 v17, v0

    goto :goto_5

    .line 758
    .restart local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$f;
    .restart local v16    # "minorSpan":I
    .restart local v17    # "minorSpec":Landroid/support/v7/widget/GridLayout$j;
    .restart local v18    # "minorWasDefined":Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 759
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 761
    :cond_9
    const/4 v14, 0x0

    .line 762
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 767
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/support/v7/widget/GridLayout;->b([IIII)V

    .line 770
    :cond_b
    if-eqz v5, :cond_c

    .line 771
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$g;IIII)V

    .line 776
    :goto_7
    add-int v14, v14, v16

    .line 732
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 773
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$g;IIII)V

    goto :goto_7

    .line 778
    .end local v7    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v9    # "majorRange":Landroid/support/v7/widget/GridLayout$f;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/support/v7/widget/GridLayout$j;
    .end local v12    # "majorWasDefined":Z
    .end local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$f;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/support/v7/widget/GridLayout$j;
    .end local v18    # "minorWasDefined":Z
    :cond_d
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->r:I

    .line 782
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->i()V

    .line 783
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->i()V

    .line 785
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->g()V

    .line 786
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->j()V

    .line 793
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->j()V

    .line 795
    :cond_0
    return-void
.end method

.method private h()I
    .locals 7

    .prologue
    .line 871
    const/4 v4, 0x1

    .line 872
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 873
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 874
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 872
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 875
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayout$g;

    .line 876
    .local v3, "lp":Landroid/support/v7/widget/GridLayout$g;
    mul-int/lit8 v5, v4, 0x1f

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$g;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    goto :goto_1

    .line 878
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_1
    return v4
.end method

.method private i()V
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->r:I

    if-nez v0, :cond_1

    .line 883
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->e()V

    .line 884
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->h()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->r:I

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->r:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->h()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->s:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 889
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->i()V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 980
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 981
    const/4 v0, 0x0

    .line 983
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    .line 663
    .local v0, "lp":Landroid/support/v7/widget/GridLayout$g;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/support/v7/widget/GridLayout$g;->leftMargin:I

    .line 666
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Landroid/support/v7/widget/GridLayout$g;ZZ)I

    move-result v1

    .end local v1    # "margin":I
    :cond_0
    return v1

    .line 663
    :cond_1
    iget v1, v0, Landroid/support/v7/widget/GridLayout$g;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/support/v7/widget/GridLayout$g;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/support/v7/widget/GridLayout$g;->bottomMargin:I

    goto :goto_0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$g;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 845
    new-instance v0, Landroid/support/v7/widget/GridLayout$g;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method final a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    .prologue
    .line 798
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$g;

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$g;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 850
    instance-of v0, p1, Landroid/support/v7/widget/GridLayout$g;

    if-eqz v0, :cond_0

    .line 851
    new-instance v0, Landroid/support/v7/widget/GridLayout$g;

    check-cast p1, Landroid/support/v7/widget/GridLayout$g;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/support/v7/widget/GridLayout$g;)V

    .line 855
    :goto_0
    return-object v0

    .line 852
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 853
    new-instance v0, Landroid/support/v7/widget/GridLayout$g;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 855
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayout$g;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->b()Z

    move-result v0

    return v0
.end method

.method protected c()Landroid/support/v7/widget/GridLayout$g;
    .locals 1

    .prologue
    .line 840
    new-instance v0, Landroid/support/v7/widget/GridLayout$g;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$g;-><init>()V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 827
    instance-of v3, p1, Landroid/support/v7/widget/GridLayout$g;

    if-nez v3, :cond_0

    .line 835
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 830
    check-cast v0, Landroid/support/v7/widget/GridLayout$g;

    .line 832
    .local v0, "lp":Landroid/support/v7/widget/GridLayout$g;
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$g;Z)V

    .line 833
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$g;Z)V

    move v1, v2

    .line 835
    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    return-object v0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->p:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->n:I

    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->s:Landroid/util/Printer;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->o:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1008
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->i()V

    .line 1010
    sub-int v43, p4, p2

    .line 1011
    .local v43, "targetWidth":I
    sub-int v42, p5, p3

    .line 1013
    .local v42, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v34

    .line 1014
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v36

    .line 1015
    .local v36, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v35

    .line 1016
    .local v35, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v33

    .line 1018
    .local v33, "paddingBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    sub-int v6, v43, v34

    sub-int v6, v6, v35

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout$d;->c(I)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    sub-int v6, v42, v36

    sub-int v6, v6, v33

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout$d;->c(I)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$d;->h()[I

    move-result-object v26

    .line 1022
    .local v26, "hLocations":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$d;->h()[I

    move-result-object v45

    .line 1024
    .local v45, "vLocations":[I
    const/16 v28, 0x0

    .local v28, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v12

    .local v12, "N":I
    :goto_0
    move/from16 v0, v28

    if-ge v0, v12, :cond_4

    .line 1025
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1026
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_0

    .line 1024
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 1027
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v30

    .line 1028
    .local v30, "lp":Landroid/support/v7/widget/GridLayout$g;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    move-object/from16 v20, v0

    .line 1029
    .local v20, "columnSpec":Landroid/support/v7/widget/GridLayout$j;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    move-object/from16 v39, v0

    .line 1031
    .local v39, "rowSpec":Landroid/support/v7/widget/GridLayout$j;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    move-object/from16 v19, v0

    .line 1032
    .local v19, "colSpan":Landroid/support/v7/widget/GridLayout$f;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    move-object/from16 v38, v0

    .line 1034
    .local v38, "rowSpan":Landroid/support/v7/widget/GridLayout$f;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/widget/GridLayout$f;->a:I

    aget v47, v26, v3

    .line 1035
    .local v47, "x1":I
    move-object/from16 v0, v38

    iget v3, v0, Landroid/support/v7/widget/GridLayout$f;->a:I

    aget v49, v45, v3

    .line 1037
    .local v49, "y1":I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/widget/GridLayout$f;->b:I

    aget v48, v26, v3

    .line 1038
    .local v48, "x2":I
    move-object/from16 v0, v38

    iget v3, v0, Landroid/support/v7/widget/GridLayout$f;->b:I

    aget v50, v45, v3

    .line 1040
    .local v50, "y2":I
    sub-int v18, v48, v47

    .line 1041
    .local v18, "cellWidth":I
    sub-int v17, v50, v49

    .line 1043
    .local v17, "cellHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v32

    .line 1044
    .local v32, "pWidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v31

    .line 1046
    .local v31, "pHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$j;->a(Z)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v5

    .line 1047
    .local v5, "hAlign":Landroid/support/v7/widget/GridLayout$a;
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$j;->a(Z)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v9

    .line 1049
    .local v9, "vAlign":Landroid/support/v7/widget/GridLayout$a;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$d;->c()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayout$i;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayout$e;

    .line 1050
    .local v2, "boundsX":Landroid/support/v7/widget/GridLayout$e;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$d;->c()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayout$i;->a(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v7/widget/GridLayout$e;

    .line 1053
    .local v16, "boundsY":Landroid/support/v7/widget/GridLayout$e;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$e;->a(Z)I

    move-result v3

    sub-int v3, v18, v3

    invoke-virtual {v5, v4, v3}, Landroid/support/v7/widget/GridLayout$a;->a(Landroid/view/View;I)I

    move-result v24

    .line 1054
    .local v24, "gravityOffsetX":I
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$e;->a(Z)I

    move-result v3

    sub-int v3, v17, v3

    invoke-virtual {v9, v4, v3}, Landroid/support/v7/widget/GridLayout$a;->a(Landroid/view/View;I)I

    move-result v25

    .line 1056
    .local v25, "gravityOffsetY":I
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v29

    .line 1057
    .local v29, "leftMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v44

    .line 1058
    .local v44, "topMargin":I
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v37

    .line 1059
    .local v37, "rightMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v15

    .line 1061
    .local v15, "bottomMargin":I
    add-int v40, v29, v37

    .line 1062
    .local v40, "sumMarginsX":I
    add-int v41, v44, v15

    .line 1065
    .local v41, "sumMarginsY":I
    add-int v6, v32, v40

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout$e;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$a;IZ)I

    move-result v13

    .line 1066
    .local v13, "alignmentOffsetX":I
    add-int v10, v31, v41

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/GridLayout$e;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$a;IZ)I

    move-result v14

    .line 1068
    .local v14, "alignmentOffsetY":I
    sub-int v3, v18, v40

    move/from16 v0, v32

    invoke-virtual {v5, v4, v0, v3}, Landroid/support/v7/widget/GridLayout$a;->b(Landroid/view/View;II)I

    move-result v46

    .line 1069
    .local v46, "width":I
    sub-int v3, v17, v41

    move/from16 v0, v31

    invoke-virtual {v9, v4, v0, v3}, Landroid/support/v7/widget/GridLayout$a;->b(Landroid/view/View;II)I

    move-result v27

    .line 1071
    .local v27, "height":I
    add-int v3, v47, v24

    add-int v23, v3, v13

    .line 1073
    .local v23, "dx":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->d()Z

    move-result v3

    if-nez v3, :cond_3

    add-int v3, v34, v29

    add-int v21, v3, v23

    .line 1075
    .local v21, "cx":I
    :goto_2
    add-int v3, v36, v49

    add-int v3, v3, v25

    add-int/2addr v3, v14

    add-int v22, v3, v44

    .line 1077
    .local v22, "cy":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_2

    .line 1078
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1080
    :cond_2
    add-int v3, v21, v46

    add-int v6, v22, v27

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1073
    .end local v21    # "cx":I
    .end local v22    # "cy":I
    :cond_3
    sub-int v3, v43, v46

    sub-int v3, v3, v35

    sub-int v3, v3, v37

    sub-int v21, v3, v23

    goto :goto_2

    .line 1082
    .end local v2    # "boundsX":Landroid/support/v7/widget/GridLayout$e;
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "hAlign":Landroid/support/v7/widget/GridLayout$a;
    .end local v9    # "vAlign":Landroid/support/v7/widget/GridLayout$a;
    .end local v13    # "alignmentOffsetX":I
    .end local v14    # "alignmentOffsetY":I
    .end local v15    # "bottomMargin":I
    .end local v16    # "boundsY":Landroid/support/v7/widget/GridLayout$e;
    .end local v17    # "cellHeight":I
    .end local v18    # "cellWidth":I
    .end local v19    # "colSpan":Landroid/support/v7/widget/GridLayout$f;
    .end local v20    # "columnSpec":Landroid/support/v7/widget/GridLayout$j;
    .end local v23    # "dx":I
    .end local v24    # "gravityOffsetX":I
    .end local v25    # "gravityOffsetY":I
    .end local v27    # "height":I
    .end local v29    # "leftMargin":I
    .end local v30    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v31    # "pHeight":I
    .end local v32    # "pWidth":I
    .end local v37    # "rightMargin":I
    .end local v38    # "rowSpan":Landroid/support/v7/widget/GridLayout$f;
    .end local v39    # "rowSpec":Landroid/support/v7/widget/GridLayout$j;
    .end local v40    # "sumMarginsX":I
    .end local v41    # "sumMarginsY":I
    .end local v44    # "topMargin":I
    .end local v46    # "width":I
    .end local v47    # "x1":I
    .end local v48    # "x2":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 939
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->i()V

    .line 943
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->g()V

    .line 945
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v9

    add-int v0, v8, v9

    .line 946
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 948
    .local v5, "vPadding":I
    neg-int v8, v0

    invoke-static {p1, v8}, Landroid/support/v7/widget/GridLayout;->a(II)I

    move-result v7

    .line 949
    .local v7, "widthSpecSansPadding":I
    neg-int v8, v5

    invoke-static {p2, v8}, Landroid/support/v7/widget/GridLayout;->a(II)I

    move-result v2

    .line 951
    .local v2, "heightSpecSansPadding":I
    const/4 v8, 0x1

    invoke-direct {p0, v7, v2, v8}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 957
    iget v8, p0, Landroid/support/v7/widget/GridLayout;->n:I

    if-nez v8, :cond_0

    .line 958
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayout$d;->b(I)I

    move-result v6

    .line 959
    .local v6, "widthSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 960
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout$d;->b(I)I

    move-result v1

    .line 967
    .local v1, "heightSansPadding":I
    :goto_0
    add-int v8, v6, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 968
    .local v4, "measuredWidth":I
    add-int v8, v1, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 971
    .local v3, "measuredHeight":I
    invoke-static {v4, p1, v10}, Landroid/support/v4/view/ap;->a(III)I

    move-result v8

    .line 972
    invoke-static {v3, p2, v10}, Landroid/support/v4/view/ap;->a(III)I

    move-result v9

    .line 970
    invoke-virtual {p0, v8, v9}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 973
    return-void

    .line 962
    .end local v1    # "heightSansPadding":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v6    # "widthSansPadding":I
    :cond_0
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout$d;->b(I)I

    move-result v1

    .line 963
    .restart local v1    # "heightSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 964
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayout$d;->b(I)I

    move-result v6

    .restart local v6    # "widthSansPadding":I
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 988
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 989
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 990
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .prologue
    .line 497
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->p:I

    .line 498
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 499
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$d;->a(I)V

    .line 416
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 417
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 418
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    .prologue
    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->l:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$d;->a(Z)V

    .line 569
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 570
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 571
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 347
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->n:I

    if-eq v0, p1, :cond_0

    .line 348
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->n:I

    .line 349
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 352
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 593
    if-nez p1, :cond_0

    sget-object p1, Landroid/support/v7/widget/GridLayout;->j:Landroid/util/Printer;

    .end local p1    # "printer":Landroid/util/Printer;
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout;->s:Landroid/util/Printer;

    .line 594
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$d;->a(I)V

    .line 383
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 385
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->m:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$d;->a(Z)V

    .line 533
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 534
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 535
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->o:Z

    .line 462
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 463
    return-void
.end method

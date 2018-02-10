.class public Landroid/support/v7/widget/GridLayout$g;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field private static final c:I = -0x2

.field private static final d:I = -0x2

.field private static final e:I = -0x80000000

.field private static final f:I = -0x80000000

.field private static final g:I = -0x80000000

.field private static final h:Landroid/support/v7/widget/GridLayout$f;

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I


# instance fields
.field public a:Landroid/support/v7/widget/GridLayout$j;

.field public b:Landroid/support/v7/widget/GridLayout$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1885
    new-instance v0, Landroid/support/v7/widget/GridLayout$f;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    sput-object v0, Landroid/support/v7/widget/GridLayout$g;->h:Landroid/support/v7/widget/GridLayout$f;

    .line 1886
    sget-object v0, Landroid/support/v7/widget/GridLayout$g;->h:Landroid/support/v7/widget/GridLayout$f;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$f;->a()I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayout$g;->i:I

    .line 1890
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->j:I

    .line 1891
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->k:I

    .line 1892
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->l:I

    .line 1893
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->m:I

    .line 1894
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->n:I

    .line 1896
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_column:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->o:I

    .line 1897
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->p:I

    .line 1898
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->q:I

    .line 1900
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_row:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->r:I

    .line 1901
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->s:I

    .line 1902
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->t:I

    .line 1904
    sget v0, Landroid/support/v7/d/b$d;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1966
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    sget-object v1, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;)V

    .line 1967
    return-void
.end method

.method private constructor <init>(IIIIIILandroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "rowSpec"    # Landroid/support/v7/widget/GridLayout$j;
    .param p8, "columnSpec"    # Landroid/support/v7/widget/GridLayout$j;

    .prologue
    .line 1942
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1920
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1934
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1943
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/support/v7/widget/GridLayout$g;->setMargins(IIII)V

    .line 1944
    iput-object p7, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1945
    iput-object p8, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1946
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2007
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1920
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1934
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 2008
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$g;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2009
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$g;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2010
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$g;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v7/widget/GridLayout$g;

    .prologue
    .line 1992
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1920
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1934
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1994
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1995
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1996
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;)V
    .locals 9
    .param p1, "rowSpec"    # Landroid/support/v7/widget/GridLayout$j;
    .param p2, "columnSpec"    # Landroid/support/v7/widget/GridLayout$j;

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x80000000

    .line 1957
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/widget/GridLayout$g;-><init>(IIIIIILandroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;)V

    .line 1960
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1975
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1920
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1934
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1976
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1982
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1920
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 1934
    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1983
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2024
    sget-object v2, Landroid/support/v7/d/b$d;->GridLayout_Layout:[I

    .line 2025
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2027
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroid/support/v7/widget/GridLayout$g;->j:I

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 2029
    .local v1, "margin":I
    sget v2, Landroid/support/v7/widget/GridLayout$g;->k:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->leftMargin:I

    .line 2030
    sget v2, Landroid/support/v7/widget/GridLayout$g;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->topMargin:I

    .line 2031
    sget v2, Landroid/support/v7/widget/GridLayout$g;->m:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->rightMargin:I

    .line 2032
    sget v2, Landroid/support/v7/widget/GridLayout$g;->n:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2036
    return-void

    .line 2034
    .end local v1    # "margin":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2039
    sget-object v8, Landroid/support/v7/d/b$d;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2041
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v8, Landroid/support/v7/widget/GridLayout$g;->u:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2043
    .local v4, "gravity":I
    sget v8, Landroid/support/v7/widget/GridLayout$g;->o:I

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2044
    .local v3, "column":I
    sget v8, Landroid/support/v7/widget/GridLayout$g;->p:I

    sget v9, Landroid/support/v7/widget/GridLayout$g;->i:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2045
    .local v1, "colSpan":I
    sget v8, Landroid/support/v7/widget/GridLayout$g;->q:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2046
    .local v2, "colWeight":F
    const/4 v8, 0x1

    invoke-static {v4, v8}, Landroid/support/v7/widget/GridLayout;->a(IZ)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v8

    invoke-static {v3, v1, v8, v2}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 2048
    sget v8, Landroid/support/v7/widget/GridLayout$g;->r:I

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2049
    .local v5, "row":I
    sget v8, Landroid/support/v7/widget/GridLayout$g;->s:I

    sget v9, Landroid/support/v7/widget/GridLayout$g;->i:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2050
    .local v6, "rowSpan":I
    sget v8, Landroid/support/v7/widget/GridLayout$g;->t:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 2051
    .local v7, "rowWeight":F
    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/support/v7/widget/GridLayout;->a(IZ)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v8

    invoke-static {v5, v6, v8, v7}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2055
    return-void

    .line 2053
    .end local v1    # "colSpan":I
    .end local v2    # "colWeight":F
    .end local v3    # "column":I
    .end local v4    # "gravity":I
    .end local v5    # "row":I
    .end local v6    # "rowSpan":I
    .end local v7    # "rowWeight":F
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v7/widget/GridLayout;->a(IZ)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$j;->a(Landroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 2067
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v7/widget/GridLayout;->a(IZ)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$j;->a(Landroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 2068
    return-void
.end method

.method final a(Landroid/support/v7/widget/GridLayout$f;)V
    .locals 1
    .param p1, "span"    # Landroid/support/v7/widget/GridLayout$f;

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$j;->a(Landroid/support/v7/widget/GridLayout$f;)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    .line 2078
    return-void
.end method

.method final b(Landroid/support/v7/widget/GridLayout$f;)V
    .locals 1
    .param p1, "span"    # Landroid/support/v7/widget/GridLayout$f;

    .prologue
    .line 2081
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$j;->a(Landroid/support/v7/widget/GridLayout$f;)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 2082
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2086
    if-ne p0, p1, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return v1

    .line 2087
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2089
    check-cast v0, Landroid/support/v7/widget/GridLayout$g;

    .line 2091
    .local v0, "that":Landroid/support/v7/widget/GridLayout$g;
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$j;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 2092
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$j;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2099
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$j;->hashCode()I

    move-result v0

    .line 2100
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$j;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2101
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, -0x2

    .line 2072
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$g;->width:I

    .line 2073
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$g;->height:I

    .line 2074
    return-void
.end method

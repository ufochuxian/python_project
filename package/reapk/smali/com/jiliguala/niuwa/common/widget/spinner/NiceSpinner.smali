.class public Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final d:I = 0x2710

.field private static final e:I = 0x10

.field private static final f:Ljava/lang/String; = "instance_state"

.field private static final g:Ljava/lang/String; = "selected_index"

.field private static final h:Ljava/lang/String; = "is_popup_showing"


# instance fields
.field a:Lcom/jiliguala/niuwa/common/a/k;

.field b:Lcom/jiliguala/niuwa/common/a/k$b;

.field c:Landroid/support/v4/app/ag;

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

.field private n:Lcom/jiliguala/niuwa/common/a/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    const/16 v1, 0x11

    .line 41
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;-><init>(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->n:Lcom/jiliguala/niuwa/common/a/k$a;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    const/16 v1, 0x11

    .line 41
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;-><init>(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->n:Lcom/jiliguala/niuwa/common/a/k$a;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    const/16 v1, 0x11

    .line 41
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;-><init>(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->n:Lcom/jiliguala/niuwa/common/a/k$a;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .prologue
    .line 32
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    return v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 115
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v7, Lcom/jiliguala/niuwa/R$styleable;->NiceSpinner:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 116
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    const v7, 0x7f070087

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    .local v2, "leftPadding":I
    const v7, 0x7f070088

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 119
    .local v5, "rightPadding":I
    const/16 v7, 0x13

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setGravity(I)V

    .line 120
    invoke-virtual {p0, v2, v8, v5, v8}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setPadding(IIII)V

    .line 121
    invoke-virtual {p0, v11}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setClickable(Z)V

    .line 122
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_0
    instance-of v7, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v7, :cond_0

    move-object v7, p1

    .line 130
    check-cast v7, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    iput-object v7, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c:Landroid/support/v4/app/ag;

    .line 133
    :cond_0
    invoke-virtual {v6, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->l:Z

    .line 134
    iget-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->l:Z

    if-nez v7, :cond_2

    .line 135
    const v7, 0x7f080061

    invoke-static {p1, v7}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .local v0, "basicDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 138
    .local v3, "resId":I
    if-eqz v0, :cond_1

    .line 139
    invoke-static {v0}, Landroid/support/v4/d/a/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->j:Landroid/graphics/drawable/Drawable;

    .line 141
    if-eq v3, v10, :cond_1

    .line 142
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v3}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 145
    :cond_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v9, v7, v9}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    .end local v0    # "basicDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resId":I
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void

    .line 126
    :cond_3
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7
    .param p1, "shouldRotateUp"    # Z

    .prologue
    const/16 v1, 0x2710

    const/4 v3, 0x0

    .line 191
    if-eqz p1, :cond_0

    move v2, v3

    .line 192
    .local v2, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 193
    .local v1, "end":I
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->j:Landroid/graphics/drawable/Drawable;

    const-string v5, "level"

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v2, v6, v3

    const/4 v3, 0x1

    aput v1, v6, v3

    invoke-static {v4, v5, v6}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 194
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    new-instance v3, Landroid/support/v4/view/b/c;

    invoke-direct {v3}, Landroid/support/v4/view/b/c;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 195
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 196
    return-void

    .end local v0    # "animator":Lcom/nineoldandroids/a/l;
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_0
    move v2, v1

    .line 191
    goto :goto_0

    .restart local v2    # "start":I
    :cond_1
    move v1, v3

    .line 192
    goto :goto_1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

    return-object v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->l:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->l:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Z)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/k;->a()V

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/d;->b()V

    .line 206
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "dataSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    .line 167
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->k:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    .line 171
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c:Landroid/support/v4/app/ag;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c:Landroid/support/v4/app/ag;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;Lcom/jiliguala/niuwa/common/a/k$b;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->n:Lcom/jiliguala/niuwa/common/a/k$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k$a;)V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k;->a(I)V

    .line 219
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->l:Z

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Z)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k;->b(Landroid/support/v4/app/ag;)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/d;->a()V

    .line 227
    :cond_2
    return-void
.end method

.method public getFragmentManager()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c:Landroid/support/v4/app/ag;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .prologue
    .line 104
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Landroid/os/Bundle;

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "selected_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    .line 107
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setSelectedIndex(I)V

    .line 108
    const-string v1, "instance_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 110
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 111
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instance_state"

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    const-string v1, "selected_index"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b()V

    .line 187
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a()V

    goto :goto_0
.end method

.method public setDialogGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    .line 175
    return-void
.end method

.method public setFragmentManager(Landroid/support/v4/app/ag;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c:Landroid/support/v4/app/ag;

    .line 245
    return-void
.end method

.method public setListener(Lcom/jiliguala/niuwa/common/widget/spinner/d;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/spinner/d;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->m:Lcom/jiliguala/niuwa/common/widget/spinner/d;

    .line 237
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->i:I

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setTintColor(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->l:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 233
    :cond_0
    return-void
.end method

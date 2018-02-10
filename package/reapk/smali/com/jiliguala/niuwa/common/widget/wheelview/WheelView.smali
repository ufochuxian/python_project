.class public Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:I = 0x1

.field private static final n:I = 0x0

.field private static final o:I = 0x1


# instance fields
.field c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:Ljava/lang/Runnable;

.field i:I

.field j:I

.field k:[I

.field l:Landroid/graphics/Paint;

.field m:I

.field private p:Landroid/content/Context;

.field private q:Landroid/widget/LinearLayout;

.field private r:I

.field private s:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    .line 37
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->i:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->r:I

    .line 55
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    .line 37
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->i:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->r:I

    .line 60
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    .line 37
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->i:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->r:I

    .line 65
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 8
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 167
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->p:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 170
    const/4 v3, 0x2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    .line 174
    .local v1, "padding":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    if-nez v3, :cond_0

    .line 176
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/ad;->c(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    .line 178
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->e:I

    mul-int/2addr v5, v6

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->e:I

    mul-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v2
.end method

.method private a(I)V
    .locals 8
    .param p1, "y"    # I

    .prologue
    .line 201
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    div-int v6, p1, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int v4, v6, v7

    .line 202
    .local v4, "position":I
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    rem-int v5, p1, v6

    .line 203
    .local v5, "remainder":I
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    div-int v1, p1, v6

    .line 205
    .local v1, "divided":I
    if-nez v5, :cond_2

    .line 206
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int v4, v1, v6

    .line 213
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 214
    .local v0, "childSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 215
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    .local v3, "itemView":Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 225
    .end local v3    # "itemView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 208
    .end local v0    # "childSize":I
    .end local v2    # "i":I
    :cond_2
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 209
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int/2addr v6, v1

    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 219
    .restart local v0    # "childSize":I
    .restart local v2    # "i":I
    .restart local v3    # "itemView":Landroid/widget/TextView;
    :cond_3
    if-ne v4, v2, :cond_4

    .line 220
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->p:Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->addView(Landroid/view/View;)V

    .line 106
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->h:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 157
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->e:I

    .line 159
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->q:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 163
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(I)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c()[I

    move-result-object v0

    return-object v0
.end method

.method private c()[I
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->k:[I

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->k:[I

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->k:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->k:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->k:[I

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->s:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->s:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;->a(ILjava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->g:I

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->h:Ljava/lang/Runnable;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->i:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 316
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 317
    return-void
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    return v0
.end method

.method public getOnWheelViewListener()Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->s:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 189
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(I)V

    .line 191
    if-le p2, p4, :cond_0

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->r:I

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->r:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 280
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a()V

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->p:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->l:Landroid/graphics/Paint;

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->l:Landroid/graphics/Paint;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->l:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    :cond_1
    new-instance p1, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;

    .end local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;-><init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V

    .line 273
    .restart local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->d:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->b()V

    .line 87
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    .line 95
    return-void
.end method

.method public setOnWheelViewListener(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;)V
    .locals 0
    .param p1, "onWheelViewListener"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->s:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;

    .line 334
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 295
    move v0, p1

    .line 296
    .local v0, "p":I
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    .line 297
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;-><init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;I)V

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

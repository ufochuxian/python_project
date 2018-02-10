.class public Lcom/jiliguala/niuwa/common/widget/MainMaskView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/f;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "isHighAge"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->b:Z

    .line 28
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a()V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/MainMaskView;)Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b01a4

    :goto_0
    invoke-static {v1, v0, p0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/MainMaskView;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 46
    :cond_0
    const v0, 0x7f0b01a5

    goto :goto_0
.end method


# virtual methods
.method public setOnDismissListener(Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;)V
    .locals 0
    .param p1, "mOnDismissListener"    # Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;

    .line 43
    return-void
.end method

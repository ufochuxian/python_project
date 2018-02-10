.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mRootView:Landroid/view/View;

.field public mSongText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;->initView()V

    .line 31
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01ac

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;->mRootView:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;->mRootView:Landroid/view/View;

    const v1, 0x7f090503

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;->mSongText:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.class public Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenHolder"
.end annotation


# instance fields
.field private downloadContainer:Landroid/view/View;

.field private downloadPb:Landroid/widget/ProgressBar;

.field private downloadStatusIv:Landroid/widget/ImageView;

.field public mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->downloadContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->downloadContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->downloadPb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->downloadPb:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->downloadStatusIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->downloadStatusIv:Landroid/widget/ImageView;

    return-object p1
.end method

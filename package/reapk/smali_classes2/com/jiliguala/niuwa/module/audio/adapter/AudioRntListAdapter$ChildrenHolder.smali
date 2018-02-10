.class public Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenHolder"
.end annotation


# instance fields
.field private downloadContainer:Landroid/view/View;

.field public mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->downloadContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->downloadContainer:Landroid/view/View;

    return-object p1
.end method

.class public Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoardListItemHolder"
.end annotation


# instance fields
.field public desc:Landroid/widget/TextView;

.field public rightArrow:Landroid/widget/ImageView;

.field public root:Landroid/view/View;

.field public thumb:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 246
    const v0, 0x7f0902a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->root:Landroid/view/View;

    .line 247
    const v0, 0x7f090578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->thumb:Landroid/widget/ImageView;

    .line 248
    const v0, 0x7f090584

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->title:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0901ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->desc:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f090465

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->rightArrow:Landroid/widget/ImageView;

    .line 251
    return-void
.end method

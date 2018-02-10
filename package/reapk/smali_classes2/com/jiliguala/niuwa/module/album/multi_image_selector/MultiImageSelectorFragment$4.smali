.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 298
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$500(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 299
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 300
    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .line 301
    .local v0, "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$500(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->formatPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v0    # "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 299
    :cond_1
    add-int/lit8 v1, p2, 0x1

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 282
    .local v0, "picasso":Lcom/squareup/picasso/Picasso;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->c(Ljava/lang/Object;)V

    .line 288
    :goto_0
    if-nez p2, :cond_3

    .line 290
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$500(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_1
    :goto_1
    return-void

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$500(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

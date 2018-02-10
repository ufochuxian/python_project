.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 310
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 315
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getWidth()I

    move-result v5

    .line 316
    .local v5, "width":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    .line 318
    .local v3, "height":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6, v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$702(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;I)I

    .line 319
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6, v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$802(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;I)I

    .line 321
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 322
    .local v2, "desireSize":I
    const/4 v4, 0x3

    .line 323
    .local v4, "numCount":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070143

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 324
    .local v0, "columnSpace":I
    mul-int/lit8 v6, v0, 0x4

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x3

    .line 325
    .local v1, "columnWidth":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->setItemSize(I)V

    .line 327
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 328
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

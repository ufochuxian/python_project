.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 450
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 455
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    .line 457
    .local v3, "height":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 459
    .local v2, "desireSize":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getWidth()I

    move-result v5

    div-int v4, v5, v2

    .line 462
    .local v4, "numCount":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070143

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 463
    .local v0, "columnSpace":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getWidth()I

    move-result v5

    add-int/lit8 v6, v4, -0x1

    mul-int/2addr v6, v0

    sub-int/2addr v5, v6

    div-int v1, v5, v4

    .line 464
    .local v1, "columnWidth":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->setItemSize(I)V

    .line 470
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 471
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

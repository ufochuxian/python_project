.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->b:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    iput p2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->b:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->isShowCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    if-nez p3, :cond_0

    .line 340
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->b:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$900(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .line 344
    .local v0, "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->b:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->a:I

    invoke-static {v1, v0, v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$1000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;I)V

    goto :goto_0

    .line 348
    .end local v0    # "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .line 349
    .restart local v0    # "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->b:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;->a:I

    invoke-static {v1, v0, v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$1000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;I)V

    goto :goto_0
.end method

.class Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->initUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 214
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-static {v0, p3}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->access$000(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;I)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->setSelectionPos(I)V

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

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
    .line 284
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-static {v0, p3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;I)V

    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->setSelectionPos(I)V

    .line 286
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    .line 287
    return-void
.end method

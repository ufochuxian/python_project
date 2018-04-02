.class Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 257
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollBg()V

    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;F)V

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->access$100(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    .line 267
    :cond_0
    return-void
.end method

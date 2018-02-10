.class Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 130
    :cond_0
    return-void
.end method

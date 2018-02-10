.class public Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

.field private view2131296406:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    .line 25
    const v1, 0x7f090437

    const-string v2, "field \'mRecyclerView\'"

    const-class v3, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 26
    const v1, 0x7f090096

    const-string v2, "method \'onBack\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;->view2131296406:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    .line 40
    .local v0, "target":Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    .line 43
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 45
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment_ViewBinding;->view2131296406:Landroid/view/View;

    .line 47
    return-void
.end method

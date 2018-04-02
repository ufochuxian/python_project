.class public Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;

.field private view2131296346:Landroid/view/View;

.field private view2131296406:Landroid/view/View;

.field private view2131297496:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v4, 0x7f0904d8

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;

    .line 31
    const v1, 0x7f09043e

    const-string v2, "field \'mRecyclerView\'"

    const-class v3, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 32
    const-string v1, "field \'mShareBtn\' and method \'share\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mShareBtn\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShareBtn:Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131297496:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f090507

    const-string v2, "field \'mSlogan\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mSlogan:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f09005a

    const-string v2, "method \'answer\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131296346:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f090096

    const-string v2, "method \'exit\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131296406:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;

    .line 64
    .local v0, "target":Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;

    .line 67
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 68
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShareBtn:Landroid/widget/LinearLayout;

    .line 69
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mSlogan:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131297496:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131297496:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131296346:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131296346:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment_ViewBinding;->view2131296406:Landroid/view/View;

    .line 77
    return-void
.end method

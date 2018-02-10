.class public Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

.field private view2131296749:Landroid/view/View;

.field private view2131297365:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/game/GameExitFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/game/GameExitFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 26
    const v1, 0x7f0901ed

    const-string v2, "method \'exit\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->view2131296749:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;Lcom/jiliguala/niuwa/module/game/GameExitFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v1, 0x7f090455

    const-string v2, "method \'resume\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->view2131297365:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;Lcom/jiliguala/niuwa/module/game/GameExitFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->view2131296749:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->view2131296749:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->view2131297365:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment_ViewBinding;->view2131297365:Landroid/view/View;

    .line 55
    return-void
.end method

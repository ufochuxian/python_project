.class public Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .line 22
    const v0, 0x7f0904d1

    const-string v1, "field \'shareCancel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->shareCancel:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0902d2

    const-string v1, "field \'listView\'"

    const-class v2, Landroid/widget/ListView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->listView:Landroid/widget/ListView;

    .line 24
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .line 30
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .line 33
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->shareCancel:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->listView:Landroid/widget/ListView;

    .line 35
    return-void
.end method

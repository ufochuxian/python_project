.class Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

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
    .line 131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;->onItemClick(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->dismissAllowingStateLoss()V

    .line 135
    return-void
.end method

.class public Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;

.field private view2131296406:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;Landroid/view/View;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;

    .line 30
    const v1, 0x7f090096

    const-string v2, "method \'onClickBack\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 49
    return-void
.end method

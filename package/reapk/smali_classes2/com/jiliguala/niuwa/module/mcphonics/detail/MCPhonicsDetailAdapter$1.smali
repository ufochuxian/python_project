.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->setHolderClickListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Landroid/support/v7/widget/RecyclerView$w;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

.field final synthetic b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

.field final synthetic c:I

.field final synthetic d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iput p4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    iget v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->startCourse(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;->d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0116

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

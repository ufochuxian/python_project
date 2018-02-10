.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;
.super Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field h:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;-><init>(Landroid/view/View;)V

    .line 669
    const v0, 0x7f0903f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->h:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .line 670
    return-void
.end method

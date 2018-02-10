.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->onChooseMcLv(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    iput p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 431
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->a:I

    const v1, 0x7f0902b3

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$202(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;I)I

    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$300()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$600(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    .line 439
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$402(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;I)I

    .line 436
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phLv:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$500()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$400(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

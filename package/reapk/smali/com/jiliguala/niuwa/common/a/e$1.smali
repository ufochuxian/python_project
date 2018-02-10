.class Lcom/jiliguala/niuwa/common/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/a/e;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/a/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/a/e;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 43
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/a/e;->f:Lcom/jiliguala/niuwa/common/a/e$a;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/a/e;->f:Lcom/jiliguala/niuwa/common/a/e$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/a/e;->g:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    iget-object v3, v3, Lcom/jiliguala/niuwa/common/a/e;->c:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v3}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    iget-object v4, v4, Lcom/jiliguala/niuwa/common/a/e;->c:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v4}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    iget-object v5, v5, Lcom/jiliguala/niuwa/common/a/e;->c:Lnet/simonvt/datepicker/DatePicker;

    .line 45
    invoke-virtual {v5}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v5

    .line 44
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/jiliguala/niuwa/common/a/e$a;->onDateSet(Landroid/app/Dialog;III)Z

    move-result v0

    .line 46
    .local v0, "resultOk":Z
    if-eqz v0, :cond_0

    .line 51
    .end local v0    # "resultOk":Z
    :cond_1
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/e$1;->a:Lcom/jiliguala/niuwa/common/a/e;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/e;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x7f0900fc -> :sswitch_1
        0x7f090157 -> :sswitch_0
    .end sparse-switch
.end method

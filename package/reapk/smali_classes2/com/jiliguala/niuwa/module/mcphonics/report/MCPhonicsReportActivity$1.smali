.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 220
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 222
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->finish()V

    goto :goto_0

    .line 225
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    goto :goto_0

    .line 228
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    goto :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x1027 -> :sswitch_0
        0x1029 -> :sswitch_1
        0x1030 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method

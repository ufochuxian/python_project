.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->onBindViewHolder(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

.field final synthetic b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    .line 187
    return-void
.end method

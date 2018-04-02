.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/LandScapeNewMcPcLessonSharePageActivity;
.super Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected setLayout()V
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f0b0102

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/LandScapeNewMcPcLessonSharePageActivity;->setContentView(I)V

    .line 15
    return-void
.end method

.method protected setShareTxt()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/LandScapeNewMcPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    const-string v1, "\u606d\u559c\u4f60\u5b8c\u6210\u4e86\r\n\u5feb\u5206\u4eab\u7ed9\u670b\u53cb\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method

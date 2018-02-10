.class Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 5

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$400(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    .line 1031
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1012

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(ILcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1034
    return-void
.end method

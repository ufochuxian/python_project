.class Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6$1;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6$1;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$300(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    .line 575
    return-void
.end method

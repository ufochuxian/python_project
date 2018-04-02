.class Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->access$000(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->dismissAllowingStateLoss()V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->access$100(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->access$100(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;->onDismiss()V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->access$102(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    .line 158
    :cond_0
    return-void
.end method

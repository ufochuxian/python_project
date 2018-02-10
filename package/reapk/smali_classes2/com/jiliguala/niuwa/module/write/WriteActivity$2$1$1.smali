.class Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$600(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/write/WriteActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void
.end method

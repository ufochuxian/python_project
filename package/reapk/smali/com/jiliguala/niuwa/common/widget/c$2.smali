.class Lcom/jiliguala/niuwa/common/widget/c$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/c;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/c;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/c;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/c$2;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c$2;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/c;->b(Lcom/jiliguala/niuwa/common/widget/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/common/widget/c$2$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/widget/c$2$1;-><init>(Lcom/jiliguala/niuwa/common/widget/c$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

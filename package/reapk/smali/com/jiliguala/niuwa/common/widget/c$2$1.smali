.class Lcom/jiliguala/niuwa/common/widget/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/c$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/c$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/common/widget/c$2;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/c$2$1;->a:Lcom/jiliguala/niuwa/common/widget/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c$2$1;->a:Lcom/jiliguala/niuwa/common/widget/c$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/c$2;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c;)Lcom/jiliguala/niuwa/common/widget/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c$2$1;->a:Lcom/jiliguala/niuwa/common/widget/c$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/c$2;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c;)Lcom/jiliguala/niuwa/common/widget/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/c$a;->a()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c$2$1;->a:Lcom/jiliguala/niuwa/common/widget/c$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/c$2;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/c;->dismissAllowingStateLoss()V

    .line 119
    return-void
.end method

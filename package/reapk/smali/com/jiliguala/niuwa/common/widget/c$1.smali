.class Lcom/jiliguala/niuwa/common/widget/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/c;->onStart()V
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
    .line 72
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/c$1;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c$1;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c;)Lcom/jiliguala/niuwa/common/widget/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c$1;->a:Lcom/jiliguala/niuwa/common/widget/c;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c;)Lcom/jiliguala/niuwa/common/widget/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/c$a;->b()V

    .line 78
    :cond_0
    return-void
.end method

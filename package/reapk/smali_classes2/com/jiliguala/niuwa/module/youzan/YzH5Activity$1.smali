.class Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$1;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$1;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$1;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$000(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;Landroid/content/Intent;)V

    .line 78
    :cond_0
    return-void
.end method

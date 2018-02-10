.class Lcom/jiliguala/niuwa/logic/login/push/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/jpush/android/api/TagAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/login/push/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/login/push/a$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/login/push/a$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/login/push/a$a;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;->a:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotResult(ILjava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "logs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 86
    .end local v0    # "logs":Ljava/lang/String;
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set tag and alias success, alias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "logs":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v0    # "logs":Ljava/lang/String;
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set alias and tags due to timeout. Try again after 60s. alias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "logs":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;->a:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a(Lcom/jiliguala/niuwa/logic/login/push/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;->a:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a(Lcom/jiliguala/niuwa/logic/login/push/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;->a:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a(Lcom/jiliguala/niuwa/logic/login/push/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/a;->a(Lcom/jiliguala/niuwa/logic/login/push/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;->a:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    .line 95
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a(Lcom/jiliguala/niuwa/logic/login/push/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/a;->a(Lcom/jiliguala/niuwa/logic/login/push/a;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x1001

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v4, 0xea60

    .line 94
    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1772 -> :sswitch_1
    .end sparse-switch
.end method

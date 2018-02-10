.class public Lcom/jiliguala/niuwa/logic/login/push/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/login/push/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x1001

.field private static final c:I = 0x1002


# instance fields
.field private d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/push/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/login/push/a$a;-><init>(Lcom/jiliguala/niuwa/logic/login/push/a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->e:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/login/push/a;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/push/a;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    if-eqz v1, :cond_1

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->d:Lcom/jiliguala/niuwa/logic/login/push/a$a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->e:Landroid/os/Handler;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/push/a;->e:Landroid/os/Handler;

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->serverStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver$1;->a:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver$1;->a:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->showGame()V

    .line 136
    return-void
.end method

.class Lorg/chromium/content/app/ChildProcessServiceImpl$1;
.super Lorg/chromium/content/common/IChildProcessService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/app/ChildProcessServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessServiceImpl;


# direct methods
.method constructor <init>(Lorg/chromium/content/app/ChildProcessServiceImpl;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl$1;->this$0:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public crashIntentionallyForTesting()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 99
    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl$1;->this$0:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-static {v0, p2}, Lorg/chromium/content/app/ChildProcessServiceImpl;->access$002(Lorg/chromium/content/app/ChildProcessServiceImpl;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;

    .line 92
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl$1;->this$0:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/content/app/ChildProcessServiceImpl;->getServiceInfo(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

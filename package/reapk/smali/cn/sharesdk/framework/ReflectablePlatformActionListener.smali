.class public Lcn/sharesdk/framework/ReflectablePlatformActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler$Callback;

.field private c:I

.field private d:Landroid/os/Handler$Callback;

.field private e:I

.field private f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->f:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 60
    iget v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->f:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/mob/tools/c/o;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->b:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 32
    iget v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->b:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/mob/tools/c/o;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->d:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 46
    iget v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->c:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->d:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/mob/tools/c/o;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public setOnCancelCallback(ILandroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 53
    iput p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->e:I

    .line 54
    iput-object p2, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->f:Landroid/os/Handler$Callback;

    .line 55
    return-void
.end method

.method public setOnCompleteCallback(ILandroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 25
    iput p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->a:I

    .line 26
    iput-object p2, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->b:Landroid/os/Handler$Callback;

    .line 27
    return-void
.end method

.method public setOnErrorCallback(ILandroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 39
    iput p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->c:I

    .line 40
    iput-object p2, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->d:Landroid/os/Handler$Callback;

    .line 41
    return-void
.end method

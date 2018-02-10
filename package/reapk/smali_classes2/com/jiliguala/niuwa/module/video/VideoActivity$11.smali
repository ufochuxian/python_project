.class Lcom/jiliguala/niuwa/module/video/VideoActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 2507
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 2511
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 2519
    :goto_0
    return-void

    .line 2513
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onLoginSucceed()V

    goto :goto_0

    .line 2516
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onChildGained()V

    goto :goto_0

    .line 2511
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1007 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2507
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
